// DRAM_s4.bsv - BSV code to provide DRAM functionality for Altera Stratix 4 using UNIPHY
// Copyright (c) 2011  Atomic Rules LCC ALL RIGHTS RESERVED

package DRAM_s4;

import Clocks            ::*;
import Vector            ::*;
import GetPut            ::*;
import Gray              ::*;
import GrayCounter       ::*;
import ClientServer      ::*;
import Connectable       ::*;
import BRAM              ::*;
import FIFO              ::*;
import FIFOF             ::*;
import SpecialFIFOs      ::*;

//import XilinxCells     ::*;
//import SRLFIFO         ::*;
//import XilinxExtra     ::*;


typedef struct {
  Bool      isRead; // request is read
  Bit#(na)  addr;   // memory address
 } DramReq#(numeric type na) deriving (Bits, Eq);

typedef struct {
  Bool      isLast; // request is last of burst
  Bit#(nbe) be;     // byte-lane write enables (active-high)
  Bit#(nd)  data;   // write data
 } DramWrite#(numeric type nd, numeric type nbe) deriving (Bits, Eq);

typedef struct {
  Bool      isLast; // request is last of burst
  Bit#(nd)  data;   // read data
 } DramRead#(numeric type nd) deriving (Bits, Eq);

typedef struct {
  Bool       isRead; // request is read
  Bit#(32)   addr;   // memory Byte address
  Bit#(16)   be;     // byte-lane write enables (active-high)
  Bit#(128)  data;   // write data (16B)
 } DramReq16B deriving (Bits, Eq);


// Interfaces...

(* always_enabled, always_ready *)
interface DRAM_DDR#(numeric type rowWidth, numeric type bankWidth, numeric type ckWidth, numeric type csWidth,
                    numeric type odtWidth, numeric type dmWidth, numeric type dqWidth, numeric type dqsWidth);
  interface Inout#(Bit#(dqWidth))  io_dq;
  method  Bit#(rowWidth)           addr;
  method  Bit#(bankWidth)          ba;
  method  Bit#(1)                  ras_n;
  method  Bit#(1)                  cas_n;
  method  Bit#(1)                  we_n;
  method  Bit#(1)                  reset_n;
  method  Bit#(odtWidth)           cs_n;
  method  Bit#(odtWidth)           odt;
  method  Bit#(csWidth)            cke;
  method  Bit#(dmWidth)            dm;
  interface Inout#(Bit#(dqsWidth)) io_dqs_p;
  interface Inout#(Bit#(dqsWidth)) io_dqs_n;
  method  Bit#(ckWidth)            ck_p;
  method  Bit#(ckWidth)            ck_n;
  method  Action rdn (Bool i);
  method  Action rup (Bool i);
endinterface: DRAM_DDR
typedef DRAM_DDR#(13,3,1,1,1,2,16,2) DDR3_16;  // As in the Altera alst4 platform single-chip 16b "DDR3TOP" device

