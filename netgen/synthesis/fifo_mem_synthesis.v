////////////////////////////////////////////////////////////////////////////////
// Copyright (c) 1995-2013 Xilinx, Inc.  All rights reserved.
////////////////////////////////////////////////////////////////////////////////
//   ____  ____
//  /   /\/   /
// /___/  \  /    Vendor: Xilinx
// \   \   \/     Version: P.20131013
//  \   \         Application: netgen
//  /   /         Filename: fifo_mem_synthesis.v
// /___/   /\     Timestamp: Thu Sep 05 12:49:54 2024
// \   \  /  \ 
//  \___\/\___\
//             
// Command	: -intstyle ise -insert_glbl true -w -dir netgen/synthesis -ofmt verilog -sim fifo_mem.ngc fifo_mem_synthesis.v 
// Device	: xc7a100t-3-csg324
// Input file	: fifo_mem.ngc
// Output file	: F:\vlsi_study\verilog_project_fifo\fifo\netgen\synthesis\fifo_mem_synthesis.v
// # of Modules	: 1
// Design Name	: fifo_mem
// Xilinx        : C:\Xilinx\14.7\ISE_DS\ISE\
//             
// Purpose:    
//     This verilog netlist is a verification model and uses simulation 
//     primitives which may not represent the true implementation of the 
//     device, however the netlist is functionally correct and should not 
//     be modified. This file cannot be synthesized and should only be used 
//     with supported simulation tools.
//             
// Reference:  
//     Command Line Tools User Guide, Chapter 23 and Synthesis and Simulation Design Guide, Chapter 6
//             
////////////////////////////////////////////////////////////////////////////////

