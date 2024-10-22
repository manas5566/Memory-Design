//Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
//--------------------------------------------------------------------------------
//Tool Version: Vivado v.2020.2 (win64) Build 3064766 Wed Nov 18 09:12:45 MST 2020
//Date        : Tue Oct 22 11:17:29 2024
//Host        : Manas running 64-bit major release  (build 9200)
//Command     : generate_target Single_Port_RAM.bd
//Design      : Single_Port_RAM
//Purpose     : IP block netlist
//--------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CORE_GENERATION_INFO = "Single_Port_RAM,IP_Integrator,{x_ipVendor=xilinx.com,x_ipLibrary=BlockDiagram,x_ipName=Single_Port_RAM,x_ipVersion=1.00.a,x_ipLanguage=VERILOG,numBlks=3,numReposBlks=3,numNonXlnxBlks=0,numHierBlks=0,maxHierDepth=0,numSysgenBlks=0,numHlsBlks=0,numHdlrefBlks=0,numPkgbdBlks=0,bdsource=USER,synth_mode=OOC_per_IP}" *) (* HW_HANDOFF = "Single_Port_RAM.hwdef" *) 
module Single_Port_RAM
   (CLK,
    Enable,
    Read_Write,
    douta_0);
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 CLK.CLK CLK" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME CLK.CLK, CLK_DOMAIN Single_Port_RAM_CLK_0, FREQ_HZ 10000000, FREQ_TOLERANCE_HZ 0, INSERT_VIP 0, PHASE 0.000" *) input CLK;
  input Enable;
  input [0:0]Read_Write;
  output [7:0]douta_0;

  wire CLK_0_1;
  wire [7:0]blk_mem_gen_0_douta;
  wire [2:0]c_counter_binary_0_Q;
  wire [2:0]c_counter_binary_1_Q;
  wire ena_0_1;
  wire [0:0]wea_0_1;

  assign CLK_0_1 = CLK;
  assign douta_0[7:0] = blk_mem_gen_0_douta;
  assign ena_0_1 = Enable;
  assign wea_0_1 = Read_Write[0];
  Single_Port_RAM_c_counter_binary_0_0 For_address
       (.CLK(CLK_0_1),
        .Q(c_counter_binary_0_Q));
  Single_Port_RAM_c_counter_binary_0_1 For_data_in
       (.CLK(CLK_0_1),
        .Q(c_counter_binary_1_Q));
  Single_Port_RAM_blk_mem_gen_0_0 blk_mem_gen_0
       (.addra(c_counter_binary_0_Q),
        .clka(CLK_0_1),
        .dina({1'b0,1'b0,1'b0,1'b0,1'b1,c_counter_binary_1_Q}),
        .douta(blk_mem_gen_0_douta),
        .ena(ena_0_1),
        .wea(wea_0_1));
endmodule