(* always_enabled, always_ready *)
interface DRAM_AVL#(numeric type datWidth, numeric type adrWidth, numeric type beWidth, numeric type brstWidth);
  method Bool                rdy;
  method Action              burstbegin   (Bool i);
  method Action              addr         (Bit#(adrWidth) i);
  method Bool                rdata_valid;
  method Bit#(datWidth)      rdata;
  method Action              wdata        (Bit#(datWidth) i);
  method Action              be           (Bit#(beWidth)  i);
  method Bool                read_req;
  method Bool                write_req;
  method Action              size         (Bit#(brstWidth)  i);
endinterface: DRAM_AVL
typedef DRAM_AVL#(64,24,8,3) DRAM_AVL_8B;

(* always_enabled, always_ready *)
interface DRAM_STATUS;
  method Bool init_done;
  method Bool cal_success;
  method Bool cal_fail;
endinterface: DRAM_STATUS

interface DramControllerIfc;
  interface DDR3_16       dram;      // the dram-facing ios
  interface DRAM_AVL_8B   avl;       // the explicit Avalon MM interface
  interface DRAM_STATUS   status;    // the status interface
  interface Clock         afi_full;  // AFI clock
  interface Clock         afi_half;  // AFI half-clock (this is the clock for the avl interface)
  interface Reset         afi_rstn;  // AFI reset
endinterface: DramControllerIfc

interface DRAM_USR16B;                             // 16B User interface
  method    Bool                   initComplete;   // memory server ready
  interface Put#(DramReq16B)       request;        // 16B dram request (cmd + optional write data)
  interface Get#(Bit#(128))        response;       // 16B read data response
endinterface

interface DramControllerUiIfc;
  interface DDR3_16      dram;       // dram pins
  interface DRAM_USR16B  usr;        // user interface
  interface Clock        uclk;       // user-facing clock
  interface Reset        urst_n;     // user-facing reset
  method Bit#(32)        reqCount;   // request counter
endinterface: DramControllerUiIfc

import "BVI" ddr3_s4_uniphy = 
module vMkS4DDR3#(Clock sys0_clk, Reset sys0_rstn)(DramControllerIfc);

  default_clock clk(pll_ref_clk)     = sys0_clk;     // 125 MHz Clock In
  default_reset rst(global_reset_n)  = sys0_rstn; 

  output_clock    afi_full  (afi_clk);       // 350 MHz
  output_clock    afi_half  (afi_half_clk);  // 175 MHz
  output_reset    afi_rstn  (afi_reset_n) clocked_by (afi_half); 

  interface DDR3_16 dram;
    ifc_inout  io_dq(mem_dq)       clocked_by(no_clock) reset_by(no_reset);
    method  mem_a        addr      clocked_by(no_clock) reset_by(no_reset);
    method  mem_ba       ba        clocked_by(no_clock) reset_by(no_reset);
    method  mem_ras_n    ras_n     clocked_by(no_clock) reset_by(no_reset);
    method  mem_cas_n    cas_n     clocked_by(no_clock) reset_by(no_reset);
    method  mem_we_n     we_n      clocked_by(no_clock) reset_by(no_reset);
    method  mem_reset_n  reset_n   clocked_by(no_clock) reset_by(no_reset);
    method  mem_cs_n     cs_n      clocked_by(no_clock) reset_by(no_reset);
    method  mem_odt      odt       clocked_by(no_clock) reset_by(no_reset);
    method  mem_cke      cke       clocked_by(no_clock) reset_by(no_reset);
    method  mem_dm       dm        clocked_by(no_clock) reset_by(no_reset);
    ifc_inout  io_dqs_p(mem_dqs  ) clocked_by(no_clock) reset_by(no_reset);
    ifc_inout  io_dqs_n(mem_dqs_n) clocked_by(no_clock) reset_by(no_reset);
    method  mem_ck       ck_p      clocked_by(no_clock) reset_by(no_reset);
    method  mem_ck_n     ck_n      clocked_by(no_clock) reset_by(no_reset);
    method  rdn (oct_rdn) enable((*inhigh*)ena6) clocked_by(clk) reset_by(rst);  // Pass the oct_rdn, _rup inputs in here
    method  rup (oct_rup) enable((*inhigh*)ena7) clocked_by(clk) reset_by(rst);
  endinterface: dram

  interface DRAM_AVL_8B avl;
    method avl_ready          rdy                                                     clocked_by(afi_half) reset_by(afi_rstn);
    method                    burstbegin (avl_burstbegin)      enable((*inhigh*)ena1) clocked_by(afi_half) reset_by(afi_rstn);
    method                    addr       (avl_addr)            enable((*inhigh*)ena2) clocked_by(afi_half) reset_by(afi_rstn); 
    method avl_rdata_valid    rdata_valid                                             clocked_by(afi_half) reset_by(afi_rstn);
    method avl_rdata          rdata                                                   clocked_by(afi_half) reset_by(afi_rstn);
    method                    wdata      (avl_wdata)           enable((*inhigh*)ena3) clocked_by(afi_half) reset_by(afi_rstn); 
    method                    be         (avl_be   )           enable((*inhigh*)ena4) clocked_by(afi_half) reset_by(afi_rstn); 
    method avl_read_req       read_req                                                clocked_by(afi_half) reset_by(afi_rstn);
    method avl_write_req      write_req                                               clocked_by(afi_half) reset_by(afi_rstn);
    method                    size       (avl_size)            enable((*inhigh*)ena5) clocked_by(afi_half) reset_by(afi_rstn); 
  endinterface: avl

  interface DRAM_STATUS status;
    method local_init_done   init_done                                                clocked_by(afi_half) reset_by(afi_rstn);
    method local_cal_success cal_success                                              clocked_by(afi_half) reset_by(afi_rstn);
    method local_cal_fail    cal_fail                                                 clocked_by(afi_half) reset_by(afi_rstn);
  endinterface: status

  schedule 
    (dram_addr, dram_ba, dram_ras_n, dram_cas_n, dram_we_n, dram_cs_n, dram_odt, dram_cke, dram_dm, dram_ck_p, dram_ck_n, dram_reset_n, dram_rdn, dram_rup)
    CF
    (dram_addr, dram_ba, dram_ras_n, dram_cas_n, dram_we_n, dram_cs_n, dram_odt, dram_cke, dram_dm, dram_ck_p, dram_ck_n, dram_reset_n, dram_rdn, dram_rup);
  schedule
    (avl_rdy, avl_rdata_valid, avl_rdata, avl_read_req, avl_write_req, avl_burstbegin, avl_addr, avl_wdata, avl_be, avl_size,
      status_init_done, status_cal_success, status_cal_fail)
    CF
    (avl_rdy, avl_rdata_valid, avl_rdata, avl_read_req, avl_write_req, avl_burstbegin, avl_addr, avl_wdata, avl_be, avl_size,
      status_init_done, status_cal_success, status_cal_fail);

endmodule: vMkS4DDR3


module mkDramController#(Clock sys0_clk, Reset sys0_rstn) (DramControllerIfc);
  Clock                 clk           <-  exposeCurrentClock;
  Reset                 rst_n         <-  exposeCurrentReset;
  let _m <- vMkS4DDR3(sys0_clk, sys0_rstn, clocked_by clk, reset_by rst_n);
  return(_m);
endmodule: mkDramController

module mkDramControllerUi#(Clock sys0_clk, Reset sys0_rstn) (DramControllerUiIfc);
  Reset                 rst_n         <- exposeCurrentReset;
  DramControllerIfc     memc          <- vMkS4DDR3(sys0_clk,  sys0_rstn, clocked_by sys0_clk, reset_by sys0_rstn);
  FIFO#(DramReq16B)     reqF          <- mkFIFO(        clocked_by memc.afi_half, reset_by memc.afi_rstn);
  FIFO#(Bit#(128))      respF         <- mkFIFO(        clocked_by memc.afi_half, reset_by memc.afi_rstn);
  Reg#(Bit#(32))        dbg_reqCount  <- mkReg(0,       clocked_by memc.afi_half, reset_by memc.afi_rstn);
  FIFO#(Bit#(2))        rdpF          <- mkFIFO(        clocked_by memc.afi_half, reset_by memc.afi_rstn);
  Wire#(Bool)           wdfWren       <- mkDWire(False, clocked_by memc.afi_half, reset_by memc.afi_rstn);
  Wire#(Bool)           wdfEnd        <- mkDWire(False, clocked_by memc.afi_half, reset_by memc.afi_rstn);

  Bool okToOperate = memc.status.init_done && memc.status.cal_success;

  rule advance_request (okToOperate);
    let r = reqF.first;
    dbg_reqCount <= dbg_reqCount + 1; 
  endrule

  rule advance_write (okToOperate);
    let r = reqF.first;
  endrule

  rule advance_read  (okToOperate); 
    noAction;
  endrule

  interface DRAM_USR16B usr;
    method    Bool initComplete = okToOperate;
    interface Put  request      = toPut(reqF);
    interface Get  response     = toGet(respF);
  endinterface
  interface DDR3_16  dram       = memc.dram;
  interface Clock    uclk       = memc.afi_half;
  interface Reset    urst_n     = memc.afi_rstn;
  method Bit#(32)    reqCount   = dbg_reqCount;
endmodule: mkDramControllerUi

endpackage: DRAM_s4