`timescale 1 ns/1 ps

module fifo_mem (
  clk, rst_n, wr, rd, fifo_full, fifo_empty, fifo_threshold, fifo_overflow, fifo_underflow, data_in, data_out
);
  input clk;
  input rst_n;
  input wr;
  input rd;
  output fifo_full;
  output fifo_empty;
  output fifo_threshold;
  output fifo_overflow;
  output fifo_underflow;
  input [7 : 0] data_in;
  output [7 : 0] data_out;
  wire data_in_7_IBUF_0;
  wire data_in_6_IBUF_1;
  wire data_in_5_IBUF_2;
  wire data_in_4_IBUF_3;
  wire data_in_3_IBUF_4;
  wire data_in_2_IBUF_5;
  wire data_in_1_IBUF_6;
  wire data_in_0_IBUF_7;
  wire clk_BUFGP_8;
  wire rst_n_IBUF_9;
  wire wr_IBUF_10;
  wire rd_IBUF_11;
  wire data_out_7_OBUF_12;
  wire data_out_6_OBUF_13;
  wire data_out_5_OBUF_14;
  wire data_out_4_OBUF_15;
  wire data_out_3_OBUF_16;
  wire data_out_2_OBUF_17;
  wire data_out_1_OBUF_18;
  wire data_out_0_OBUF_19;
  wire fifo_we;
  wire fifo_full_OBUF_26;
  wire fifo_empty_OBUF_27;
  wire fifo_threshold_OBUF_28;
  wire \top4/fifo_overflow_29 ;
  wire \top4/fifo_underflow_30 ;
  wire N0;
  wire rst_n_inv;
  wire \top4/_n0041_inv1 ;
  wire \top4/pointer_result[4]_pointer_result[3]_OR_4_o2 ;
  wire \top4/_n0041_inv ;
  wire \top4/_n0044_inv ;
  wire \top4/fifo_underflow_PWR_5_o_MUX_41_o ;
  wire \top4/fifo_overflow_PWR_5_o_MUX_39_o ;
  wire \top1/fifo_we1_cepot_72 ;
  wire \top1/wptr_0_dpot_73 ;
  wire \top1/wptr_1_dpot_74 ;
  wire \top1/wptr_2_dpot_75 ;
  wire \top1/wptr_3_dpot_76 ;
  wire \top1/wptr_4_dpot_77 ;
  wire \top2/fifo_rd1_cepot_78 ;
  wire \top2/rptr_0_dpot_79 ;
  wire \top2/rptr_1_dpot_80 ;
  wire \top2/rptr_2_dpot_81 ;
  wire \top2/rptr_3_dpot_82 ;
  wire \top2/rptr_4_dpot_83 ;
  wire N01;
  wire N2;
  wire N4;
  wire N6;
  wire N8;
  wire N12;
  wire \NLW_top3/Mram_data_out21_DOD<1>_UNCONNECTED ;
  wire \NLW_top3/Mram_data_out21_DOD<0>_UNCONNECTED ;
  wire \NLW_top3/Mram_data_out222_SPO_UNCONNECTED ;
  wire \NLW_top3/Mram_data_out221_SPO_UNCONNECTED ;
  wire [4 : 0] \top2/rptr ;
  wire [4 : 0] \top1/wptr ;
  wire [3 : 1] \top4/Msub_pointer_result_lut ;
  GND   XST_GND (
    .G(N0)
  );
  RAM32M #(
    .INIT_A ( 64'h0000000000000000 ),
    .INIT_B ( 64'h0000000000000000 ),
    .INIT_C ( 64'h0000000000000000 ),
    .INIT_D ( 64'h0000000000000000 ))
  \top3/Mram_data_out21  (
    .WCLK(clk_BUFGP_8),
    .WE(fifo_we),
    .DIA({data_in_1_IBUF_6, data_in_0_IBUF_7}),
    .DIB({data_in_3_IBUF_4, data_in_2_IBUF_5}),
    .DIC({data_in_5_IBUF_2, data_in_4_IBUF_3}),
    .DID({N0, N0}),
    .ADDRA({N0, \top2/rptr [3], \top2/rptr [2], \top2/rptr [1], \top2/rptr [0]}),
    .ADDRB({N0, \top2/rptr [3], \top2/rptr [2], \top2/rptr [1], \top2/rptr [0]}),
    .ADDRC({N0, \top2/rptr [3], \top2/rptr [2], \top2/rptr [1], \top2/rptr [0]}),
    .ADDRD({N0, \top1/wptr [3], \top1/wptr [2], \top1/wptr [1], \top1/wptr [0]}),
    .DOA({data_out_1_OBUF_18, data_out_0_OBUF_19}),
    .DOB({data_out_3_OBUF_16, data_out_2_OBUF_17}),
    .DOC({data_out_5_OBUF_14, data_out_4_OBUF_15}),
    .DOD({\NLW_top3/Mram_data_out21_DOD<1>_UNCONNECTED , \NLW_top3/Mram_data_out21_DOD<0>_UNCONNECTED })
  );
  RAM32X1D #(
    .INIT ( 32'h00000000 ))
  \top3/Mram_data_out222  (
    .A0(\top1/wptr [0]),
    .A1(\top1/wptr [1]),
    .A2(\top1/wptr [2]),
    .A3(\top1/wptr [3]),
    .A4(N0),
    .D(data_in_7_IBUF_0),
    .DPRA0(\top2/rptr [0]),
    .DPRA1(\top2/rptr [1]),
    .DPRA2(\top2/rptr [2]),
    .DPRA3(\top2/rptr [3]),
    .DPRA4(N0),
    .WCLK(clk_BUFGP_8),
    .WE(fifo_we),
    .SPO(\NLW_top3/Mram_data_out222_SPO_UNCONNECTED ),
    .DPO(data_out_7_OBUF_12)
  );
  RAM32X1D #(
    .INIT ( 32'h00000000 ))
  \top3/Mram_data_out221  (
    .A0(\top1/wptr [0]),
    .A1(\top1/wptr [1]),
    .A2(\top1/wptr [2]),
    .A3(\top1/wptr [3]),
    .A4(N0),
    .D(data_in_6_IBUF_1),
    .DPRA0(\top2/rptr [0]),
    .DPRA1(\top2/rptr [1]),
    .DPRA2(\top2/rptr [2]),
    .DPRA3(\top2/rptr [3]),
    .DPRA4(N0),
    .WCLK(clk_BUFGP_8),
    .WE(fifo_we),
    .SPO(\NLW_top3/Mram_data_out221_SPO_UNCONNECTED ),
    .DPO(data_out_6_OBUF_13)
  );
  FDCE   \top1/wptr_0  (
    .C(clk_BUFGP_8),
    .CE(\top1/fifo_we1_cepot_72 ),
    .CLR(rst_n_inv),
    .D(\top1/wptr_0_dpot_73 ),
    .Q(\top1/wptr [0])
  );
  FDCE   \top1/wptr_1  (
    .C(clk_BUFGP_8),
    .CE(\top1/fifo_we1_cepot_72 ),
    .CLR(rst_n_inv),
    .D(\top1/wptr_1_dpot_74 ),
    .Q(\top1/wptr [1])
  );
  FDCE   \top1/wptr_2  (
    .C(clk_BUFGP_8),
    .CE(\top1/fifo_we1_cepot_72 ),
    .CLR(rst_n_inv),
    .D(\top1/wptr_2_dpot_75 ),
    .Q(\top1/wptr [2])
  );
  FDCE   \top1/wptr_3  (
    .C(clk_BUFGP_8),
    .CE(\top1/fifo_we1_cepot_72 ),
    .CLR(rst_n_inv),
    .D(\top1/wptr_3_dpot_76 ),
    .Q(\top1/wptr [3])
  );
  FDCE   \top1/wptr_4  (
    .C(clk_BUFGP_8),
    .CE(\top1/fifo_we1_cepot_72 ),
    .CLR(rst_n_inv),
    .D(\top1/wptr_4_dpot_77 ),
    .Q(\top1/wptr [4])
  );
  FDCE   \top2/rptr_0  (
    .C(clk_BUFGP_8),
    .CE(\top2/fifo_rd1_cepot_78 ),
    .CLR(rst_n_inv),
    .D(\top2/rptr_0_dpot_79 ),
    .Q(\top2/rptr [0])
  );
  FDCE   \top2/rptr_1  (
    .C(clk_BUFGP_8),
    .CE(\top2/fifo_rd1_cepot_78 ),
    .CLR(rst_n_inv),
    .D(\top2/rptr_1_dpot_80 ),
    .Q(\top2/rptr [1])
  );
  FDCE   \top2/rptr_2  (
    .C(clk_BUFGP_8),
    .CE(\top2/fifo_rd1_cepot_78 ),
    .CLR(rst_n_inv),
    .D(\top2/rptr_2_dpot_81 ),
    .Q(\top2/rptr [2])
  );
  FDCE   \top2/rptr_3  (
    .C(clk_BUFGP_8),
    .CE(\top2/fifo_rd1_cepot_78 ),
    .CLR(rst_n_inv),
    .D(\top2/rptr_3_dpot_82 ),
    .Q(\top2/rptr [3])
  );
  FDCE   \top2/rptr_4  (
    .C(clk_BUFGP_8),
    .CE(\top2/fifo_rd1_cepot_78 ),
    .CLR(rst_n_inv),
    .D(\top2/rptr_4_dpot_83 ),
    .Q(\top2/rptr [4])
  );
  FDCE   \top4/fifo_underflow  (
    .C(clk_BUFGP_8),
    .CE(\top4/_n0041_inv ),
    .CLR(rst_n_inv),
    .D(\top4/fifo_underflow_PWR_5_o_MUX_41_o ),
    .Q(\top4/fifo_underflow_30 )
  );
  FDCE   \top4/fifo_overflow  (
    .C(clk_BUFGP_8),
    .CE(\top4/_n0044_inv ),
    .CLR(rst_n_inv),
    .D(\top4/fifo_overflow_PWR_5_o_MUX_39_o ),
    .Q(\top4/fifo_overflow_29 )
  );
  LUT2 #(
    .INIT ( 4'h9 ))
  \top4/Msub_pointer_result_lut<3>1  (
    .I0(\top1/wptr [3]),
    .I1(\top2/rptr [3]),
    .O(\top4/Msub_pointer_result_lut [3])
  );
  LUT2 #(
    .INIT ( 4'h9 ))
  \top4/Msub_pointer_result_lut<2>1  (
    .I0(\top1/wptr [2]),
    .I1(\top2/rptr [2]),
    .O(\top4/Msub_pointer_result_lut [2])
  );
  LUT2 #(
    .INIT ( 4'h9 ))
  \top4/Msub_pointer_result_lut<1>1  (
    .I0(\top1/wptr [1]),
    .I1(\top2/rptr [1]),
    .O(\top4/Msub_pointer_result_lut [1])
  );
  IBUF   data_in_7_IBUF (
    .I(data_in[7]),
    .O(data_in_7_IBUF_0)
  );
  IBUF   data_in_6_IBUF (
    .I(data_in[6]),
    .O(data_in_6_IBUF_1)
  );
  IBUF   data_in_5_IBUF (
    .I(data_in[5]),
    .O(data_in_5_IBUF_2)
  );
  IBUF   data_in_4_IBUF (
    .I(data_in[4]),
    .O(data_in_4_IBUF_3)
  );
  IBUF   data_in_3_IBUF (
    .I(data_in[3]),
    .O(data_in_3_IBUF_4)
  );
  IBUF   data_in_2_IBUF (
    .I(data_in[2]),
    .O(data_in_2_IBUF_5)
  );
  IBUF   data_in_1_IBUF (
    .I(data_in[1]),
    .O(data_in_1_IBUF_6)
  );
  IBUF   data_in_0_IBUF (
    .I(data_in[0]),
    .O(data_in_0_IBUF_7)
  );
  IBUF   rst_n_IBUF (
    .I(rst_n),
    .O(rst_n_IBUF_9)
  );
  IBUF   wr_IBUF (
    .I(wr),
    .O(wr_IBUF_10)
  );
  IBUF   rd_IBUF (
    .I(rd),
    .O(rd_IBUF_11)
  );
  OBUF   data_out_7_OBUF (
    .I(data_out_7_OBUF_12),
    .O(data_out[7])
  );
  OBUF   data_out_6_OBUF (
    .I(data_out_6_OBUF_13),
    .O(data_out[6])
  );
  OBUF   data_out_5_OBUF (
    .I(data_out_5_OBUF_14),
    .O(data_out[5])
  );
  OBUF   data_out_4_OBUF (
    .I(data_out_4_OBUF_15),
    .O(data_out[4])
  );
  OBUF   data_out_3_OBUF (
    .I(data_out_3_OBUF_16),
    .O(data_out[3])
  );
  OBUF   data_out_2_OBUF (
    .I(data_out_2_OBUF_17),
    .O(data_out[2])
  );
  OBUF   data_out_1_OBUF (
    .I(data_out_1_OBUF_18),
    .O(data_out[1])
  );
  OBUF   data_out_0_OBUF (
    .I(data_out_0_OBUF_19),
    .O(data_out[0])
  );
  OBUF   fifo_full_OBUF (
    .I(fifo_full_OBUF_26),
    .O(fifo_full)
  );
  OBUF   fifo_empty_OBUF (
    .I(fifo_empty_OBUF_27),
    .O(fifo_empty)
  );
  OBUF   fifo_threshold_OBUF (
    .I(fifo_threshold_OBUF_28),
    .O(fifo_threshold)
  );
  OBUF   fifo_overflow_OBUF (
    .I(\top4/fifo_overflow_29 ),
    .O(fifo_overflow)
  );
  OBUF   fifo_underflow_OBUF (
    .I(\top4/fifo_underflow_30 ),
    .O(fifo_underflow)
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  \top4/_n0041_inv11_SW0  (
    .I0(\top2/rptr [4]),
    .I1(\top1/wptr [4]),
    .O(N01)
  );
  LUT6 #(
    .INIT ( 64'h0900000000000000 ))
  \top4/fifo_empty1  (
    .I0(\top1/wptr [0]),
    .I1(\top2/rptr [0]),
    .I2(N01),
    .I3(\top4/Msub_pointer_result_lut [3]),
    .I4(\top4/Msub_pointer_result_lut [2]),
    .I5(\top4/Msub_pointer_result_lut [1]),
    .O(fifo_empty_OBUF_27)
  );
  LUT2 #(
    .INIT ( 4'h9 ))
  \top4/_n0041_inv11_SW1  (
    .I0(\top2/rptr [4]),
    .I1(\top1/wptr [4]),
    .O(N2)
  );
  LUT6 #(
    .INIT ( 64'h0900000000000000 ))
  \top4/fifo_full1  (
    .I0(\top1/wptr [0]),
    .I1(\top2/rptr [0]),
    .I2(N2),
    .I3(\top4/Msub_pointer_result_lut [3]),
    .I4(\top4/Msub_pointer_result_lut [2]),
    .I5(\top4/Msub_pointer_result_lut [1]),
    .O(fifo_full_OBUF_26)
  );
  LUT6 #(
    .INIT ( 64'h0CC00000AEEAAAAA ))
  \top4/_n0044_inv1  (
    .I0(rd_IBUF_11),
    .I1(wr_IBUF_10),
    .I2(\top1/wptr [4]),
    .I3(\top2/rptr [4]),
    .I4(\top4/_n0041_inv1 ),
    .I5(fifo_empty_OBUF_27),
    .O(\top4/_n0044_inv )
  );
  LUT6 #(
    .INIT ( 64'hC00C0000EAAEAAAA ))
  \top4/_n0041_inv2  (
    .I0(wr_IBUF_10),
    .I1(rd_IBUF_11),
    .I2(\top1/wptr [4]),
    .I3(\top2/rptr [4]),
    .I4(\top4/_n0041_inv1 ),
    .I5(fifo_full_OBUF_26),
    .O(\top4/_n0041_inv )
  );
  LUT2 #(
    .INIT ( 4'h9 ))
  \top4/fifo_full1_SW0  (
    .I0(\top2/rptr [0]),
    .I1(\top1/wptr [0]),
    .O(N4)
  );
  LUT6 #(
    .INIT ( 64'hAAAAAAAA2AAAAAAA ))
  \top1/fifo_we1  (
    .I0(wr_IBUF_10),
    .I1(\top4/Msub_pointer_result_lut [3]),
    .I2(\top4/Msub_pointer_result_lut [2]),
    .I3(\top4/Msub_pointer_result_lut [1]),
    .I4(N4),
    .I5(N2),
    .O(fifo_we)
  );
  LUT5 #(
    .INIT ( 32'hFF6F6FFF ))
  \top4/fifo_overflow_PWR_5_o_MUX_39_o1_SW0  (
    .I0(\top2/rptr [0]),
    .I1(\top1/wptr [0]),
    .I2(wr_IBUF_10),
    .I3(\top1/wptr [4]),
    .I4(\top2/rptr [4]),
    .O(N6)
  );
  LUT6 #(
    .INIT ( 64'h0000008000800080 ))
  \top4/fifo_overflow_PWR_5_o_MUX_39_o1  (
    .I0(\top4/Msub_pointer_result_lut [3]),
    .I1(\top4/Msub_pointer_result_lut [2]),
    .I2(\top4/Msub_pointer_result_lut [1]),
    .I3(N6),
    .I4(rd_IBUF_11),
    .I5(N01),
    .O(\top4/fifo_overflow_PWR_5_o_MUX_39_o )
  );
  LUT5 #(
    .INIT ( 32'h6FF6FFFF ))
  \top4/fifo_underflow_PWR_5_o_MUX_41_o1_SW0  (
    .I0(\top2/rptr [4]),
    .I1(\top1/wptr [4]),
    .I2(\top2/rptr [0]),
    .I3(\top1/wptr [0]),
    .I4(rd_IBUF_11),
    .O(N8)
  );
  LUT6 #(
    .INIT ( 64'h0000008000800080 ))
  \top4/fifo_underflow_PWR_5_o_MUX_41_o1  (
    .I0(\top4/Msub_pointer_result_lut [3]),
    .I1(\top4/Msub_pointer_result_lut [2]),
    .I2(\top4/Msub_pointer_result_lut [1]),
    .I3(N8),
    .I4(wr_IBUF_10),
    .I5(N2),
    .O(\top4/fifo_underflow_PWR_5_o_MUX_41_o )
  );
  LUT6 #(
    .INIT ( 64'h9FFFFFFFFFFFFFFF ))
  \top1/fifo_we1_cepot  (
    .I0(\top2/rptr [4]),
    .I1(\top1/wptr [4]),
    .I2(\top4/Msub_pointer_result_lut [3]),
    .I3(\top4/Msub_pointer_result_lut [2]),
    .I4(\top4/Msub_pointer_result_lut [1]),
    .I5(N4),
    .O(\top1/fifo_we1_cepot_72 )
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  \top4/_n0041_inv11_SW3  (
    .I0(\top2/rptr [0]),
    .I1(\top1/wptr [0]),
    .O(N12)
  );
  LUT6 #(
    .INIT ( 64'hFFFFFFFF6FFFFFFF ))
  \top2/fifo_rd1_cepot  (
    .I0(\top2/rptr [4]),
    .I1(\top1/wptr [4]),
    .I2(\top4/Msub_pointer_result_lut [3]),
    .I3(\top4/Msub_pointer_result_lut [2]),
    .I4(\top4/Msub_pointer_result_lut [1]),
    .I5(N12),
    .O(\top2/fifo_rd1_cepot_78 )
  );
  LUT6 #(
    .INIT ( 64'h9009000000000000 ))
  \top4/_n0041_inv11  (
    .I0(\top1/wptr [3]),
    .I1(\top2/rptr [3]),
    .I2(\top1/wptr [0]),
    .I3(\top2/rptr [0]),
    .I4(\top4/Msub_pointer_result_lut [1]),
    .I5(\top4/Msub_pointer_result_lut [2]),
    .O(\top4/_n0041_inv1 )
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  \top1/wptr_0_dpot  (
    .I0(wr_IBUF_10),
    .I1(\top1/wptr [0]),
    .O(\top1/wptr_0_dpot_73 )
  );
  LUT3 #(
    .INIT ( 8'h6A ))
  \top1/wptr_1_dpot  (
    .I0(\top1/wptr [1]),
    .I1(wr_IBUF_10),
    .I2(\top1/wptr [0]),
    .O(\top1/wptr_1_dpot_74 )
  );
  LUT4 #(
    .INIT ( 16'h6AAA ))
  \top1/wptr_2_dpot  (
    .I0(\top1/wptr [2]),
    .I1(wr_IBUF_10),
    .I2(\top1/wptr [0]),
    .I3(\top1/wptr [1]),
    .O(\top1/wptr_2_dpot_75 )
  );
  LUT5 #(
    .INIT ( 32'h6CCCCCCC ))
  \top1/wptr_3_dpot  (
    .I0(wr_IBUF_10),
    .I1(\top1/wptr [3]),
    .I2(\top1/wptr [0]),
    .I3(\top1/wptr [1]),
    .I4(\top1/wptr [2]),
    .O(\top1/wptr_3_dpot_76 )
  );
  LUT6 #(
    .INIT ( 64'h78F0F0F0F0F0F0F0 ))
  \top1/wptr_4_dpot  (
    .I0(wr_IBUF_10),
    .I1(\top1/wptr [3]),
    .I2(\top1/wptr [4]),
    .I3(\top1/wptr [0]),
    .I4(\top1/wptr [1]),
    .I5(\top1/wptr [2]),
    .O(\top1/wptr_4_dpot_77 )
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  \top2/rptr_0_dpot  (
    .I0(rd_IBUF_11),
    .I1(\top2/rptr [0]),
    .O(\top2/rptr_0_dpot_79 )
  );
  LUT3 #(
    .INIT ( 8'h6A ))
  \top2/rptr_1_dpot  (
    .I0(\top2/rptr [1]),
    .I1(rd_IBUF_11),
    .I2(\top2/rptr [0]),
    .O(\top2/rptr_1_dpot_80 )
  );
  LUT4 #(
    .INIT ( 16'h6AAA ))
  \top2/rptr_2_dpot  (
    .I0(\top2/rptr [2]),
    .I1(rd_IBUF_11),
    .I2(\top2/rptr [0]),
    .I3(\top2/rptr [1]),
    .O(\top2/rptr_2_dpot_81 )
  );
  LUT5 #(
    .INIT ( 32'h6CCCCCCC ))
  \top2/rptr_3_dpot  (
    .I0(rd_IBUF_11),
    .I1(\top2/rptr [3]),
    .I2(\top2/rptr [0]),
    .I3(\top2/rptr [1]),
    .I4(\top2/rptr [2]),
    .O(\top2/rptr_3_dpot_82 )
  );
  LUT6 #(
    .INIT ( 64'h78F0F0F0F0F0F0F0 ))
  \top2/rptr_4_dpot  (
    .I0(rd_IBUF_11),
    .I1(\top2/rptr [3]),
    .I2(\top2/rptr [4]),
    .I3(\top2/rptr [0]),
    .I4(\top2/rptr [1]),
    .I5(\top2/rptr [2]),
    .O(\top2/rptr_4_dpot_83 )
  );
  LUT5 #(
    .INIT ( 32'hD6BFBFD6 ))
  \top4/pointer_result[4]_pointer_result[3]_OR_4_o1  (
    .I0(\top1/wptr [3]),
    .I1(\top2/rptr [3]),
    .I2(\top4/pointer_result[4]_pointer_result[3]_OR_4_o2 ),
    .I3(\top1/wptr [4]),
    .I4(\top2/rptr [4]),
    .O(fifo_threshold_OBUF_28)
  );
  LUT6 #(
    .INIT ( 64'h4D44DD4D4D444D44 ))
  \top4/pointer_result[4]_pointer_result[3]_OR_4_o21  (
    .I0(\top1/wptr [2]),
    .I1(\top2/rptr [2]),
    .I2(\top1/wptr [1]),
    .I3(\top2/rptr [1]),
    .I4(\top1/wptr [0]),
    .I5(\top2/rptr [0]),
    .O(\top4/pointer_result[4]_pointer_result[3]_OR_4_o2 )
  );
  BUFGP   clk_BUFGP (
    .I(clk),
    .O(clk_BUFGP_8)
  );
  INV   rst_n_inv1_INV_0 (
    .I(rst_n_IBUF_9),
    .O(rst_n_inv)
  );
endmodule


`ifndef GLBL
`define GLBL

`timescale  1 ps / 1 ps

