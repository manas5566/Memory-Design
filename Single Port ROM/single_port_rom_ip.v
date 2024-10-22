//Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
//--------------------------------------------------------------------------------
//Tool Version: Vivado v.2020.2 (win64) Build 3064766 Wed Nov 18 09:12:45 MST 2020
//Date        : Tue Oct 22 10:58:34 2024
//Host        : Manas running 64-bit major release  (build 9200)
//Command     : generate_target Single_Port_ROM.bd
//Design      : Single_Port_ROM
//Purpose     : IP block netlist
//--------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CORE_GENERATION_INFO = "Single_Port_ROM,IP_Integrator,{x_ipVendor=xilinx.com,x_ipLibrary=BlockDiagram,x_ipName=Single_Port_ROM,x_ipVersion=1.00.a,x_ipLanguage=VERILOG,numBlks=2,numReposBlks=2,numNonXlnxBlks=0,numHierBlks=0,maxHierDepth=0,numSysgenBlks=0,numHlsBlks=0,numHdlrefBlks=0,numPkgbdBlks=0,bdsource=USER,da_clkrst_cnt=1,synth_mode=OOC_per_IP}" *) (* HW_HANDOFF = "Single_Port_ROM.hwdef" *) 
module Single_Port_ROM
   (CLK,
    DOut,
    Enable);
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 CLK.CLK CLK" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME CLK.CLK, CLK_DOMAIN Single_Port_ROM_CLK_0, FREQ_HZ 10000000, FREQ_TOLERANCE_HZ 0, INSERT_VIP 0, PHASE 0.000" *) input CLK;
  output [7:0]DOut;
  input Enable;

  wire CLK_0_1;
  wire [7:0]blk_mem_gen_0_douta;
  wire [15:0]c_counter_binary_0_Q;
  wire ena_0_1;

  assign CLK_0_1 = CLK;
  assign DOut[7:0] = blk_mem_gen_0_douta;
  assign ena_0_1 = Enable;
  Single_Port_ROM_blk_mem_gen_0_0 blk_mem_gen_0
       (.addra(c_counter_binary_0_Q[2:0]),
        .clka(CLK_0_1),
        .douta(blk_mem_gen_0_douta),
        .ena(ena_0_1));
  Single_Port_ROM_c_counter_binary_0_0 c_counter_binary_0
       (.CLK(CLK_0_1),
        .Q(c_counter_binary_0_Q));
endmodule
