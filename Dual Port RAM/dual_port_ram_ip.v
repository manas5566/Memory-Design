//Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
//--------------------------------------------------------------------------------
//Tool Version: Vivado v.2020.2 (win64) Build 3064766 Wed Nov 18 09:12:45 MST 2020
//Date        : Tue Oct 22 11:26:58 2024
//Host        : Manas running 64-bit major release  (build 9200)
//Command     : generate_target Dual_Port_RAM.bd
//Design      : Dual_Port_RAM
//Purpose     : IP block netlist
//--------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CORE_GENERATION_INFO = "Dual_Port_RAM,IP_Integrator,{x_ipVendor=xilinx.com,x_ipLibrary=BlockDiagram,x_ipName=Dual_Port_RAM,x_ipVersion=1.00.a,x_ipLanguage=VERILOG,numBlks=3,numReposBlks=3,numNonXlnxBlks=0,numHierBlks=0,maxHierDepth=0,numSysgenBlks=0,numHlsBlks=0,numHdlrefBlks=0,numPkgbdBlks=0,bdsource=USER,synth_mode=OOC_per_IP}" *) (* HW_HANDOFF = "Dual_Port_RAM.hwdef" *) 
module Dual_Port_RAM
   (CLK,
    Data_outA,
    Data_outB,
    EnableA,
    EnableB);
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 CLK.CLK CLK" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME CLK.CLK, CLK_DOMAIN Dual_Port_RAM_CLK_0, FREQ_HZ 10000000, FREQ_TOLERANCE_HZ 0, INSERT_VIP 0, PHASE 0.000" *) input CLK;
  output [7:0]Data_outA;
  output [7:0]Data_outB;
  input EnableA;
  input EnableB;

  wire CLK_0_1;
  wire [7:0]blk_mem_gen_0_douta;
  wire [7:0]blk_mem_gen_0_doutb;
  wire [2:0]c_counter_binary_0_Q;
  wire [2:0]c_counter_binary_1_Q;
  wire ena_0_1;
  wire enb_0_1;

  assign CLK_0_1 = CLK;
  assign Data_outA[7:0] = blk_mem_gen_0_douta;
  assign Data_outB[7:0] = blk_mem_gen_0_doutb;
  assign ena_0_1 = EnableA;
  assign enb_0_1 = EnableB;
  Dual_Port_RAM_blk_mem_gen_0_0 Dual_Port_RAM
       (.addra(c_counter_binary_0_Q),
        .addrb(c_counter_binary_1_Q),
        .clka(CLK_0_1),
        .clkb(CLK_0_1),
        .douta(blk_mem_gen_0_douta),
        .doutb(blk_mem_gen_0_doutb),
        .ena(ena_0_1),
        .enb(enb_0_1));
  Dual_Port_RAM_c_counter_binary_0_0 PortA_Addr_Bus
       (.CLK(CLK_0_1),
        .Q(c_counter_binary_0_Q));
  Dual_Port_RAM_c_counter_binary_0_1 PortB_Addr_Bus
       (.CLK(CLK_0_1),
        .Q(c_counter_binary_1_Q));
endmodule