module glbl ();

    parameter ROC_WIDTH = 100000;
    parameter TOC_WIDTH = 0;

//--------   STARTUP Globals --------------
    wire GSR;
    wire GTS;
    wire GWE;
    wire PRLD;
    tri1 p_up_tmp;
    tri (weak1, strong0) PLL_LOCKG = p_up_tmp;

    wire PROGB_GLBL;
    wire CCLKO_GLBL;

    reg GSR_int;
    reg GTS_int;
    reg PRLD_int;

//--------   JTAG Globals --------------
    wire JTAG_TDO_GLBL;
    wire JTAG_TCK_GLBL;
    wire JTAG_TDI_GLBL;
    wire JTAG_TMS_GLBL;
    wire JTAG_TRST_GLBL;

    reg JTAG_CAPTURE_GLBL;
    reg JTAG_RESET_GLBL;
    reg JTAG_SHIFT_GLBL;
    reg JTAG_UPDATE_GLBL;
    reg JTAG_RUNTEST_GLBL;

    reg JTAG_SEL1_GLBL = 0;
    reg JTAG_SEL2_GLBL = 0 ;
    reg JTAG_SEL3_GLBL = 0;
    reg JTAG_SEL4_GLBL = 0;

    reg JTAG_USER_TDO1_GLBL = 1'bz;
    reg JTAG_USER_TDO2_GLBL = 1'bz;
    reg JTAG_USER_TDO3_GLBL = 1'bz;
    reg JTAG_USER_TDO4_GLBL = 1'bz;

    assign (weak1, weak0) GSR = GSR_int;
    assign (weak1, weak0) GTS = GTS_int;
    assign (weak1, weak0) PRLD = PRLD_int;

    initial begin
	GSR_int = 1'b1;
	PRLD_int = 1'b1;
	#(ROC_WIDTH)
	GSR_int = 1'b0;
	PRLD_int = 1'b0;
    end

    initial begin
	GTS_int = 1'b1;
	#(TOC_WIDTH)
	GTS_int = 1'b0;
    end

endmodule

`endif

