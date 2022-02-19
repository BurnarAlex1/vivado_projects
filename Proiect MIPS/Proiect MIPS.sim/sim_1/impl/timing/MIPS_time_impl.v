// Copyright 1986-2016 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2016.4 (win64) Build 1756540 Mon Jan 23 19:11:23 MST 2017
// Date        : Wed May 12 19:05:52 2021
// Host        : DESKTOP-FSOE1PH running 64-bit major release  (build 9200)
// Command     : write_verilog -mode timesim -nolib -sdf_anno true -force -file {D:/vivado_projects/Proiect MIPS/Proiect
//               MIPS.sim/sim_1/impl/timing/MIPS_time_impl.v}
// Design      : MIPS
// Purpose     : This verilog netlist is a timing simulation representation of the design and should not be modified or
//               synthesized. Please ensure that this netlist is used with the corresponding SDF file.
// Device      : xc7a35tcpg236-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps
`define XIL_TIMING

module RAM32M_UNIQ_BASE_
   (DOA,
    DOB,
    DOC,
    DOD,
    ADDRA,
    ADDRB,
    ADDRC,
    ADDRD,
    DIA,
    DIB,
    DIC,
    DID,
    WCLK,
    WE);
  output [1:0]DOA;
  output [1:0]DOB;
  output [1:0]DOC;
  output [1:0]DOD;
  input [4:0]ADDRA;
  input [4:0]ADDRB;
  input [4:0]ADDRC;
  input [4:0]ADDRD;
  input [1:0]DIA;
  input [1:0]DIB;
  input [1:0]DIC;
  input [1:0]DID;
  input WCLK;
  input WE;

  wire ADDRA0;
  wire ADDRA1;
  wire ADDRA2;
  wire ADDRA3;
  wire ADDRA4;
  wire ADDRB0;
  wire ADDRB1;
  wire ADDRB2;
  wire ADDRB3;
  wire ADDRB4;
  wire ADDRC0;
  wire ADDRC1;
  wire ADDRC2;
  wire ADDRC3;
  wire ADDRC4;
  wire ADDRD0;
  wire ADDRD1;
  wire ADDRD2;
  wire ADDRD3;
  wire ADDRD4;
  wire DIA0;
  wire DIA1;
  wire DIB0;
  wire DIB1;
  wire DIC0;
  wire DIC1;
  wire DID0;
  wire DID1;
  wire DOA0;
  wire DOA1;
  wire DOB0;
  wire DOB1;
  wire DOC0;
  wire DOC1;
  wire DOD0;
  wire DOD1;
  wire WCLK;
  wire WE;

  assign ADDRA0 = ADDRA[0];
  assign ADDRA1 = ADDRA[1];
  assign ADDRA2 = ADDRA[2];
  assign ADDRA3 = ADDRA[3];
  assign ADDRA4 = ADDRA[4];
  assign ADDRB0 = ADDRB[0];
  assign ADDRB1 = ADDRB[1];
  assign ADDRB2 = ADDRB[2];
  assign ADDRB3 = ADDRB[3];
  assign ADDRB4 = ADDRB[4];
  assign ADDRC0 = ADDRC[0];
  assign ADDRC1 = ADDRC[1];
  assign ADDRC2 = ADDRC[2];
  assign ADDRC3 = ADDRC[3];
  assign ADDRC4 = ADDRC[4];
  assign ADDRD0 = ADDRD[0];
  assign ADDRD1 = ADDRD[1];
  assign ADDRD2 = ADDRD[2];
  assign ADDRD3 = ADDRD[3];
  assign ADDRD4 = ADDRD[4];
  assign DIA0 = DIA[0];
  assign DIA1 = DIA[1];
  assign DIB0 = DIB[0];
  assign DIB1 = DIB[1];
  assign DIC0 = DIC[0];
  assign DIC1 = DIC[1];
  assign DID0 = DID[0];
  assign DID1 = DID[1];
  assign DOA[1] = DOA1;
  assign DOA[0] = DOA0;
  assign DOB[1] = DOB1;
  assign DOB[0] = DOB0;
  assign DOC[1] = DOC1;
  assign DOC[0] = DOC0;
  assign DOD[1] = DOD1;
  assign DOD[0] = DOD0;
  RAMD32 #(
    .INIT(32'h00000000)) 
    RAMA
       (.CLK(WCLK),
        .I(DIA0),
        .O(DOA0),
        .RADR0(ADDRA0),
        .RADR1(ADDRA1),
        .RADR2(ADDRA2),
        .RADR3(ADDRA3),
        .RADR4(ADDRA4),
        .WADR0(ADDRD0),
        .WADR1(ADDRD1),
        .WADR2(ADDRD2),
        .WADR3(ADDRD3),
        .WADR4(ADDRD4),
        .WE(WE));
  RAMD32 #(
    .INIT(32'h00000000)) 
    RAMA_D1
       (.CLK(WCLK),
        .I(DIA1),
        .O(DOA1),
        .RADR0(ADDRA0),
        .RADR1(ADDRA1),
        .RADR2(ADDRA2),
        .RADR3(ADDRA3),
        .RADR4(ADDRA4),
        .WADR0(ADDRD0),
        .WADR1(ADDRD1),
        .WADR2(ADDRD2),
        .WADR3(ADDRD3),
        .WADR4(ADDRD4),
        .WE(WE));
  RAMD32 #(
    .INIT(32'h00000000)) 
    RAMB
       (.CLK(WCLK),
        .I(DIB0),
        .O(DOB0),
        .RADR0(ADDRB0),
        .RADR1(ADDRB1),
        .RADR2(ADDRB2),
        .RADR3(ADDRB3),
        .RADR4(ADDRB4),
        .WADR0(ADDRD0),
        .WADR1(ADDRD1),
        .WADR2(ADDRD2),
        .WADR3(ADDRD3),
        .WADR4(ADDRD4),
        .WE(WE));
  RAMD32 #(
    .INIT(32'h00000000)) 
    RAMB_D1
       (.CLK(WCLK),
        .I(DIB1),
        .O(DOB1),
        .RADR0(ADDRB0),
        .RADR1(ADDRB1),
        .RADR2(ADDRB2),
        .RADR3(ADDRB3),
        .RADR4(ADDRB4),
        .WADR0(ADDRD0),
        .WADR1(ADDRD1),
        .WADR2(ADDRD2),
        .WADR3(ADDRD3),
        .WADR4(ADDRD4),
        .WE(WE));
  RAMD32 #(
    .INIT(32'h00000000)) 
    RAMC
       (.CLK(WCLK),
        .I(DIC0),
        .O(DOC0),
        .RADR0(ADDRC0),
        .RADR1(ADDRC1),
        .RADR2(ADDRC2),
        .RADR3(ADDRC3),
        .RADR4(ADDRC4),
        .WADR0(ADDRD0),
        .WADR1(ADDRD1),
        .WADR2(ADDRD2),
        .WADR3(ADDRD3),
        .WADR4(ADDRD4),
        .WE(WE));
  RAMD32 #(
    .INIT(32'h00000000)) 
    RAMC_D1
       (.CLK(WCLK),
        .I(DIC1),
        .O(DOC1),
        .RADR0(ADDRC0),
        .RADR1(ADDRC1),
        .RADR2(ADDRC2),
        .RADR3(ADDRC3),
        .RADR4(ADDRC4),
        .WADR0(ADDRD0),
        .WADR1(ADDRD1),
        .WADR2(ADDRD2),
        .WADR3(ADDRD3),
        .WADR4(ADDRD4),
        .WE(WE));
  RAMS32 #(
    .INIT(32'h00000000)) 
    RAMD
       (.ADR0(ADDRD0),
        .ADR1(ADDRD1),
        .ADR2(ADDRD2),
        .ADR3(ADDRD3),
        .ADR4(ADDRD4),
        .CLK(WCLK),
        .I(DID0),
        .O(DOD0),
        .WE(WE));
  RAMS32 #(
    .INIT(32'h00000000)) 
    RAMD_D1
       (.ADR0(ADDRD0),
        .ADR1(ADDRD1),
        .ADR2(ADDRD2),
        .ADR3(ADDRD3),
        .ADR4(ADDRD4),
        .CLK(WCLK),
        .I(DID1),
        .O(DOD1),
        .WE(WE));
endmodule

module RAM32M_HD1
   (DOA,
    DOB,
    DOC,
    DOD,
    ADDRA,
    ADDRB,
    ADDRC,
    ADDRD,
    DIA,
    DIB,
    DIC,
    DID,
    WCLK,
    WE);
  output [1:0]DOA;
  output [1:0]DOB;
  output [1:0]DOC;
  output [1:0]DOD;
  input [4:0]ADDRA;
  input [4:0]ADDRB;
  input [4:0]ADDRC;
  input [4:0]ADDRD;
  input [1:0]DIA;
  input [1:0]DIB;
  input [1:0]DIC;
  input [1:0]DID;
  input WCLK;
  input WE;

  wire ADDRA0;
  wire ADDRA1;
  wire ADDRA2;
  wire ADDRA3;
  wire ADDRA4;
  wire ADDRB0;
  wire ADDRB1;
  wire ADDRB2;
  wire ADDRB3;
  wire ADDRB4;
  wire ADDRC0;
  wire ADDRC1;
  wire ADDRC2;
  wire ADDRC3;
  wire ADDRC4;
  wire ADDRD0;
  wire ADDRD1;
  wire ADDRD2;
  wire ADDRD3;
  wire ADDRD4;
  wire DIA0;
  wire DIA1;
  wire DIB0;
  wire DIB1;
  wire DIC0;
  wire DIC1;
  wire DID0;
  wire DID1;
  wire DOA0;
  wire DOA1;
  wire DOB0;
  wire DOB1;
  wire DOC0;
  wire DOC1;
  wire DOD0;
  wire DOD1;
  wire WCLK;
  wire WE;

  assign ADDRA0 = ADDRA[0];
  assign ADDRA1 = ADDRA[1];
  assign ADDRA2 = ADDRA[2];
  assign ADDRA3 = ADDRA[3];
  assign ADDRA4 = ADDRA[4];
  assign ADDRB0 = ADDRB[0];
  assign ADDRB1 = ADDRB[1];
  assign ADDRB2 = ADDRB[2];
  assign ADDRB3 = ADDRB[3];
  assign ADDRB4 = ADDRB[4];
  assign ADDRC0 = ADDRC[0];
  assign ADDRC1 = ADDRC[1];
  assign ADDRC2 = ADDRC[2];
  assign ADDRC3 = ADDRC[3];
  assign ADDRC4 = ADDRC[4];
  assign ADDRD0 = ADDRD[0];
  assign ADDRD1 = ADDRD[1];
  assign ADDRD2 = ADDRD[2];
  assign ADDRD3 = ADDRD[3];
  assign ADDRD4 = ADDRD[4];
  assign DIA0 = DIA[0];
  assign DIA1 = DIA[1];
  assign DIB0 = DIB[0];
  assign DIB1 = DIB[1];
  assign DIC0 = DIC[0];
  assign DIC1 = DIC[1];
  assign DID0 = DID[0];
  assign DID1 = DID[1];
  assign DOA[1] = DOA1;
  assign DOA[0] = DOA0;
  assign DOB[1] = DOB1;
  assign DOB[0] = DOB0;
  assign DOC[1] = DOC1;
  assign DOC[0] = DOC0;
  assign DOD[1] = DOD1;
  assign DOD[0] = DOD0;
  RAMD32 #(
    .INIT(32'h00000000),
    .IS_CLK_INVERTED(1'b0)) 
    RAMA
       (.CLK(WCLK),
        .I(DIA0),
        .O(DOA0),
        .RADR0(ADDRA0),
        .RADR1(ADDRA1),
        .RADR2(ADDRA2),
        .RADR3(ADDRA3),
        .RADR4(ADDRA4),
        .WADR0(ADDRD0),
        .WADR1(ADDRD1),
        .WADR2(ADDRD2),
        .WADR3(ADDRD3),
        .WADR4(ADDRD4),
        .WE(WE));
  RAMD32 #(
    .INIT(32'h00000000),
    .IS_CLK_INVERTED(1'b0)) 
    RAMA_D1
       (.CLK(WCLK),
        .I(DIA1),
        .O(DOA1),
        .RADR0(ADDRA0),
        .RADR1(ADDRA1),
        .RADR2(ADDRA2),
        .RADR3(ADDRA3),
        .RADR4(ADDRA4),
        .WADR0(ADDRD0),
        .WADR1(ADDRD1),
        .WADR2(ADDRD2),
        .WADR3(ADDRD3),
        .WADR4(ADDRD4),
        .WE(WE));
  RAMD32 #(
    .INIT(32'h00000000),
    .IS_CLK_INVERTED(1'b0)) 
    RAMB
       (.CLK(WCLK),
        .I(DIB0),
        .O(DOB0),
        .RADR0(ADDRB0),
        .RADR1(ADDRB1),
        .RADR2(ADDRB2),
        .RADR3(ADDRB3),
        .RADR4(ADDRB4),
        .WADR0(ADDRD0),
        .WADR1(ADDRD1),
        .WADR2(ADDRD2),
        .WADR3(ADDRD3),
        .WADR4(ADDRD4),
        .WE(WE));
  RAMD32 #(
    .INIT(32'h00000000),
    .IS_CLK_INVERTED(1'b0)) 
    RAMB_D1
       (.CLK(WCLK),
        .I(DIB1),
        .O(DOB1),
        .RADR0(ADDRB0),
        .RADR1(ADDRB1),
        .RADR2(ADDRB2),
        .RADR3(ADDRB3),
        .RADR4(ADDRB4),
        .WADR0(ADDRD0),
        .WADR1(ADDRD1),
        .WADR2(ADDRD2),
        .WADR3(ADDRD3),
        .WADR4(ADDRD4),
        .WE(WE));
  RAMD32 #(
    .INIT(32'h00000000),
    .IS_CLK_INVERTED(1'b0)) 
    RAMC
       (.CLK(WCLK),
        .I(DIC0),
        .O(DOC0),
        .RADR0(ADDRC0),
        .RADR1(ADDRC1),
        .RADR2(ADDRC2),
        .RADR3(ADDRC3),
        .RADR4(ADDRC4),
        .WADR0(ADDRD0),
        .WADR1(ADDRD1),
        .WADR2(ADDRD2),
        .WADR3(ADDRD3),
        .WADR4(ADDRD4),
        .WE(WE));
  RAMD32 #(
    .INIT(32'h00000000),
    .IS_CLK_INVERTED(1'b0)) 
    RAMC_D1
       (.CLK(WCLK),
        .I(DIC1),
        .O(DOC1),
        .RADR0(ADDRC0),
        .RADR1(ADDRC1),
        .RADR2(ADDRC2),
        .RADR3(ADDRC3),
        .RADR4(ADDRC4),
        .WADR0(ADDRD0),
        .WADR1(ADDRD1),
        .WADR2(ADDRD2),
        .WADR3(ADDRD3),
        .WADR4(ADDRD4),
        .WE(WE));
  RAMS32 #(
    .INIT(32'h00000000),
    .IS_CLK_INVERTED(1'b0)) 
    RAMD
       (.ADR0(ADDRD0),
        .ADR1(ADDRD1),
        .ADR2(ADDRD2),
        .ADR3(ADDRD3),
        .ADR4(ADDRD4),
        .CLK(WCLK),
        .I(DID0),
        .O(DOD0),
        .WE(WE));
  RAMS32 #(
    .INIT(32'h00000000),
    .IS_CLK_INVERTED(1'b0)) 
    RAMD_D1
       (.ADR0(ADDRD0),
        .ADR1(ADDRD1),
        .ADR2(ADDRD2),
        .ADR3(ADDRD3),
        .ADR4(ADDRD4),
        .CLK(WCLK),
        .I(DID1),
        .O(DOD1),
        .WE(WE));
endmodule

module RAM32M_HD2
   (DOA,
    DOB,
    DOC,
    DOD,
    ADDRA,
    ADDRB,
    ADDRC,
    ADDRD,
    DIA,
    DIB,
    DIC,
    DID,
    WCLK,
    WE);
  output [1:0]DOA;
  output [1:0]DOB;
  output [1:0]DOC;
  output [1:0]DOD;
  input [4:0]ADDRA;
  input [4:0]ADDRB;
  input [4:0]ADDRC;
  input [4:0]ADDRD;
  input [1:0]DIA;
  input [1:0]DIB;
  input [1:0]DIC;
  input [1:0]DID;
  input WCLK;
  input WE;

  wire ADDRA0;
  wire ADDRA1;
  wire ADDRA2;
  wire ADDRA3;
  wire ADDRA4;
  wire ADDRB0;
  wire ADDRB1;
  wire ADDRB2;
  wire ADDRB3;
  wire ADDRB4;
  wire ADDRC0;
  wire ADDRC1;
  wire ADDRC2;
  wire ADDRC3;
  wire ADDRC4;
  wire ADDRD0;
  wire ADDRD1;
  wire ADDRD2;
  wire ADDRD3;
  wire ADDRD4;
  wire DIA0;
  wire DIA1;
  wire DIB0;
  wire DIB1;
  wire DIC0;
  wire DIC1;
  wire DID0;
  wire DID1;
  wire DOA0;
  wire DOA1;
  wire DOB0;
  wire DOB1;
  wire DOC0;
  wire DOC1;
  wire DOD0;
  wire DOD1;
  wire WCLK;
  wire WE;

  assign ADDRA0 = ADDRA[0];
  assign ADDRA1 = ADDRA[1];
  assign ADDRA2 = ADDRA[2];
  assign ADDRA3 = ADDRA[3];
  assign ADDRA4 = ADDRA[4];
  assign ADDRB0 = ADDRB[0];
  assign ADDRB1 = ADDRB[1];
  assign ADDRB2 = ADDRB[2];
  assign ADDRB3 = ADDRB[3];
  assign ADDRB4 = ADDRB[4];
  assign ADDRC0 = ADDRC[0];
  assign ADDRC1 = ADDRC[1];
  assign ADDRC2 = ADDRC[2];
  assign ADDRC3 = ADDRC[3];
  assign ADDRC4 = ADDRC[4];
  assign ADDRD0 = ADDRD[0];
  assign ADDRD1 = ADDRD[1];
  assign ADDRD2 = ADDRD[2];
  assign ADDRD3 = ADDRD[3];
  assign ADDRD4 = ADDRD[4];
  assign DIA0 = DIA[0];
  assign DIA1 = DIA[1];
  assign DIB0 = DIB[0];
  assign DIB1 = DIB[1];
  assign DIC0 = DIC[0];
  assign DIC1 = DIC[1];
  assign DID0 = DID[0];
  assign DID1 = DID[1];
  assign DOA[1] = DOA1;
  assign DOA[0] = DOA0;
  assign DOB[1] = DOB1;
  assign DOB[0] = DOB0;
  assign DOC[1] = DOC1;
  assign DOC[0] = DOC0;
  assign DOD[1] = DOD1;
  assign DOD[0] = DOD0;
  RAMD32 #(
    .INIT(32'h00000000),
    .IS_CLK_INVERTED(1'b0)) 
    RAMA
       (.CLK(WCLK),
        .I(DIA0),
        .O(DOA0),
        .RADR0(ADDRA0),
        .RADR1(ADDRA1),
        .RADR2(ADDRA2),
        .RADR3(ADDRA3),
        .RADR4(ADDRA4),
        .WADR0(ADDRD0),
        .WADR1(ADDRD1),
        .WADR2(ADDRD2),
        .WADR3(ADDRD3),
        .WADR4(ADDRD4),
        .WE(WE));
  RAMD32 #(
    .INIT(32'h00000000),
    .IS_CLK_INVERTED(1'b0)) 
    RAMA_D1
       (.CLK(WCLK),
        .I(DIA1),
        .O(DOA1),
        .RADR0(ADDRA0),
        .RADR1(ADDRA1),
        .RADR2(ADDRA2),
        .RADR3(ADDRA3),
        .RADR4(ADDRA4),
        .WADR0(ADDRD0),
        .WADR1(ADDRD1),
        .WADR2(ADDRD2),
        .WADR3(ADDRD3),
        .WADR4(ADDRD4),
        .WE(WE));
  RAMD32 #(
    .INIT(32'h00000000),
    .IS_CLK_INVERTED(1'b0)) 
    RAMB
       (.CLK(WCLK),
        .I(DIB0),
        .O(DOB0),
        .RADR0(ADDRB0),
        .RADR1(ADDRB1),
        .RADR2(ADDRB2),
        .RADR3(ADDRB3),
        .RADR4(ADDRB4),
        .WADR0(ADDRD0),
        .WADR1(ADDRD1),
        .WADR2(ADDRD2),
        .WADR3(ADDRD3),
        .WADR4(ADDRD4),
        .WE(WE));
  RAMD32 #(
    .INIT(32'h00000000),
    .IS_CLK_INVERTED(1'b0)) 
    RAMB_D1
       (.CLK(WCLK),
        .I(DIB1),
        .O(DOB1),
        .RADR0(ADDRB0),
        .RADR1(ADDRB1),
        .RADR2(ADDRB2),
        .RADR3(ADDRB3),
        .RADR4(ADDRB4),
        .WADR0(ADDRD0),
        .WADR1(ADDRD1),
        .WADR2(ADDRD2),
        .WADR3(ADDRD3),
        .WADR4(ADDRD4),
        .WE(WE));
  RAMD32 #(
    .INIT(32'h00000000),
    .IS_CLK_INVERTED(1'b0)) 
    RAMC
       (.CLK(WCLK),
        .I(DIC0),
        .O(DOC0),
        .RADR0(ADDRC0),
        .RADR1(ADDRC1),
        .RADR2(ADDRC2),
        .RADR3(ADDRC3),
        .RADR4(ADDRC4),
        .WADR0(ADDRD0),
        .WADR1(ADDRD1),
        .WADR2(ADDRD2),
        .WADR3(ADDRD3),
        .WADR4(ADDRD4),
        .WE(WE));
  RAMD32 #(
    .INIT(32'h00000000),
    .IS_CLK_INVERTED(1'b0)) 
    RAMC_D1
       (.CLK(WCLK),
        .I(DIC1),
        .O(DOC1),
        .RADR0(ADDRC0),
        .RADR1(ADDRC1),
        .RADR2(ADDRC2),
        .RADR3(ADDRC3),
        .RADR4(ADDRC4),
        .WADR0(ADDRD0),
        .WADR1(ADDRD1),
        .WADR2(ADDRD2),
        .WADR3(ADDRD3),
        .WADR4(ADDRD4),
        .WE(WE));
  RAMS32 #(
    .INIT(32'h00000000),
    .IS_CLK_INVERTED(1'b0)) 
    RAMD
       (.ADR0(ADDRD0),
        .ADR1(ADDRD1),
        .ADR2(ADDRD2),
        .ADR3(ADDRD3),
        .ADR4(ADDRD4),
        .CLK(WCLK),
        .I(DID0),
        .O(DOD0),
        .WE(WE));
  RAMS32 #(
    .INIT(32'h00000000),
    .IS_CLK_INVERTED(1'b0)) 
    RAMD_D1
       (.ADR0(ADDRD0),
        .ADR1(ADDRD1),
        .ADR2(ADDRD2),
        .ADR3(ADDRD3),
        .ADR4(ADDRD4),
        .CLK(WCLK),
        .I(DID1),
        .O(DOD1),
        .WE(WE));
endmodule

module RAM32M_HD3
   (DOA,
    DOB,
    DOC,
    DOD,
    ADDRA,
    ADDRB,
    ADDRC,
    ADDRD,
    DIA,
    DIB,
    DIC,
    DID,
    WCLK,
    WE);
  output [1:0]DOA;
  output [1:0]DOB;
  output [1:0]DOC;
  output [1:0]DOD;
  input [4:0]ADDRA;
  input [4:0]ADDRB;
  input [4:0]ADDRC;
  input [4:0]ADDRD;
  input [1:0]DIA;
  input [1:0]DIB;
  input [1:0]DIC;
  input [1:0]DID;
  input WCLK;
  input WE;

  wire ADDRA0;
  wire ADDRA1;
  wire ADDRA2;
  wire ADDRA3;
  wire ADDRA4;
  wire ADDRB0;
  wire ADDRB1;
  wire ADDRB2;
  wire ADDRB3;
  wire ADDRB4;
  wire ADDRC0;
  wire ADDRC1;
  wire ADDRC2;
  wire ADDRC3;
  wire ADDRC4;
  wire ADDRD0;
  wire ADDRD1;
  wire ADDRD2;
  wire ADDRD3;
  wire ADDRD4;
  wire DIA0;
  wire DIA1;
  wire DIB0;
  wire DIB1;
  wire DIC0;
  wire DIC1;
  wire DID0;
  wire DID1;
  wire DOA0;
  wire DOA1;
  wire DOB0;
  wire DOB1;
  wire DOC0;
  wire DOC1;
  wire DOD0;
  wire DOD1;
  wire WCLK;
  wire WE;

  assign ADDRA0 = ADDRA[0];
  assign ADDRA1 = ADDRA[1];
  assign ADDRA2 = ADDRA[2];
  assign ADDRA3 = ADDRA[3];
  assign ADDRA4 = ADDRA[4];
  assign ADDRB0 = ADDRB[0];
  assign ADDRB1 = ADDRB[1];
  assign ADDRB2 = ADDRB[2];
  assign ADDRB3 = ADDRB[3];
  assign ADDRB4 = ADDRB[4];
  assign ADDRC0 = ADDRC[0];
  assign ADDRC1 = ADDRC[1];
  assign ADDRC2 = ADDRC[2];
  assign ADDRC3 = ADDRC[3];
  assign ADDRC4 = ADDRC[4];
  assign ADDRD0 = ADDRD[0];
  assign ADDRD1 = ADDRD[1];
  assign ADDRD2 = ADDRD[2];
  assign ADDRD3 = ADDRD[3];
  assign ADDRD4 = ADDRD[4];
  assign DIA0 = DIA[0];
  assign DIA1 = DIA[1];
  assign DIB0 = DIB[0];
  assign DIB1 = DIB[1];
  assign DIC0 = DIC[0];
  assign DIC1 = DIC[1];
  assign DID0 = DID[0];
  assign DID1 = DID[1];
  assign DOA[1] = DOA1;
  assign DOA[0] = DOA0;
  assign DOB[1] = DOB1;
  assign DOB[0] = DOB0;
  assign DOC[1] = DOC1;
  assign DOC[0] = DOC0;
  assign DOD[1] = DOD1;
  assign DOD[0] = DOD0;
  RAMD32 #(
    .INIT(32'h00000000),
    .IS_CLK_INVERTED(1'b0)) 
    RAMA
       (.CLK(WCLK),
        .I(DIA0),
        .O(DOA0),
        .RADR0(ADDRA0),
        .RADR1(ADDRA1),
        .RADR2(ADDRA2),
        .RADR3(ADDRA3),
        .RADR4(ADDRA4),
        .WADR0(ADDRD0),
        .WADR1(ADDRD1),
        .WADR2(ADDRD2),
        .WADR3(ADDRD3),
        .WADR4(ADDRD4),
        .WE(WE));
  RAMD32 #(
    .INIT(32'h00000000),
    .IS_CLK_INVERTED(1'b0)) 
    RAMA_D1
       (.CLK(WCLK),
        .I(DIA1),
        .O(DOA1),
        .RADR0(ADDRA0),
        .RADR1(ADDRA1),
        .RADR2(ADDRA2),
        .RADR3(ADDRA3),
        .RADR4(ADDRA4),
        .WADR0(ADDRD0),
        .WADR1(ADDRD1),
        .WADR2(ADDRD2),
        .WADR3(ADDRD3),
        .WADR4(ADDRD4),
        .WE(WE));
  RAMD32 #(
    .INIT(32'h00000000),
    .IS_CLK_INVERTED(1'b0)) 
    RAMB
       (.CLK(WCLK),
        .I(DIB0),
        .O(DOB0),
        .RADR0(ADDRB0),
        .RADR1(ADDRB1),
        .RADR2(ADDRB2),
        .RADR3(ADDRB3),
        .RADR4(ADDRB4),
        .WADR0(ADDRD0),
        .WADR1(ADDRD1),
        .WADR2(ADDRD2),
        .WADR3(ADDRD3),
        .WADR4(ADDRD4),
        .WE(WE));
  RAMD32 #(
    .INIT(32'h00000000),
    .IS_CLK_INVERTED(1'b0)) 
    RAMB_D1
       (.CLK(WCLK),
        .I(DIB1),
        .O(DOB1),
        .RADR0(ADDRB0),
        .RADR1(ADDRB1),
        .RADR2(ADDRB2),
        .RADR3(ADDRB3),
        .RADR4(ADDRB4),
        .WADR0(ADDRD0),
        .WADR1(ADDRD1),
        .WADR2(ADDRD2),
        .WADR3(ADDRD3),
        .WADR4(ADDRD4),
        .WE(WE));
  RAMD32 #(
    .INIT(32'h00000000),
    .IS_CLK_INVERTED(1'b0)) 
    RAMC
       (.CLK(WCLK),
        .I(DIC0),
        .O(DOC0),
        .RADR0(ADDRC0),
        .RADR1(ADDRC1),
        .RADR2(ADDRC2),
        .RADR3(ADDRC3),
        .RADR4(ADDRC4),
        .WADR0(ADDRD0),
        .WADR1(ADDRD1),
        .WADR2(ADDRD2),
        .WADR3(ADDRD3),
        .WADR4(ADDRD4),
        .WE(WE));
  RAMD32 #(
    .INIT(32'h00000000),
    .IS_CLK_INVERTED(1'b0)) 
    RAMC_D1
       (.CLK(WCLK),
        .I(DIC1),
        .O(DOC1),
        .RADR0(ADDRC0),
        .RADR1(ADDRC1),
        .RADR2(ADDRC2),
        .RADR3(ADDRC3),
        .RADR4(ADDRC4),
        .WADR0(ADDRD0),
        .WADR1(ADDRD1),
        .WADR2(ADDRD2),
        .WADR3(ADDRD3),
        .WADR4(ADDRD4),
        .WE(WE));
  RAMS32 #(
    .INIT(32'h00000000),
    .IS_CLK_INVERTED(1'b0)) 
    RAMD
       (.ADR0(ADDRD0),
        .ADR1(ADDRD1),
        .ADR2(ADDRD2),
        .ADR3(ADDRD3),
        .ADR4(ADDRD4),
        .CLK(WCLK),
        .I(DID0),
        .O(DOD0),
        .WE(WE));
  RAMS32 #(
    .INIT(32'h00000000),
    .IS_CLK_INVERTED(1'b0)) 
    RAMD_D1
       (.ADR0(ADDRD0),
        .ADR1(ADDRD1),
        .ADR2(ADDRD2),
        .ADR3(ADDRD3),
        .ADR4(ADDRD4),
        .CLK(WCLK),
        .I(DID1),
        .O(DOD1),
        .WE(WE));
endmodule

module RAM32M_HD4
   (DOA,
    DOB,
    DOC,
    DOD,
    ADDRA,
    ADDRB,
    ADDRC,
    ADDRD,
    DIA,
    DIB,
    DIC,
    DID,
    WCLK,
    WE);
  output [1:0]DOA;
  output [1:0]DOB;
  output [1:0]DOC;
  output [1:0]DOD;
  input [4:0]ADDRA;
  input [4:0]ADDRB;
  input [4:0]ADDRC;
  input [4:0]ADDRD;
  input [1:0]DIA;
  input [1:0]DIB;
  input [1:0]DIC;
  input [1:0]DID;
  input WCLK;
  input WE;

  wire ADDRA0;
  wire ADDRA1;
  wire ADDRA2;
  wire ADDRA3;
  wire ADDRA4;
  wire ADDRB0;
  wire ADDRB1;
  wire ADDRB2;
  wire ADDRB3;
  wire ADDRB4;
  wire ADDRC0;
  wire ADDRC1;
  wire ADDRC2;
  wire ADDRC3;
  wire ADDRC4;
  wire ADDRD0;
  wire ADDRD1;
  wire ADDRD2;
  wire ADDRD3;
  wire ADDRD4;
  wire DIA0;
  wire DIA1;
  wire DIB0;
  wire DIB1;
  wire DIC0;
  wire DIC1;
  wire DID0;
  wire DID1;
  wire DOA0;
  wire DOA1;
  wire DOB0;
  wire DOB1;
  wire DOC0;
  wire DOC1;
  wire DOD0;
  wire DOD1;
  wire WCLK;
  wire WE;

  assign ADDRA0 = ADDRA[0];
  assign ADDRA1 = ADDRA[1];
  assign ADDRA2 = ADDRA[2];
  assign ADDRA3 = ADDRA[3];
  assign ADDRA4 = ADDRA[4];
  assign ADDRB0 = ADDRB[0];
  assign ADDRB1 = ADDRB[1];
  assign ADDRB2 = ADDRB[2];
  assign ADDRB3 = ADDRB[3];
  assign ADDRB4 = ADDRB[4];
  assign ADDRC0 = ADDRC[0];
  assign ADDRC1 = ADDRC[1];
  assign ADDRC2 = ADDRC[2];
  assign ADDRC3 = ADDRC[3];
  assign ADDRC4 = ADDRC[4];
  assign ADDRD0 = ADDRD[0];
  assign ADDRD1 = ADDRD[1];
  assign ADDRD2 = ADDRD[2];
  assign ADDRD3 = ADDRD[3];
  assign ADDRD4 = ADDRD[4];
  assign DIA0 = DIA[0];
  assign DIA1 = DIA[1];
  assign DIB0 = DIB[0];
  assign DIB1 = DIB[1];
  assign DIC0 = DIC[0];
  assign DIC1 = DIC[1];
  assign DID0 = DID[0];
  assign DID1 = DID[1];
  assign DOA[1] = DOA1;
  assign DOA[0] = DOA0;
  assign DOB[1] = DOB1;
  assign DOB[0] = DOB0;
  assign DOC[1] = DOC1;
  assign DOC[0] = DOC0;
  assign DOD[1] = DOD1;
  assign DOD[0] = DOD0;
  RAMD32 #(
    .INIT(32'h00000000),
    .IS_CLK_INVERTED(1'b0)) 
    RAMA
       (.CLK(WCLK),
        .I(DIA0),
        .O(DOA0),
        .RADR0(ADDRA0),
        .RADR1(ADDRA1),
        .RADR2(ADDRA2),
        .RADR3(ADDRA3),
        .RADR4(ADDRA4),
        .WADR0(ADDRD0),
        .WADR1(ADDRD1),
        .WADR2(ADDRD2),
        .WADR3(ADDRD3),
        .WADR4(ADDRD4),
        .WE(WE));
  RAMD32 #(
    .INIT(32'h00000000),
    .IS_CLK_INVERTED(1'b0)) 
    RAMA_D1
       (.CLK(WCLK),
        .I(DIA1),
        .O(DOA1),
        .RADR0(ADDRA0),
        .RADR1(ADDRA1),
        .RADR2(ADDRA2),
        .RADR3(ADDRA3),
        .RADR4(ADDRA4),
        .WADR0(ADDRD0),
        .WADR1(ADDRD1),
        .WADR2(ADDRD2),
        .WADR3(ADDRD3),
        .WADR4(ADDRD4),
        .WE(WE));
  RAMD32 #(
    .INIT(32'h00000000),
    .IS_CLK_INVERTED(1'b0)) 
    RAMB
       (.CLK(WCLK),
        .I(DIB0),
        .O(DOB0),
        .RADR0(ADDRB0),
        .RADR1(ADDRB1),
        .RADR2(ADDRB2),
        .RADR3(ADDRB3),
        .RADR4(ADDRB4),
        .WADR0(ADDRD0),
        .WADR1(ADDRD1),
        .WADR2(ADDRD2),
        .WADR3(ADDRD3),
        .WADR4(ADDRD4),
        .WE(WE));
  RAMD32 #(
    .INIT(32'h00000000),
    .IS_CLK_INVERTED(1'b0)) 
    RAMB_D1
       (.CLK(WCLK),
        .I(DIB1),
        .O(DOB1),
        .RADR0(ADDRB0),
        .RADR1(ADDRB1),
        .RADR2(ADDRB2),
        .RADR3(ADDRB3),
        .RADR4(ADDRB4),
        .WADR0(ADDRD0),
        .WADR1(ADDRD1),
        .WADR2(ADDRD2),
        .WADR3(ADDRD3),
        .WADR4(ADDRD4),
        .WE(WE));
  RAMD32 #(
    .INIT(32'h00000000),
    .IS_CLK_INVERTED(1'b0)) 
    RAMC
       (.CLK(WCLK),
        .I(DIC0),
        .O(DOC0),
        .RADR0(ADDRC0),
        .RADR1(ADDRC1),
        .RADR2(ADDRC2),
        .RADR3(ADDRC3),
        .RADR4(ADDRC4),
        .WADR0(ADDRD0),
        .WADR1(ADDRD1),
        .WADR2(ADDRD2),
        .WADR3(ADDRD3),
        .WADR4(ADDRD4),
        .WE(WE));
  RAMD32 #(
    .INIT(32'h00000000),
    .IS_CLK_INVERTED(1'b0)) 
    RAMC_D1
       (.CLK(WCLK),
        .I(DIC1),
        .O(DOC1),
        .RADR0(ADDRC0),
        .RADR1(ADDRC1),
        .RADR2(ADDRC2),
        .RADR3(ADDRC3),
        .RADR4(ADDRC4),
        .WADR0(ADDRD0),
        .WADR1(ADDRD1),
        .WADR2(ADDRD2),
        .WADR3(ADDRD3),
        .WADR4(ADDRD4),
        .WE(WE));
  RAMS32 #(
    .INIT(32'h00000000),
    .IS_CLK_INVERTED(1'b0)) 
    RAMD
       (.ADR0(ADDRD0),
        .ADR1(ADDRD1),
        .ADR2(ADDRD2),
        .ADR3(ADDRD3),
        .ADR4(ADDRD4),
        .CLK(WCLK),
        .I(DID0),
        .O(DOD0),
        .WE(WE));
  RAMS32 #(
    .INIT(32'h00000000),
    .IS_CLK_INVERTED(1'b0)) 
    RAMD_D1
       (.ADR0(ADDRD0),
        .ADR1(ADDRD1),
        .ADR2(ADDRD2),
        .ADR3(ADDRD3),
        .ADR4(ADDRD4),
        .CLK(WCLK),
        .I(DID1),
        .O(DOD1),
        .WE(WE));
endmodule

module RAM32M_HD5
   (DOA,
    DOB,
    DOC,
    DOD,
    ADDRA,
    ADDRB,
    ADDRC,
    ADDRD,
    DIA,
    DIB,
    DIC,
    DID,
    WCLK,
    WE);
  output [1:0]DOA;
  output [1:0]DOB;
  output [1:0]DOC;
  output [1:0]DOD;
  input [4:0]ADDRA;
  input [4:0]ADDRB;
  input [4:0]ADDRC;
  input [4:0]ADDRD;
  input [1:0]DIA;
  input [1:0]DIB;
  input [1:0]DIC;
  input [1:0]DID;
  input WCLK;
  input WE;

  wire ADDRA0;
  wire ADDRA1;
  wire ADDRA2;
  wire ADDRA3;
  wire ADDRA4;
  wire ADDRB0;
  wire ADDRB1;
  wire ADDRB2;
  wire ADDRB3;
  wire ADDRB4;
  wire ADDRC0;
  wire ADDRC1;
  wire ADDRC2;
  wire ADDRC3;
  wire ADDRC4;
  wire ADDRD0;
  wire ADDRD1;
  wire ADDRD2;
  wire ADDRD3;
  wire ADDRD4;
  wire DIA0;
  wire DIA1;
  wire DIB0;
  wire DIB1;
  wire DIC0;
  wire DIC1;
  wire DID0;
  wire DID1;
  wire DOA0;
  wire DOA1;
  wire DOB0;
  wire DOB1;
  wire DOC0;
  wire DOC1;
  wire DOD0;
  wire DOD1;
  wire WCLK;
  wire WE;

  assign ADDRA0 = ADDRA[0];
  assign ADDRA1 = ADDRA[1];
  assign ADDRA2 = ADDRA[2];
  assign ADDRA3 = ADDRA[3];
  assign ADDRA4 = ADDRA[4];
  assign ADDRB0 = ADDRB[0];
  assign ADDRB1 = ADDRB[1];
  assign ADDRB2 = ADDRB[2];
  assign ADDRB3 = ADDRB[3];
  assign ADDRB4 = ADDRB[4];
  assign ADDRC0 = ADDRC[0];
  assign ADDRC1 = ADDRC[1];
  assign ADDRC2 = ADDRC[2];
  assign ADDRC3 = ADDRC[3];
  assign ADDRC4 = ADDRC[4];
  assign ADDRD0 = ADDRD[0];
  assign ADDRD1 = ADDRD[1];
  assign ADDRD2 = ADDRD[2];
  assign ADDRD3 = ADDRD[3];
  assign ADDRD4 = ADDRD[4];
  assign DIA0 = DIA[0];
  assign DIA1 = DIA[1];
  assign DIB0 = DIB[0];
  assign DIB1 = DIB[1];
  assign DIC0 = DIC[0];
  assign DIC1 = DIC[1];
  assign DID0 = DID[0];
  assign DID1 = DID[1];
  assign DOA[1] = DOA1;
  assign DOA[0] = DOA0;
  assign DOB[1] = DOB1;
  assign DOB[0] = DOB0;
  assign DOC[1] = DOC1;
  assign DOC[0] = DOC0;
  assign DOD[1] = DOD1;
  assign DOD[0] = DOD0;
  RAMD32 #(
    .INIT(32'h00000000),
    .IS_CLK_INVERTED(1'b0)) 
    RAMA
       (.CLK(WCLK),
        .I(DIA0),
        .O(DOA0),
        .RADR0(ADDRA0),
        .RADR1(ADDRA1),
        .RADR2(ADDRA2),
        .RADR3(ADDRA3),
        .RADR4(ADDRA4),
        .WADR0(ADDRD0),
        .WADR1(ADDRD1),
        .WADR2(ADDRD2),
        .WADR3(ADDRD3),
        .WADR4(ADDRD4),
        .WE(WE));
  RAMD32 #(
    .INIT(32'h00000000),
    .IS_CLK_INVERTED(1'b0)) 
    RAMA_D1
       (.CLK(WCLK),
        .I(DIA1),
        .O(DOA1),
        .RADR0(ADDRA0),
        .RADR1(ADDRA1),
        .RADR2(ADDRA2),
        .RADR3(ADDRA3),
        .RADR4(ADDRA4),
        .WADR0(ADDRD0),
        .WADR1(ADDRD1),
        .WADR2(ADDRD2),
        .WADR3(ADDRD3),
        .WADR4(ADDRD4),
        .WE(WE));
  RAMD32 #(
    .INIT(32'h00000000),
    .IS_CLK_INVERTED(1'b0)) 
    RAMB
       (.CLK(WCLK),
        .I(DIB0),
        .O(DOB0),
        .RADR0(ADDRB0),
        .RADR1(ADDRB1),
        .RADR2(ADDRB2),
        .RADR3(ADDRB3),
        .RADR4(ADDRB4),
        .WADR0(ADDRD0),
        .WADR1(ADDRD1),
        .WADR2(ADDRD2),
        .WADR3(ADDRD3),
        .WADR4(ADDRD4),
        .WE(WE));
  RAMD32 #(
    .INIT(32'h00000000),
    .IS_CLK_INVERTED(1'b0)) 
    RAMB_D1
       (.CLK(WCLK),
        .I(DIB1),
        .O(DOB1),
        .RADR0(ADDRB0),
        .RADR1(ADDRB1),
        .RADR2(ADDRB2),
        .RADR3(ADDRB3),
        .RADR4(ADDRB4),
        .WADR0(ADDRD0),
        .WADR1(ADDRD1),
        .WADR2(ADDRD2),
        .WADR3(ADDRD3),
        .WADR4(ADDRD4),
        .WE(WE));
  RAMD32 #(
    .INIT(32'h00000000),
    .IS_CLK_INVERTED(1'b0)) 
    RAMC
       (.CLK(WCLK),
        .I(DIC0),
        .O(DOC0),
        .RADR0(ADDRC0),
        .RADR1(ADDRC1),
        .RADR2(ADDRC2),
        .RADR3(ADDRC3),
        .RADR4(ADDRC4),
        .WADR0(ADDRD0),
        .WADR1(ADDRD1),
        .WADR2(ADDRD2),
        .WADR3(ADDRD3),
        .WADR4(ADDRD4),
        .WE(WE));
  RAMD32 #(
    .INIT(32'h00000000),
    .IS_CLK_INVERTED(1'b0)) 
    RAMC_D1
       (.CLK(WCLK),
        .I(DIC1),
        .O(DOC1),
        .RADR0(ADDRC0),
        .RADR1(ADDRC1),
        .RADR2(ADDRC2),
        .RADR3(ADDRC3),
        .RADR4(ADDRC4),
        .WADR0(ADDRD0),
        .WADR1(ADDRD1),
        .WADR2(ADDRD2),
        .WADR3(ADDRD3),
        .WADR4(ADDRD4),
        .WE(WE));
  RAMS32 #(
    .INIT(32'h00000000),
    .IS_CLK_INVERTED(1'b0)) 
    RAMD
       (.ADR0(ADDRD0),
        .ADR1(ADDRD1),
        .ADR2(ADDRD2),
        .ADR3(ADDRD3),
        .ADR4(ADDRD4),
        .CLK(WCLK),
        .I(DID0),
        .O(DOD0),
        .WE(WE));
  RAMS32 #(
    .INIT(32'h00000000),
    .IS_CLK_INVERTED(1'b0)) 
    RAMD_D1
       (.ADR0(ADDRD0),
        .ADR1(ADDRD1),
        .ADR2(ADDRD2),
        .ADR3(ADDRD3),
        .ADR4(ADDRD4),
        .CLK(WCLK),
        .I(DID1),
        .O(DOD1),
        .WE(WE));
endmodule

module RAM32X1S_UNIQ_BASE_
   (O,
    A0,
    A1,
    A2,
    A3,
    A4,
    D,
    WCLK,
    WE);
  output O;
  input A0;
  input A1;
  input A2;
  input A3;
  input A4;
  input D;
  input WCLK;
  input WE;

  wire A0;
  wire A1;
  wire A2;
  wire A3;
  wire A4;
  wire D;
  wire O;
  wire WCLK;
  wire WE;

  RAMS32 #(
    .INIT(32'h0000006A),
    .IS_CLK_INVERTED(1'b0)) 
    SP
       (.ADR0(A0),
        .ADR1(A1),
        .ADR2(A2),
        .ADR3(A3),
        .ADR4(A4),
        .CLK(WCLK),
        .I(D),
        .O(O),
        .WE(WE));
endmodule

module RAM32X1S_HD10
   (O,
    A0,
    A1,
    A2,
    A3,
    A4,
    D,
    WCLK,
    WE);
  output O;
  input A0;
  input A1;
  input A2;
  input A3;
  input A4;
  input D;
  input WCLK;
  input WE;

  wire A0;
  wire A1;
  wire A2;
  wire A3;
  wire A4;
  wire D;
  wire O;
  wire WCLK;
  wire WE;

  RAMS32 #(
    .INIT(32'h00000000),
    .IS_CLK_INVERTED(1'b0)) 
    SP
       (.ADR0(A0),
        .ADR1(A1),
        .ADR2(A2),
        .ADR3(A3),
        .ADR4(A4),
        .CLK(WCLK),
        .I(D),
        .O(O),
        .WE(WE));
endmodule

module RAM32X1S_HD11
   (O,
    A0,
    A1,
    A2,
    A3,
    A4,
    D,
    WCLK,
    WE);
  output O;
  input A0;
  input A1;
  input A2;
  input A3;
  input A4;
  input D;
  input WCLK;
  input WE;

  wire A0;
  wire A1;
  wire A2;
  wire A3;
  wire A4;
  wire D;
  wire O;
  wire WCLK;
  wire WE;

  RAMS32 #(
    .INIT(32'h00000000),
    .IS_CLK_INVERTED(1'b0)) 
    SP
       (.ADR0(A0),
        .ADR1(A1),
        .ADR2(A2),
        .ADR3(A3),
        .ADR4(A4),
        .CLK(WCLK),
        .I(D),
        .O(O),
        .WE(WE));
endmodule

module RAM32X1S_HD12
   (O,
    A0,
    A1,
    A2,
    A3,
    A4,
    D,
    WCLK,
    WE);
  output O;
  input A0;
  input A1;
  input A2;
  input A3;
  input A4;
  input D;
  input WCLK;
  input WE;

  wire A0;
  wire A1;
  wire A2;
  wire A3;
  wire A4;
  wire D;
  wire O;
  wire WCLK;
  wire WE;

  RAMS32 #(
    .INIT(32'h00000033),
    .IS_CLK_INVERTED(1'b0)) 
    SP
       (.ADR0(A0),
        .ADR1(A1),
        .ADR2(A2),
        .ADR3(A3),
        .ADR4(A4),
        .CLK(WCLK),
        .I(D),
        .O(O),
        .WE(WE));
endmodule

module RAM32X1S_HD13
   (O,
    A0,
    A1,
    A2,
    A3,
    A4,
    D,
    WCLK,
    WE);
  output O;
  input A0;
  input A1;
  input A2;
  input A3;
  input A4;
  input D;
  input WCLK;
  input WE;

  wire A0;
  wire A1;
  wire A2;
  wire A3;
  wire A4;
  wire D;
  wire O;
  wire WCLK;
  wire WE;

  RAMS32 #(
    .INIT(32'h0000003C),
    .IS_CLK_INVERTED(1'b0)) 
    SP
       (.ADR0(A0),
        .ADR1(A1),
        .ADR2(A2),
        .ADR3(A3),
        .ADR4(A4),
        .CLK(WCLK),
        .I(D),
        .O(O),
        .WE(WE));
endmodule

module RAM32X1S_HD14
   (O,
    A0,
    A1,
    A2,
    A3,
    A4,
    D,
    WCLK,
    WE);
  output O;
  input A0;
  input A1;
  input A2;
  input A3;
  input A4;
  input D;
  input WCLK;
  input WE;

  wire A0;
  wire A1;
  wire A2;
  wire A3;
  wire A4;
  wire D;
  wire O;
  wire WCLK;
  wire WE;

  RAMS32 #(
    .INIT(32'h000000FF),
    .IS_CLK_INVERTED(1'b0)) 
    SP
       (.ADR0(A0),
        .ADR1(A1),
        .ADR2(A2),
        .ADR3(A3),
        .ADR4(A4),
        .CLK(WCLK),
        .I(D),
        .O(O),
        .WE(WE));
endmodule

module RAM32X1S_HD15
   (O,
    A0,
    A1,
    A2,
    A3,
    A4,
    D,
    WCLK,
    WE);
  output O;
  input A0;
  input A1;
  input A2;
  input A3;
  input A4;
  input D;
  input WCLK;
  input WE;

  wire A0;
  wire A1;
  wire A2;
  wire A3;
  wire A4;
  wire D;
  wire O;
  wire WCLK;
  wire WE;

  RAMS32 #(
    .INIT(32'h00000000),
    .IS_CLK_INVERTED(1'b0)) 
    SP
       (.ADR0(A0),
        .ADR1(A1),
        .ADR2(A2),
        .ADR3(A3),
        .ADR4(A4),
        .CLK(WCLK),
        .I(D),
        .O(O),
        .WE(WE));
endmodule

module RAM32X1S_HD16
   (O,
    A0,
    A1,
    A2,
    A3,
    A4,
    D,
    WCLK,
    WE);
  output O;
  input A0;
  input A1;
  input A2;
  input A3;
  input A4;
  input D;
  input WCLK;
  input WE;

  wire A0;
  wire A1;
  wire A2;
  wire A3;
  wire A4;
  wire D;
  wire O;
  wire WCLK;
  wire WE;

  RAMS32 #(
    .INIT(32'h00000000),
    .IS_CLK_INVERTED(1'b0)) 
    SP
       (.ADR0(A0),
        .ADR1(A1),
        .ADR2(A2),
        .ADR3(A3),
        .ADR4(A4),
        .CLK(WCLK),
        .I(D),
        .O(O),
        .WE(WE));
endmodule

module RAM32X1S_HD17
   (O,
    A0,
    A1,
    A2,
    A3,
    A4,
    D,
    WCLK,
    WE);
  output O;
  input A0;
  input A1;
  input A2;
  input A3;
  input A4;
  input D;
  input WCLK;
  input WE;

  wire A0;
  wire A1;
  wire A2;
  wire A3;
  wire A4;
  wire D;
  wire O;
  wire WCLK;
  wire WE;

  RAMS32 #(
    .INIT(32'h00000000),
    .IS_CLK_INVERTED(1'b0)) 
    SP
       (.ADR0(A0),
        .ADR1(A1),
        .ADR2(A2),
        .ADR3(A3),
        .ADR4(A4),
        .CLK(WCLK),
        .I(D),
        .O(O),
        .WE(WE));
endmodule

module RAM32X1S_HD18
   (O,
    A0,
    A1,
    A2,
    A3,
    A4,
    D,
    WCLK,
    WE);
  output O;
  input A0;
  input A1;
  input A2;
  input A3;
  input A4;
  input D;
  input WCLK;
  input WE;

  wire A0;
  wire A1;
  wire A2;
  wire A3;
  wire A4;
  wire D;
  wire O;
  wire WCLK;
  wire WE;

  RAMS32 #(
    .INIT(32'h00000000),
    .IS_CLK_INVERTED(1'b0)) 
    SP
       (.ADR0(A0),
        .ADR1(A1),
        .ADR2(A2),
        .ADR3(A3),
        .ADR4(A4),
        .CLK(WCLK),
        .I(D),
        .O(O),
        .WE(WE));
endmodule

module RAM32X1S_HD19
   (O,
    A0,
    A1,
    A2,
    A3,
    A4,
    D,
    WCLK,
    WE);
  output O;
  input A0;
  input A1;
  input A2;
  input A3;
  input A4;
  input D;
  input WCLK;
  input WE;

  wire A0;
  wire A1;
  wire A2;
  wire A3;
  wire A4;
  wire D;
  wire O;
  wire WCLK;
  wire WE;

  RAMS32 #(
    .INIT(32'h00000000),
    .IS_CLK_INVERTED(1'b0)) 
    SP
       (.ADR0(A0),
        .ADR1(A1),
        .ADR2(A2),
        .ADR3(A3),
        .ADR4(A4),
        .CLK(WCLK),
        .I(D),
        .O(O),
        .WE(WE));
endmodule

module RAM32X1S_HD20
   (O,
    A0,
    A1,
    A2,
    A3,
    A4,
    D,
    WCLK,
    WE);
  output O;
  input A0;
  input A1;
  input A2;
  input A3;
  input A4;
  input D;
  input WCLK;
  input WE;

  wire A0;
  wire A1;
  wire A2;
  wire A3;
  wire A4;
  wire D;
  wire O;
  wire WCLK;
  wire WE;

  RAMS32 #(
    .INIT(32'h00000000),
    .IS_CLK_INVERTED(1'b0)) 
    SP
       (.ADR0(A0),
        .ADR1(A1),
        .ADR2(A2),
        .ADR3(A3),
        .ADR4(A4),
        .CLK(WCLK),
        .I(D),
        .O(O),
        .WE(WE));
endmodule

module RAM32X1S_HD6
   (O,
    A0,
    A1,
    A2,
    A3,
    A4,
    D,
    WCLK,
    WE);
  output O;
  input A0;
  input A1;
  input A2;
  input A3;
  input A4;
  input D;
  input WCLK;
  input WE;

  wire A0;
  wire A1;
  wire A2;
  wire A3;
  wire A4;
  wire D;
  wire O;
  wire WCLK;
  wire WE;

  RAMS32 #(
    .INIT(32'h00000000),
    .IS_CLK_INVERTED(1'b0)) 
    SP
       (.ADR0(A0),
        .ADR1(A1),
        .ADR2(A2),
        .ADR3(A3),
        .ADR4(A4),
        .CLK(WCLK),
        .I(D),
        .O(O),
        .WE(WE));
endmodule

module RAM32X1S_HD7
   (O,
    A0,
    A1,
    A2,
    A3,
    A4,
    D,
    WCLK,
    WE);
  output O;
  input A0;
  input A1;
  input A2;
  input A3;
  input A4;
  input D;
  input WCLK;
  input WE;

  wire A0;
  wire A1;
  wire A2;
  wire A3;
  wire A4;
  wire D;
  wire O;
  wire WCLK;
  wire WE;

  RAMS32 #(
    .INIT(32'h00000000),
    .IS_CLK_INVERTED(1'b0)) 
    SP
       (.ADR0(A0),
        .ADR1(A1),
        .ADR2(A2),
        .ADR3(A3),
        .ADR4(A4),
        .CLK(WCLK),
        .I(D),
        .O(O),
        .WE(WE));
endmodule

module RAM32X1S_HD8
   (O,
    A0,
    A1,
    A2,
    A3,
    A4,
    D,
    WCLK,
    WE);
  output O;
  input A0;
  input A1;
  input A2;
  input A3;
  input A4;
  input D;
  input WCLK;
  input WE;

  wire A0;
  wire A1;
  wire A2;
  wire A3;
  wire A4;
  wire D;
  wire O;
  wire WCLK;
  wire WE;

  RAMS32 #(
    .INIT(32'h00000000),
    .IS_CLK_INVERTED(1'b0)) 
    SP
       (.ADR0(A0),
        .ADR1(A1),
        .ADR2(A2),
        .ADR3(A3),
        .ADR4(A4),
        .CLK(WCLK),
        .I(D),
        .O(O),
        .WE(WE));
endmodule

module RAM32X1S_HD9
   (O,
    A0,
    A1,
    A2,
    A3,
    A4,
    D,
    WCLK,
    WE);
  output O;
  input A0;
  input A1;
  input A2;
  input A3;
  input A4;
  input D;
  input WCLK;
  input WE;

  wire A0;
  wire A1;
  wire A2;
  wire A3;
  wire A4;
  wire D;
  wire O;
  wire WCLK;
  wire WE;

  RAMS32 #(
    .INIT(32'h00000000),
    .IS_CLK_INVERTED(1'b0)) 
    SP
       (.ADR0(A0),
        .ADR1(A1),
        .ADR2(A2),
        .ADR3(A3),
        .ADR4(A4),
        .CLK(WCLK),
        .I(D),
        .O(O),
        .WE(WE));
endmodule

module Bloc_Reg
   (\cat[0] ,
    RD2,
    \cat[0]_0 ,
    data0,
    rd1,
    O,
    \iesire_num_reg[15] ,
    sw_IBUF,
    S,
    \PC_out_reg_rep[3] ,
    \PC_out_reg_rep[3]_0 ,
    \PC_out_reg_rep[3]_1 ,
    clk_IBUF_BUFG,
    led_OBUF,
    wd,
    Instr,
    Q);
  output \cat[0] ;
  output [15:0]RD2;
  output \cat[0]_0 ;
  output [15:0]data0;
  output [15:0]rd1;
  input [1:0]O;
  input \iesire_num_reg[15] ;
  input [1:0]sw_IBUF;
  input [3:0]S;
  input [3:0]\PC_out_reg_rep[3] ;
  input [3:0]\PC_out_reg_rep[3]_0 ;
  input [3:0]\PC_out_reg_rep[3]_1 ;
  input clk_IBUF_BUFG;
  input [0:0]led_OBUF;
  input [15:0]wd;
  input [5:0]Instr;
  input [2:0]Q;

  wire [5:0]Instr;
  wire [1:0]O;
  wire [3:0]\PC_out_reg_rep[3] ;
  wire [3:0]\PC_out_reg_rep[3]_0 ;
  wire [3:0]\PC_out_reg_rep[3]_1 ;
  wire [2:0]Q;
  wire RAM_reg_0_31_0_0_i_6_n_0;
  wire RAM_reg_0_31_0_0_i_7_n_0;
  wire [15:0]RD2;
  wire [3:0]S;
  wire \cat[0] ;
  wire \cat[0]_0 ;
  wire clk_IBUF_BUFG;
  wire [15:0]data0;
  wire \iesire_num_reg[15] ;
  wire [0:0]led_OBUF;
  wire [15:0]rd1;
  wire reg_file_reg_r1_0_7_6_11_i_7_n_0;
  wire [1:0]sw_IBUF;
  wire [15:0]wd;
  wire [2:0]NLW_RAM_reg_0_31_0_0_i_6_CO_UNCONNECTED;
  wire [2:0]NLW_RAM_reg_0_31_0_0_i_7_CO_UNCONNECTED;
  wire [1:0]NLW_reg_file_reg_r1_0_7_0_5_DOD_UNCONNECTED;
  wire [1:0]NLW_reg_file_reg_r1_0_7_12_15_DOC_UNCONNECTED;
  wire [1:0]NLW_reg_file_reg_r1_0_7_12_15_DOD_UNCONNECTED;
  wire [3:0]NLW_reg_file_reg_r1_0_7_12_15_i_5_CO_UNCONNECTED;
  wire [1:0]NLW_reg_file_reg_r1_0_7_6_11_DOD_UNCONNECTED;
  wire [2:0]NLW_reg_file_reg_r1_0_7_6_11_i_7_CO_UNCONNECTED;
  wire [1:0]NLW_reg_file_reg_r2_0_7_0_5_DOD_UNCONNECTED;
  wire [1:0]NLW_reg_file_reg_r2_0_7_12_15_DOC_UNCONNECTED;
  wire [1:0]NLW_reg_file_reg_r2_0_7_12_15_DOD_UNCONNECTED;
  wire [1:0]NLW_reg_file_reg_r2_0_7_6_11_DOD_UNCONNECTED;

  CARRY4 RAM_reg_0_31_0_0_i_6
       (.CI(1'b0),
        .CO({RAM_reg_0_31_0_0_i_6_n_0,NLW_RAM_reg_0_31_0_0_i_6_CO_UNCONNECTED[2:0]}),
        .CYINIT(1'b0),
        .DI(rd1[3:0]),
        .O(data0[3:0]),
        .S(S));
  CARRY4 RAM_reg_0_31_0_0_i_7
       (.CI(RAM_reg_0_31_0_0_i_6_n_0),
        .CO({RAM_reg_0_31_0_0_i_7_n_0,NLW_RAM_reg_0_31_0_0_i_7_CO_UNCONNECTED[2:0]}),
        .CYINIT(1'b0),
        .DI(rd1[7:4]),
        .O(data0[7:4]),
        .S(\PC_out_reg_rep[3] ));
  LUT5 #(
    .INIT(32'hA0C00000)) 
    \cat_OBUF[6]_inst_i_18 
       (.I0(RD2[2]),
        .I1(O[1]),
        .I2(\iesire_num_reg[15] ),
        .I3(sw_IBUF[1]),
        .I4(sw_IBUF[0]),
        .O(\cat[0] ));
  LUT5 #(
    .INIT(32'hA0C00000)) 
    \cat_OBUF[6]_inst_i_30 
       (.I0(RD2[1]),
        .I1(O[0]),
        .I2(\iesire_num_reg[15] ),
        .I3(sw_IBUF[1]),
        .I4(sw_IBUF[0]),
        .O(\cat[0]_0 ));
  (* INIT_A = "64'h0000000000000000" *) 
  (* INIT_B = "64'h0000000000000000" *) 
  (* INIT_C = "64'h0000000000000000" *) 
  (* INIT_D = "64'h0000000000000000" *) 
  (* METHODOLOGY_DRC_VIOS = "" *) 
  RAM32M_UNIQ_BASE_ reg_file_reg_r1_0_7_0_5
       (.ADDRA({1'b0,1'b0,Instr[5:3]}),
        .ADDRB({1'b0,1'b0,Instr[5:3]}),
        .ADDRC({1'b0,1'b0,Instr[5:3]}),
        .ADDRD({1'b0,1'b0,Q}),
        .DIA(wd[1:0]),
        .DIB(wd[3:2]),
        .DIC(wd[5:4]),
        .DID({1'b0,1'b0}),
        .DOA(rd1[1:0]),
        .DOB(rd1[3:2]),
        .DOC(rd1[5:4]),
        .DOD(NLW_reg_file_reg_r1_0_7_0_5_DOD_UNCONNECTED[1:0]),
        .WCLK(clk_IBUF_BUFG),
        .WE(led_OBUF));
  (* INIT_A = "64'h0000000000000000" *) 
  (* INIT_B = "64'h0000000000000000" *) 
  (* INIT_C = "64'h0000000000000000" *) 
  (* INIT_D = "64'h0000000000000000" *) 
  (* METHODOLOGY_DRC_VIOS = "" *) 
  RAM32M_HD1 reg_file_reg_r1_0_7_12_15
       (.ADDRA({1'b0,1'b0,Instr[5:3]}),
        .ADDRB({1'b0,1'b0,Instr[5:3]}),
        .ADDRC({1'b0,1'b0,Instr[5:3]}),
        .ADDRD({1'b0,1'b0,Q}),
        .DIA(wd[13:12]),
        .DIB(wd[15:14]),
        .DIC({1'b0,1'b0}),
        .DID({1'b0,1'b0}),
        .DOA(rd1[13:12]),
        .DOB(rd1[15:14]),
        .DOC(NLW_reg_file_reg_r1_0_7_12_15_DOC_UNCONNECTED[1:0]),
        .DOD(NLW_reg_file_reg_r1_0_7_12_15_DOD_UNCONNECTED[1:0]),
        .WCLK(clk_IBUF_BUFG),
        .WE(led_OBUF));
  CARRY4 reg_file_reg_r1_0_7_12_15_i_5
       (.CI(reg_file_reg_r1_0_7_6_11_i_7_n_0),
        .CO(NLW_reg_file_reg_r1_0_7_12_15_i_5_CO_UNCONNECTED[3:0]),
        .CYINIT(1'b0),
        .DI({1'b0,rd1[14:12]}),
        .O(data0[15:12]),
        .S(\PC_out_reg_rep[3]_1 ));
  (* INIT_A = "64'h0000000000000000" *) 
  (* INIT_B = "64'h0000000000000000" *) 
  (* INIT_C = "64'h0000000000000000" *) 
  (* INIT_D = "64'h0000000000000000" *) 
  (* METHODOLOGY_DRC_VIOS = "" *) 
  RAM32M_HD2 reg_file_reg_r1_0_7_6_11
       (.ADDRA({1'b0,1'b0,Instr[5:3]}),
        .ADDRB({1'b0,1'b0,Instr[5:3]}),
        .ADDRC({1'b0,1'b0,Instr[5:3]}),
        .ADDRD({1'b0,1'b0,Q}),
        .DIA(wd[7:6]),
        .DIB(wd[9:8]),
        .DIC(wd[11:10]),
        .DID({1'b0,1'b0}),
        .DOA(rd1[7:6]),
        .DOB(rd1[9:8]),
        .DOC(rd1[11:10]),
        .DOD(NLW_reg_file_reg_r1_0_7_6_11_DOD_UNCONNECTED[1:0]),
        .WCLK(clk_IBUF_BUFG),
        .WE(led_OBUF));
  CARRY4 reg_file_reg_r1_0_7_6_11_i_7
       (.CI(RAM_reg_0_31_0_0_i_7_n_0),
        .CO({reg_file_reg_r1_0_7_6_11_i_7_n_0,NLW_reg_file_reg_r1_0_7_6_11_i_7_CO_UNCONNECTED[2:0]}),
        .CYINIT(1'b0),
        .DI(rd1[11:8]),
        .O(data0[11:8]),
        .S(\PC_out_reg_rep[3]_0 ));
  (* INIT_A = "64'h0000000000000000" *) 
  (* INIT_B = "64'h0000000000000000" *) 
  (* INIT_C = "64'h0000000000000000" *) 
  (* INIT_D = "64'h0000000000000000" *) 
  (* METHODOLOGY_DRC_VIOS = "" *) 
  RAM32M_HD3 reg_file_reg_r2_0_7_0_5
       (.ADDRA({1'b0,1'b0,Instr[2:0]}),
        .ADDRB({1'b0,1'b0,Instr[2:0]}),
        .ADDRC({1'b0,1'b0,Instr[2:0]}),
        .ADDRD({1'b0,1'b0,Q}),
        .DIA(wd[1:0]),
        .DIB(wd[3:2]),
        .DIC(wd[5:4]),
        .DID({1'b0,1'b0}),
        .DOA(RD2[1:0]),
        .DOB(RD2[3:2]),
        .DOC(RD2[5:4]),
        .DOD(NLW_reg_file_reg_r2_0_7_0_5_DOD_UNCONNECTED[1:0]),
        .WCLK(clk_IBUF_BUFG),
        .WE(led_OBUF));
  (* INIT_A = "64'h0000000000000000" *) 
  (* INIT_B = "64'h0000000000000000" *) 
  (* INIT_C = "64'h0000000000000000" *) 
  (* INIT_D = "64'h0000000000000000" *) 
  (* METHODOLOGY_DRC_VIOS = "" *) 
  RAM32M_HD4 reg_file_reg_r2_0_7_12_15
       (.ADDRA({1'b0,1'b0,Instr[2:0]}),
        .ADDRB({1'b0,1'b0,Instr[2:0]}),
        .ADDRC({1'b0,1'b0,Instr[2:0]}),
        .ADDRD({1'b0,1'b0,Q}),
        .DIA(wd[13:12]),
        .DIB(wd[15:14]),
        .DIC({1'b0,1'b0}),
        .DID({1'b0,1'b0}),
        .DOA(RD2[13:12]),
        .DOB(RD2[15:14]),
        .DOC(NLW_reg_file_reg_r2_0_7_12_15_DOC_UNCONNECTED[1:0]),
        .DOD(NLW_reg_file_reg_r2_0_7_12_15_DOD_UNCONNECTED[1:0]),
        .WCLK(clk_IBUF_BUFG),
        .WE(led_OBUF));
  (* INIT_A = "64'h0000000000000000" *) 
  (* INIT_B = "64'h0000000000000000" *) 
  (* INIT_C = "64'h0000000000000000" *) 
  (* INIT_D = "64'h0000000000000000" *) 
  (* METHODOLOGY_DRC_VIOS = "" *) 
  RAM32M_HD5 reg_file_reg_r2_0_7_6_11
       (.ADDRA({1'b0,1'b0,Instr[2:0]}),
        .ADDRB({1'b0,1'b0,Instr[2:0]}),
        .ADDRC({1'b0,1'b0,Instr[2:0]}),
        .ADDRD({1'b0,1'b0,Q}),
        .DIA(wd[7:6]),
        .DIB(wd[9:8]),
        .DIC(wd[11:10]),
        .DID({1'b0,1'b0}),
        .DOA(RD2[7:6]),
        .DOB(RD2[9:8]),
        .DOC(RD2[11:10]),
        .DOD(NLW_reg_file_reg_r2_0_7_6_11_DOD_UNCONNECTED[1:0]),
        .WCLK(clk_IBUF_BUFG),
        .WE(led_OBUF));
endmodule

module ID
   (\cat[0] ,
    RD2,
    \cat[0]_0 ,
    data0,
    rd1,
    O,
    \iesire_num_reg[15] ,
    sw_IBUF,
    S,
    \PC_out_reg_rep[3] ,
    \PC_out_reg_rep[3]_0 ,
    \PC_out_reg_rep[3]_1 ,
    D,
    clk_IBUF_BUFG,
    led_OBUF,
    wd,
    Instr);
  output \cat[0] ;
  output [15:0]RD2;
  output \cat[0]_0 ;
  output [15:0]data0;
  output [15:0]rd1;
  input [1:0]O;
  input \iesire_num_reg[15] ;
  input [1:0]sw_IBUF;
  input [3:0]S;
  input [3:0]\PC_out_reg_rep[3] ;
  input [3:0]\PC_out_reg_rep[3]_0 ;
  input [3:0]\PC_out_reg_rep[3]_1 ;
  input [2:0]D;
  input clk_IBUF_BUFG;
  input [0:0]led_OBUF;
  input [15:0]wd;
  input [5:0]Instr;

  wire [2:0]D;
  wire [5:0]Instr;
  wire [1:0]O;
  wire [3:0]\PC_out_reg_rep[3] ;
  wire [3:0]\PC_out_reg_rep[3]_0 ;
  wire [3:0]\PC_out_reg_rep[3]_1 ;
  wire [15:0]RD2;
  wire [3:0]S;
  wire \cat[0] ;
  wire \cat[0]_0 ;
  wire clk_IBUF_BUFG;
  wire [15:0]data0;
  wire \iesire_num_reg[15] ;
  wire [0:0]led_OBUF;
  wire \mux_rez_reg_n_0_[0] ;
  wire \mux_rez_reg_n_0_[1] ;
  wire \mux_rez_reg_n_0_[2] ;
  wire [15:0]rd1;
  wire [1:0]sw_IBUF;
  wire [15:0]wd;

  Bloc_Reg comp1
       (.Instr(Instr),
        .O(O),
        .\PC_out_reg_rep[3] (\PC_out_reg_rep[3] ),
        .\PC_out_reg_rep[3]_0 (\PC_out_reg_rep[3]_0 ),
        .\PC_out_reg_rep[3]_1 (\PC_out_reg_rep[3]_1 ),
        .Q({\mux_rez_reg_n_0_[2] ,\mux_rez_reg_n_0_[1] ,\mux_rez_reg_n_0_[0] }),
        .RD2(RD2),
        .S(S),
        .\cat[0] (\cat[0] ),
        .\cat[0]_0 (\cat[0]_0 ),
        .clk_IBUF_BUFG(clk_IBUF_BUFG),
        .data0(data0),
        .\iesire_num_reg[15] (\iesire_num_reg[15] ),
        .led_OBUF(led_OBUF),
        .rd1(rd1),
        .sw_IBUF(sw_IBUF),
        .wd(wd));
  FDRE #(
    .INIT(1'b0)) 
    \mux_rez_reg[0] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(D[0]),
        .Q(\mux_rez_reg_n_0_[0] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \mux_rez_reg[1] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(D[1]),
        .Q(\mux_rez_reg_n_0_[1] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \mux_rez_reg[2] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(D[2]),
        .Q(\mux_rez_reg_n_0_[2] ),
        .R(1'b0));
endmodule

module InstF
   (O,
    cat_OBUF,
    \cat[0] ,
    D,
    led_OBUF,
    \cat[0]_0 ,
    \cat[0]_1 ,
    S,
    \cat[0]_2 ,
    reset,
    E,
    clk_IBUF_BUFG,
    \iesire_num_reg[15] ,
    \iesire_num_reg[15]_0 ,
    \mux_rez_reg[2] ,
    \mux_rez_reg[2]_0 ,
    \iesire_num_reg[15]_1 ,
    \iesire_num_reg[15]_2 ,
    \iesire_num_reg[15]_3 ,
    \iesire_num_reg[14] ,
    \iesire_num_reg[15]_4 ,
    sw_IBUF,
    \iesire_num_reg[15]_5 ,
    RD2,
    rd1,
    \iesire_num_reg[15]_6 ,
    \iesire_num_reg[15]_7 ,
    MemData,
    data0,
    \iesire_num_reg[15]_8 ,
    \iesire_num_reg[15]_9 ,
    \iesire_num_reg[14]_0 ,
    \iesire_num_reg[15]_10 );
  output [1:0]O;
  output [6:0]cat_OBUF;
  output [5:0]\cat[0] ;
  output [2:0]D;
  output [5:0]led_OBUF;
  output [3:0]\cat[0]_0 ;
  output [3:0]\cat[0]_1 ;
  output [3:0]S;
  output [3:0]\cat[0]_2 ;
  input reset;
  input [0:0]E;
  input clk_IBUF_BUFG;
  input \iesire_num_reg[15] ;
  input \iesire_num_reg[15]_0 ;
  input \mux_rez_reg[2] ;
  input \mux_rez_reg[2]_0 ;
  input \iesire_num_reg[15]_1 ;
  input \iesire_num_reg[15]_2 ;
  input \iesire_num_reg[15]_3 ;
  input \iesire_num_reg[14] ;
  input \iesire_num_reg[15]_4 ;
  input [1:0]sw_IBUF;
  input \iesire_num_reg[15]_5 ;
  input [15:0]RD2;
  input [15:0]rd1;
  input \iesire_num_reg[15]_6 ;
  input \iesire_num_reg[15]_7 ;
  input [15:0]MemData;
  input [15:0]data0;
  input \iesire_num_reg[15]_8 ;
  input \iesire_num_reg[15]_9 ;
  input \iesire_num_reg[14]_0 ;
  input \iesire_num_reg[15]_10 ;

  wire [2:0]D;
  wire [0:0]E;
  wire [15:0]Instr;
  wire [15:13]Jump_Adress;
  wire [7:0]MUX_out;
  wire [15:0]MemData;
  wire [1:0]O;
  wire \PC_out[0]_i_2_n_0 ;
  wire \PC_out[0]_i_3_n_0 ;
  wire \PC_out[0]_i_4_n_0 ;
  wire \PC_out[0]_i_5_n_0 ;
  wire \PC_out[0]_i_6_n_0 ;
  wire \PC_out[12]_i_2_n_0 ;
  wire \PC_out[12]_i_3_n_0 ;
  wire \PC_out[12]_i_4_n_0 ;
  wire \PC_out[12]_i_5_n_0 ;
  wire \PC_out[4]_i_2_n_0 ;
  wire \PC_out[4]_i_3_n_0 ;
  wire \PC_out[4]_i_4_n_0 ;
  wire \PC_out[4]_i_5_n_0 ;
  wire \PC_out[8]_i_2_n_0 ;
  wire \PC_out[8]_i_3_n_0 ;
  wire \PC_out[8]_i_4_n_0 ;
  wire \PC_out[8]_i_5_n_0 ;
  wire [15:0]PC_out_reg;
  wire \PC_out_reg[0]_i_1_n_0 ;
  wire \PC_out_reg[0]_i_1_n_4 ;
  wire \PC_out_reg[0]_i_1_n_5 ;
  wire \PC_out_reg[0]_i_1_n_6 ;
  wire \PC_out_reg[0]_i_1_n_7 ;
  wire \PC_out_reg[12]_i_1_n_4 ;
  wire \PC_out_reg[12]_i_1_n_5 ;
  wire \PC_out_reg[12]_i_1_n_6 ;
  wire \PC_out_reg[12]_i_1_n_7 ;
  wire \PC_out_reg[4]_i_1_n_0 ;
  wire \PC_out_reg[4]_i_1_n_4 ;
  wire \PC_out_reg[4]_i_1_n_5 ;
  wire \PC_out_reg[4]_i_1_n_6 ;
  wire \PC_out_reg[4]_i_1_n_7 ;
  wire \PC_out_reg[8]_i_1_n_0 ;
  wire \PC_out_reg[8]_i_1_n_4 ;
  wire \PC_out_reg[8]_i_1_n_5 ;
  wire \PC_out_reg[8]_i_1_n_6 ;
  wire \PC_out_reg[8]_i_1_n_7 ;
  wire [7:0]PC_out_reg_rep;
  wire [15:0]RD2;
  wire [3:0]S;
  wire [5:0]\cat[0] ;
  wire [3:0]\cat[0]_0 ;
  wire [3:0]\cat[0]_1 ;
  wire [3:0]\cat[0]_2 ;
  wire [6:0]cat_OBUF;
  wire \cat_OBUF[6]_inst_i_10_n_0 ;
  wire \cat_OBUF[6]_inst_i_11_n_0 ;
  wire \cat_OBUF[6]_inst_i_12_n_0 ;
  wire \cat_OBUF[6]_inst_i_13_n_0 ;
  wire \cat_OBUF[6]_inst_i_14_n_0 ;
  wire \cat_OBUF[6]_inst_i_15_n_0 ;
  wire \cat_OBUF[6]_inst_i_16_n_0 ;
  wire \cat_OBUF[6]_inst_i_17_n_0 ;
  wire \cat_OBUF[6]_inst_i_19_n_0 ;
  wire \cat_OBUF[6]_inst_i_21_n_0 ;
  wire \cat_OBUF[6]_inst_i_22_n_0 ;
  wire \cat_OBUF[6]_inst_i_23_n_0 ;
  wire \cat_OBUF[6]_inst_i_24_n_0 ;
  wire \cat_OBUF[6]_inst_i_25_n_0 ;
  wire \cat_OBUF[6]_inst_i_26_n_0 ;
  wire \cat_OBUF[6]_inst_i_27_n_0 ;
  wire \cat_OBUF[6]_inst_i_28_n_0 ;
  wire \cat_OBUF[6]_inst_i_29_n_0 ;
  wire \cat_OBUF[6]_inst_i_2_n_0 ;
  wire \cat_OBUF[6]_inst_i_31_n_0 ;
  wire \cat_OBUF[6]_inst_i_33_n_0 ;
  wire \cat_OBUF[6]_inst_i_35_n_0 ;
  wire \cat_OBUF[6]_inst_i_37_n_0 ;
  wire \cat_OBUF[6]_inst_i_39_n_0 ;
  wire \cat_OBUF[6]_inst_i_41_n_0 ;
  wire \cat_OBUF[6]_inst_i_42_n_0 ;
  wire \cat_OBUF[6]_inst_i_44_n_0 ;
  wire \cat_OBUF[6]_inst_i_45_n_0 ;
  wire \cat_OBUF[6]_inst_i_46_n_0 ;
  wire \cat_OBUF[6]_inst_i_47_n_0 ;
  wire \cat_OBUF[6]_inst_i_48_n_0 ;
  wire \cat_OBUF[6]_inst_i_49_n_0 ;
  wire \cat_OBUF[6]_inst_i_51_n_0 ;
  wire \cat_OBUF[6]_inst_i_53_n_0 ;
  wire \cat_OBUF[6]_inst_i_55_n_0 ;
  wire \cat_OBUF[6]_inst_i_56_n_0 ;
  wire \cat_OBUF[6]_inst_i_57_n_0 ;
  wire \cat_OBUF[6]_inst_i_58_n_0 ;
  wire \cat_OBUF[6]_inst_i_59_n_0 ;
  wire \cat_OBUF[6]_inst_i_5_n_0 ;
  wire \cat_OBUF[6]_inst_i_60_n_0 ;
  wire \cat_OBUF[6]_inst_i_61_n_0 ;
  wire \cat_OBUF[6]_inst_i_62_n_0 ;
  wire \cat_OBUF[6]_inst_i_63_n_0 ;
  wire \cat_OBUF[6]_inst_i_64_n_0 ;
  wire \cat_OBUF[6]_inst_i_65_n_0 ;
  wire \cat_OBUF[6]_inst_i_66_n_0 ;
  wire \cat_OBUF[6]_inst_i_67_n_0 ;
  wire \cat_OBUF[6]_inst_i_68_n_0 ;
  wire \cat_OBUF[6]_inst_i_70_n_0 ;
  wire \cat_OBUF[6]_inst_i_71_n_0 ;
  wire \cat_OBUF[6]_inst_i_72_n_0 ;
  wire \cat_OBUF[6]_inst_i_73_n_0 ;
  wire \cat_OBUF[6]_inst_i_74_n_0 ;
  wire \cat_OBUF[6]_inst_i_76_n_0 ;
  wire \cat_OBUF[6]_inst_i_77_n_0 ;
  wire \cat_OBUF[6]_inst_i_78_n_0 ;
  wire \cat_OBUF[6]_inst_i_79_n_0 ;
  wire \cat_OBUF[6]_inst_i_80_n_0 ;
  wire \cat_OBUF[6]_inst_i_9_n_0 ;
  wire clk_IBUF_BUFG;
  wire [2:1]\comp_ssd/numar__11 ;
  wire [15:0]data0;
  wire \iesire_num_reg[14] ;
  wire \iesire_num_reg[14]_0 ;
  wire \iesire_num_reg[15] ;
  wire \iesire_num_reg[15]_0 ;
  wire \iesire_num_reg[15]_1 ;
  wire \iesire_num_reg[15]_10 ;
  wire \iesire_num_reg[15]_2 ;
  wire \iesire_num_reg[15]_3 ;
  wire \iesire_num_reg[15]_4 ;
  wire \iesire_num_reg[15]_5 ;
  wire \iesire_num_reg[15]_6 ;
  wire \iesire_num_reg[15]_7 ;
  wire \iesire_num_reg[15]_8 ;
  wire \iesire_num_reg[15]_9 ;
  wire [5:0]led_OBUF;
  wire \led_OBUF[7]_inst_i_2_n_0 ;
  wire \mux_rez_reg[2] ;
  wire \mux_rez_reg[2]_0 ;
  wire plusOp_carry__0_n_0;
  wire plusOp_carry__0_n_4;
  wire plusOp_carry__0_n_5;
  wire plusOp_carry__0_n_6;
  wire plusOp_carry__0_n_7;
  wire plusOp_carry__1_n_0;
  wire plusOp_carry__1_n_4;
  wire plusOp_carry__1_n_5;
  wire plusOp_carry__1_n_6;
  wire plusOp_carry__1_n_7;
  wire plusOp_carry_n_0;
  wire plusOp_carry_n_4;
  wire plusOp_carry_n_5;
  wire [15:0]rd1;
  wire reset;
  wire [1:0]sw_IBUF;
  wire [2:0]\NLW_PC_out_reg[0]_i_1_CO_UNCONNECTED ;
  wire [3:0]\NLW_PC_out_reg[12]_i_1_CO_UNCONNECTED ;
  wire [2:0]\NLW_PC_out_reg[4]_i_1_CO_UNCONNECTED ;
  wire [2:0]\NLW_PC_out_reg[8]_i_1_CO_UNCONNECTED ;
  wire [2:0]NLW_plusOp_carry_CO_UNCONNECTED;
  wire [2:0]NLW_plusOp_carry__0_CO_UNCONNECTED;
  wire [2:0]NLW_plusOp_carry__1_CO_UNCONNECTED;
  wire [3:0]NLW_plusOp_carry__2_CO_UNCONNECTED;
  wire [3:3]NLW_plusOp_carry__2_O_UNCONNECTED;

  LUT6 #(
    .INIT(64'hFBFFFFFF00000000)) 
    \PC_out[0]_i_2 
       (.I0(PC_out_reg_rep[2]),
        .I1(PC_out_reg_rep[0]),
        .I2(\led_OBUF[7]_inst_i_2_n_0 ),
        .I3(PC_out_reg_rep[1]),
        .I4(PC_out_reg_rep[3]),
        .I5(PC_out_reg[0]),
        .O(\PC_out[0]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFF04000000)) 
    \PC_out[0]_i_3 
       (.I0(PC_out_reg_rep[2]),
        .I1(PC_out_reg_rep[0]),
        .I2(\led_OBUF[7]_inst_i_2_n_0 ),
        .I3(PC_out_reg_rep[1]),
        .I4(PC_out_reg_rep[3]),
        .I5(PC_out_reg[3]),
        .O(\PC_out[0]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \PC_out[0]_i_4 
       (.I0(PC_out_reg[2]),
        .I1(led_OBUF[3]),
        .O(\PC_out[0]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \PC_out[0]_i_5 
       (.I0(PC_out_reg[1]),
        .I1(led_OBUF[3]),
        .O(\PC_out[0]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'h5555555555155555)) 
    \PC_out[0]_i_6 
       (.I0(PC_out_reg[0]),
        .I1(PC_out_reg_rep[3]),
        .I2(PC_out_reg_rep[1]),
        .I3(\led_OBUF[7]_inst_i_2_n_0 ),
        .I4(PC_out_reg_rep[0]),
        .I5(PC_out_reg_rep[2]),
        .O(\PC_out[0]_i_6_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \PC_out[12]_i_2 
       (.I0(Jump_Adress[15]),
        .I1(led_OBUF[3]),
        .I2(PC_out_reg[15]),
        .O(\PC_out[12]_i_2_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \PC_out[12]_i_3 
       (.I0(Jump_Adress[14]),
        .I1(led_OBUF[3]),
        .I2(PC_out_reg[14]),
        .O(\PC_out[12]_i_3_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \PC_out[12]_i_4 
       (.I0(Jump_Adress[13]),
        .I1(led_OBUF[3]),
        .I2(PC_out_reg[13]),
        .O(\PC_out[12]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hFBFFFFFF00000000)) 
    \PC_out[12]_i_5 
       (.I0(PC_out_reg_rep[2]),
        .I1(PC_out_reg_rep[0]),
        .I2(\led_OBUF[7]_inst_i_2_n_0 ),
        .I3(PC_out_reg_rep[1]),
        .I4(PC_out_reg_rep[3]),
        .I5(PC_out_reg[12]),
        .O(\PC_out[12]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hFBFFFFFF00000000)) 
    \PC_out[4]_i_2 
       (.I0(PC_out_reg_rep[2]),
        .I1(PC_out_reg_rep[0]),
        .I2(\led_OBUF[7]_inst_i_2_n_0 ),
        .I3(PC_out_reg_rep[1]),
        .I4(PC_out_reg_rep[3]),
        .I5(PC_out_reg[7]),
        .O(\PC_out[4]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFBFFFFFF00000000)) 
    \PC_out[4]_i_3 
       (.I0(PC_out_reg_rep[2]),
        .I1(PC_out_reg_rep[0]),
        .I2(\led_OBUF[7]_inst_i_2_n_0 ),
        .I3(PC_out_reg_rep[1]),
        .I4(PC_out_reg_rep[3]),
        .I5(PC_out_reg[6]),
        .O(\PC_out[4]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hFBFFFFFF00000000)) 
    \PC_out[4]_i_4 
       (.I0(PC_out_reg_rep[2]),
        .I1(PC_out_reg_rep[0]),
        .I2(\led_OBUF[7]_inst_i_2_n_0 ),
        .I3(PC_out_reg_rep[1]),
        .I4(PC_out_reg_rep[3]),
        .I5(PC_out_reg[5]),
        .O(\PC_out[4]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hFBFFFFFF00000000)) 
    \PC_out[4]_i_5 
       (.I0(PC_out_reg_rep[2]),
        .I1(PC_out_reg_rep[0]),
        .I2(\led_OBUF[7]_inst_i_2_n_0 ),
        .I3(PC_out_reg_rep[1]),
        .I4(PC_out_reg_rep[3]),
        .I5(PC_out_reg[4]),
        .O(\PC_out[4]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hFBFFFFFF00000000)) 
    \PC_out[8]_i_2 
       (.I0(PC_out_reg_rep[2]),
        .I1(PC_out_reg_rep[0]),
        .I2(\led_OBUF[7]_inst_i_2_n_0 ),
        .I3(PC_out_reg_rep[1]),
        .I4(PC_out_reg_rep[3]),
        .I5(PC_out_reg[11]),
        .O(\PC_out[8]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFBFFFFFF00000000)) 
    \PC_out[8]_i_3 
       (.I0(PC_out_reg_rep[2]),
        .I1(PC_out_reg_rep[0]),
        .I2(\led_OBUF[7]_inst_i_2_n_0 ),
        .I3(PC_out_reg_rep[1]),
        .I4(PC_out_reg_rep[3]),
        .I5(PC_out_reg[10]),
        .O(\PC_out[8]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hFBFFFFFF00000000)) 
    \PC_out[8]_i_4 
       (.I0(PC_out_reg_rep[2]),
        .I1(PC_out_reg_rep[0]),
        .I2(\led_OBUF[7]_inst_i_2_n_0 ),
        .I3(PC_out_reg_rep[1]),
        .I4(PC_out_reg_rep[3]),
        .I5(PC_out_reg[9]),
        .O(\PC_out[8]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hFBFFFFFF00000000)) 
    \PC_out[8]_i_5 
       (.I0(PC_out_reg_rep[2]),
        .I1(PC_out_reg_rep[0]),
        .I2(\led_OBUF[7]_inst_i_2_n_0 ),
        .I3(PC_out_reg_rep[1]),
        .I4(PC_out_reg_rep[3]),
        .I5(PC_out_reg[8]),
        .O(\PC_out[8]_i_5_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \PC_out_reg[0] 
       (.C(clk_IBUF_BUFG),
        .CE(E),
        .D(\PC_out_reg[0]_i_1_n_7 ),
        .Q(PC_out_reg[0]),
        .R(reset));
  CARRY4 \PC_out_reg[0]_i_1 
       (.CI(1'b0),
        .CO({\PC_out_reg[0]_i_1_n_0 ,\NLW_PC_out_reg[0]_i_1_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,\PC_out[0]_i_2_n_0 }),
        .O({\PC_out_reg[0]_i_1_n_4 ,\PC_out_reg[0]_i_1_n_5 ,\PC_out_reg[0]_i_1_n_6 ,\PC_out_reg[0]_i_1_n_7 }),
        .S({\PC_out[0]_i_3_n_0 ,\PC_out[0]_i_4_n_0 ,\PC_out[0]_i_5_n_0 ,\PC_out[0]_i_6_n_0 }));
  FDRE #(
    .INIT(1'b0)) 
    \PC_out_reg[10] 
       (.C(clk_IBUF_BUFG),
        .CE(E),
        .D(\PC_out_reg[8]_i_1_n_5 ),
        .Q(PC_out_reg[10]),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \PC_out_reg[11] 
       (.C(clk_IBUF_BUFG),
        .CE(E),
        .D(\PC_out_reg[8]_i_1_n_4 ),
        .Q(PC_out_reg[11]),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \PC_out_reg[12] 
       (.C(clk_IBUF_BUFG),
        .CE(E),
        .D(\PC_out_reg[12]_i_1_n_7 ),
        .Q(PC_out_reg[12]),
        .R(reset));
  CARRY4 \PC_out_reg[12]_i_1 
       (.CI(\PC_out_reg[8]_i_1_n_0 ),
        .CO(\NLW_PC_out_reg[12]_i_1_CO_UNCONNECTED [3:0]),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\PC_out_reg[12]_i_1_n_4 ,\PC_out_reg[12]_i_1_n_5 ,\PC_out_reg[12]_i_1_n_6 ,\PC_out_reg[12]_i_1_n_7 }),
        .S({\PC_out[12]_i_2_n_0 ,\PC_out[12]_i_3_n_0 ,\PC_out[12]_i_4_n_0 ,\PC_out[12]_i_5_n_0 }));
  FDRE #(
    .INIT(1'b0)) 
    \PC_out_reg[13] 
       (.C(clk_IBUF_BUFG),
        .CE(E),
        .D(\PC_out_reg[12]_i_1_n_6 ),
        .Q(PC_out_reg[13]),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \PC_out_reg[14] 
       (.C(clk_IBUF_BUFG),
        .CE(E),
        .D(\PC_out_reg[12]_i_1_n_5 ),
        .Q(PC_out_reg[14]),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \PC_out_reg[15] 
       (.C(clk_IBUF_BUFG),
        .CE(E),
        .D(\PC_out_reg[12]_i_1_n_4 ),
        .Q(PC_out_reg[15]),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \PC_out_reg[1] 
       (.C(clk_IBUF_BUFG),
        .CE(E),
        .D(\PC_out_reg[0]_i_1_n_6 ),
        .Q(PC_out_reg[1]),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \PC_out_reg[2] 
       (.C(clk_IBUF_BUFG),
        .CE(E),
        .D(\PC_out_reg[0]_i_1_n_5 ),
        .Q(PC_out_reg[2]),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \PC_out_reg[3] 
       (.C(clk_IBUF_BUFG),
        .CE(E),
        .D(\PC_out_reg[0]_i_1_n_4 ),
        .Q(PC_out_reg[3]),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \PC_out_reg[4] 
       (.C(clk_IBUF_BUFG),
        .CE(E),
        .D(\PC_out_reg[4]_i_1_n_7 ),
        .Q(PC_out_reg[4]),
        .R(reset));
  CARRY4 \PC_out_reg[4]_i_1 
       (.CI(\PC_out_reg[0]_i_1_n_0 ),
        .CO({\PC_out_reg[4]_i_1_n_0 ,\NLW_PC_out_reg[4]_i_1_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\PC_out_reg[4]_i_1_n_4 ,\PC_out_reg[4]_i_1_n_5 ,\PC_out_reg[4]_i_1_n_6 ,\PC_out_reg[4]_i_1_n_7 }),
        .S({\PC_out[4]_i_2_n_0 ,\PC_out[4]_i_3_n_0 ,\PC_out[4]_i_4_n_0 ,\PC_out[4]_i_5_n_0 }));
  FDRE #(
    .INIT(1'b0)) 
    \PC_out_reg[5] 
       (.C(clk_IBUF_BUFG),
        .CE(E),
        .D(\PC_out_reg[4]_i_1_n_6 ),
        .Q(PC_out_reg[5]),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \PC_out_reg[6] 
       (.C(clk_IBUF_BUFG),
        .CE(E),
        .D(\PC_out_reg[4]_i_1_n_5 ),
        .Q(PC_out_reg[6]),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \PC_out_reg[7] 
       (.C(clk_IBUF_BUFG),
        .CE(E),
        .D(\PC_out_reg[4]_i_1_n_4 ),
        .Q(PC_out_reg[7]),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \PC_out_reg[8] 
       (.C(clk_IBUF_BUFG),
        .CE(E),
        .D(\PC_out_reg[8]_i_1_n_7 ),
        .Q(PC_out_reg[8]),
        .R(reset));
  CARRY4 \PC_out_reg[8]_i_1 
       (.CI(\PC_out_reg[4]_i_1_n_0 ),
        .CO({\PC_out_reg[8]_i_1_n_0 ,\NLW_PC_out_reg[8]_i_1_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\PC_out_reg[8]_i_1_n_4 ,\PC_out_reg[8]_i_1_n_5 ,\PC_out_reg[8]_i_1_n_6 ,\PC_out_reg[8]_i_1_n_7 }),
        .S({\PC_out[8]_i_2_n_0 ,\PC_out[8]_i_3_n_0 ,\PC_out[8]_i_4_n_0 ,\PC_out[8]_i_5_n_0 }));
  FDRE #(
    .INIT(1'b0)) 
    \PC_out_reg[9] 
       (.C(clk_IBUF_BUFG),
        .CE(E),
        .D(\PC_out_reg[8]_i_1_n_6 ),
        .Q(PC_out_reg[9]),
        .R(reset));
  (* equivalent_register_removal = "no" *) 
  FDRE #(
    .INIT(1'b0)) 
    \PC_out_reg_rep[0] 
       (.C(clk_IBUF_BUFG),
        .CE(E),
        .D(MUX_out[0]),
        .Q(PC_out_reg_rep[0]),
        .R(reset));
  (* equivalent_register_removal = "no" *) 
  FDRE #(
    .INIT(1'b0)) 
    \PC_out_reg_rep[1] 
       (.C(clk_IBUF_BUFG),
        .CE(E),
        .D(MUX_out[1]),
        .Q(PC_out_reg_rep[1]),
        .R(reset));
  (* equivalent_register_removal = "no" *) 
  FDRE #(
    .INIT(1'b0)) 
    \PC_out_reg_rep[2] 
       (.C(clk_IBUF_BUFG),
        .CE(E),
        .D(MUX_out[2]),
        .Q(PC_out_reg_rep[2]),
        .R(reset));
  (* equivalent_register_removal = "no" *) 
  FDRE #(
    .INIT(1'b0)) 
    \PC_out_reg_rep[3] 
       (.C(clk_IBUF_BUFG),
        .CE(E),
        .D(MUX_out[3]),
        .Q(PC_out_reg_rep[3]),
        .R(reset));
  (* equivalent_register_removal = "no" *) 
  FDRE #(
    .INIT(1'b0)) 
    \PC_out_reg_rep[4] 
       (.C(clk_IBUF_BUFG),
        .CE(E),
        .D(MUX_out[4]),
        .Q(PC_out_reg_rep[4]),
        .R(reset));
  (* equivalent_register_removal = "no" *) 
  FDRE #(
    .INIT(1'b0)) 
    \PC_out_reg_rep[5] 
       (.C(clk_IBUF_BUFG),
        .CE(E),
        .D(MUX_out[5]),
        .Q(PC_out_reg_rep[5]),
        .R(reset));
  (* equivalent_register_removal = "no" *) 
  FDRE #(
    .INIT(1'b0)) 
    \PC_out_reg_rep[6] 
       (.C(clk_IBUF_BUFG),
        .CE(E),
        .D(MUX_out[6]),
        .Q(PC_out_reg_rep[6]),
        .R(reset));
  (* equivalent_register_removal = "no" *) 
  FDRE #(
    .INIT(1'b0)) 
    \PC_out_reg_rep[7] 
       (.C(clk_IBUF_BUFG),
        .CE(E),
        .D(MUX_out[7]),
        .Q(PC_out_reg_rep[7]),
        .R(reset));
  LUT6 #(
    .INIT(64'h00000000FBFFFFFF)) 
    \PC_out_rep[0]_i_1 
       (.I0(PC_out_reg_rep[2]),
        .I1(PC_out_reg_rep[0]),
        .I2(\led_OBUF[7]_inst_i_2_n_0 ),
        .I3(PC_out_reg_rep[1]),
        .I4(PC_out_reg_rep[3]),
        .I5(PC_out_reg[0]),
        .O(MUX_out[0]));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \PC_out_rep[1]_i_1 
       (.I0(O[0]),
        .I1(led_OBUF[3]),
        .O(MUX_out[1]));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \PC_out_rep[2]_i_1 
       (.I0(O[1]),
        .I1(led_OBUF[3]),
        .O(MUX_out[2]));
  LUT6 #(
    .INIT(64'hFFFFFFFF04000000)) 
    \PC_out_rep[3]_i_1 
       (.I0(PC_out_reg_rep[2]),
        .I1(PC_out_reg_rep[0]),
        .I2(\led_OBUF[7]_inst_i_2_n_0 ),
        .I3(PC_out_reg_rep[1]),
        .I4(PC_out_reg_rep[3]),
        .I5(plusOp_carry_n_5),
        .O(MUX_out[3]));
  LUT6 #(
    .INIT(64'hFBFFFFFF00000000)) 
    \PC_out_rep[4]_i_1 
       (.I0(PC_out_reg_rep[2]),
        .I1(PC_out_reg_rep[0]),
        .I2(\led_OBUF[7]_inst_i_2_n_0 ),
        .I3(PC_out_reg_rep[1]),
        .I4(PC_out_reg_rep[3]),
        .I5(plusOp_carry_n_4),
        .O(MUX_out[4]));
  LUT6 #(
    .INIT(64'hFBFFFFFF00000000)) 
    \PC_out_rep[5]_i_1 
       (.I0(PC_out_reg_rep[2]),
        .I1(PC_out_reg_rep[0]),
        .I2(\led_OBUF[7]_inst_i_2_n_0 ),
        .I3(PC_out_reg_rep[1]),
        .I4(PC_out_reg_rep[3]),
        .I5(plusOp_carry__0_n_7),
        .O(MUX_out[5]));
  LUT6 #(
    .INIT(64'hFBFFFFFF00000000)) 
    \PC_out_rep[6]_i_1 
       (.I0(PC_out_reg_rep[2]),
        .I1(PC_out_reg_rep[0]),
        .I2(\led_OBUF[7]_inst_i_2_n_0 ),
        .I3(PC_out_reg_rep[1]),
        .I4(PC_out_reg_rep[3]),
        .I5(plusOp_carry__0_n_6),
        .O(MUX_out[6]));
  LUT6 #(
    .INIT(64'hFBFFFFFF00000000)) 
    \PC_out_rep[7]_i_3 
       (.I0(PC_out_reg_rep[2]),
        .I1(PC_out_reg_rep[0]),
        .I2(\led_OBUF[7]_inst_i_2_n_0 ),
        .I3(PC_out_reg_rep[1]),
        .I4(PC_out_reg_rep[3]),
        .I5(plusOp_carry__0_n_5),
        .O(MUX_out[7]));
  LUT4 #(
    .INIT(16'h0FE1)) 
    RAM_reg_0_31_0_0_i_10
       (.I0(\led_OBUF[7]_inst_i_2_n_0 ),
        .I1(PC_out_reg_rep[3]),
        .I2(rd1[1]),
        .I3(RD2[1]),
        .O(S[1]));
  LUT4 #(
    .INIT(16'h0FE1)) 
    RAM_reg_0_31_0_0_i_11
       (.I0(\led_OBUF[7]_inst_i_2_n_0 ),
        .I1(PC_out_reg_rep[3]),
        .I2(rd1[0]),
        .I3(RD2[0]),
        .O(S[0]));
  LUT4 #(
    .INIT(16'h0FE1)) 
    RAM_reg_0_31_0_0_i_12
       (.I0(\led_OBUF[7]_inst_i_2_n_0 ),
        .I1(PC_out_reg_rep[3]),
        .I2(rd1[7]),
        .I3(RD2[7]),
        .O(\cat[0]_1 [3]));
  LUT4 #(
    .INIT(16'h0FE1)) 
    RAM_reg_0_31_0_0_i_13
       (.I0(\led_OBUF[7]_inst_i_2_n_0 ),
        .I1(PC_out_reg_rep[3]),
        .I2(rd1[6]),
        .I3(RD2[6]),
        .O(\cat[0]_1 [2]));
  LUT4 #(
    .INIT(16'h0FE1)) 
    RAM_reg_0_31_0_0_i_14
       (.I0(\led_OBUF[7]_inst_i_2_n_0 ),
        .I1(PC_out_reg_rep[3]),
        .I2(rd1[5]),
        .I3(RD2[5]),
        .O(\cat[0]_1 [1]));
  LUT4 #(
    .INIT(16'h0FE1)) 
    RAM_reg_0_31_0_0_i_15
       (.I0(\led_OBUF[7]_inst_i_2_n_0 ),
        .I1(PC_out_reg_rep[3]),
        .I2(rd1[4]),
        .I3(RD2[4]),
        .O(\cat[0]_1 [0]));
  LUT4 #(
    .INIT(16'h0FE1)) 
    RAM_reg_0_31_0_0_i_8
       (.I0(\led_OBUF[7]_inst_i_2_n_0 ),
        .I1(PC_out_reg_rep[3]),
        .I2(rd1[3]),
        .I3(RD2[3]),
        .O(S[3]));
  LUT4 #(
    .INIT(16'h0FE1)) 
    RAM_reg_0_31_0_0_i_9
       (.I0(\led_OBUF[7]_inst_i_2_n_0 ),
        .I1(PC_out_reg_rep[3]),
        .I2(rd1[2]),
        .I3(RD2[2]),
        .O(S[2]));
  LUT6 #(
    .INIT(64'h54545401A8A8A854)) 
    \cat_OBUF[0]_inst_i_1 
       (.I0(\comp_ssd/numar__11 [1]),
        .I1(\iesire_num_reg[15] ),
        .I2(\cat_OBUF[6]_inst_i_5_n_0 ),
        .I3(\iesire_num_reg[15]_0 ),
        .I4(\cat_OBUF[6]_inst_i_2_n_0 ),
        .I5(\comp_ssd/numar__11 [2]),
        .O(cat_OBUF[0]));
  LUT6 #(
    .INIT(64'hAAACAAACAAAC4448)) 
    \cat_OBUF[1]_inst_i_1 
       (.I0(\comp_ssd/numar__11 [1]),
        .I1(\comp_ssd/numar__11 [2]),
        .I2(\cat_OBUF[6]_inst_i_5_n_0 ),
        .I3(\iesire_num_reg[15] ),
        .I4(\cat_OBUF[6]_inst_i_2_n_0 ),
        .I5(\iesire_num_reg[15]_0 ),
        .O(cat_OBUF[1]));
  LUT6 #(
    .INIT(64'hF010F010F0100100)) 
    \cat_OBUF[2]_inst_i_1 
       (.I0(\cat_OBUF[6]_inst_i_5_n_0 ),
        .I1(\iesire_num_reg[15] ),
        .I2(\comp_ssd/numar__11 [2]),
        .I3(\comp_ssd/numar__11 [1]),
        .I4(\iesire_num_reg[15]_0 ),
        .I5(\cat_OBUF[6]_inst_i_2_n_0 ),
        .O(cat_OBUF[2]));
  LUT6 #(
    .INIT(64'hF001F001F0010E10)) 
    \cat_OBUF[3]_inst_i_1 
       (.I0(\cat_OBUF[6]_inst_i_2_n_0 ),
        .I1(\iesire_num_reg[15]_0 ),
        .I2(\comp_ssd/numar__11 [2]),
        .I3(\comp_ssd/numar__11 [1]),
        .I4(\iesire_num_reg[15] ),
        .I5(\cat_OBUF[6]_inst_i_5_n_0 ),
        .O(cat_OBUF[3]));
  LUT6 #(
    .INIT(64'h111F111F111F0010)) 
    \cat_OBUF[4]_inst_i_1 
       (.I0(\iesire_num_reg[15]_0 ),
        .I1(\cat_OBUF[6]_inst_i_2_n_0 ),
        .I2(\comp_ssd/numar__11 [2]),
        .I3(\comp_ssd/numar__11 [1]),
        .I4(\iesire_num_reg[15] ),
        .I5(\cat_OBUF[6]_inst_i_5_n_0 ),
        .O(cat_OBUF[4]));
  LUT6 #(
    .INIT(64'h5656560003030302)) 
    \cat_OBUF[5]_inst_i_1 
       (.I0(\comp_ssd/numar__11 [1]),
        .I1(\cat_OBUF[6]_inst_i_2_n_0 ),
        .I2(\iesire_num_reg[15]_0 ),
        .I3(\iesire_num_reg[15] ),
        .I4(\cat_OBUF[6]_inst_i_5_n_0 ),
        .I5(\comp_ssd/numar__11 [2]),
        .O(cat_OBUF[5]));
  LUT6 #(
    .INIT(64'h10101000010101E1)) 
    \cat_OBUF[6]_inst_i_1 
       (.I0(\cat_OBUF[6]_inst_i_2_n_0 ),
        .I1(\iesire_num_reg[15]_0 ),
        .I2(\comp_ssd/numar__11 [2]),
        .I3(\cat_OBUF[6]_inst_i_5_n_0 ),
        .I4(\iesire_num_reg[15] ),
        .I5(\comp_ssd/numar__11 [1]),
        .O(cat_OBUF[6]));
  LUT6 #(
    .INIT(64'hFFFF00002A000000)) 
    \cat_OBUF[6]_inst_i_10 
       (.I0(data0[3]),
        .I1(led_OBUF[5]),
        .I2(sw_IBUF[1]),
        .I3(sw_IBUF[0]),
        .I4(\iesire_num_reg[15]_8 ),
        .I5(\cat_OBUF[6]_inst_i_35_n_0 ),
        .O(\cat_OBUF[6]_inst_i_10_n_0 ));
  LUT6 #(
    .INIT(64'hFFFF00002A000000)) 
    \cat_OBUF[6]_inst_i_11 
       (.I0(data0[15]),
        .I1(led_OBUF[5]),
        .I2(sw_IBUF[1]),
        .I3(sw_IBUF[0]),
        .I4(\iesire_num_reg[15]_10 ),
        .I5(\cat_OBUF[6]_inst_i_37_n_0 ),
        .O(\cat_OBUF[6]_inst_i_11_n_0 ));
  LUT6 #(
    .INIT(64'hFFFF00002A000000)) 
    \cat_OBUF[6]_inst_i_12 
       (.I0(data0[11]),
        .I1(led_OBUF[5]),
        .I2(sw_IBUF[1]),
        .I3(sw_IBUF[0]),
        .I4(\iesire_num_reg[14]_0 ),
        .I5(\cat_OBUF[6]_inst_i_39_n_0 ),
        .O(\cat_OBUF[6]_inst_i_12_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFF8F8F8)) 
    \cat_OBUF[6]_inst_i_13 
       (.I0(\iesire_num_reg[15]_5 ),
        .I1(\cat_OBUF[6]_inst_i_41_n_0 ),
        .I2(\cat_OBUF[6]_inst_i_42_n_0 ),
        .I3(\iesire_num_reg[15]_3 ),
        .I4(\cat_OBUF[6]_inst_i_44_n_0 ),
        .I5(\cat_OBUF[6]_inst_i_45_n_0 ),
        .O(\cat_OBUF[6]_inst_i_13_n_0 ));
  LUT6 #(
    .INIT(64'hFFFF00002A000000)) 
    \cat_OBUF[6]_inst_i_14 
       (.I0(data0[10]),
        .I1(led_OBUF[5]),
        .I2(sw_IBUF[1]),
        .I3(sw_IBUF[0]),
        .I4(\iesire_num_reg[14]_0 ),
        .I5(\cat_OBUF[6]_inst_i_46_n_0 ),
        .O(\cat_OBUF[6]_inst_i_14_n_0 ));
  LUT6 #(
    .INIT(64'hFFFF00002A000000)) 
    \cat_OBUF[6]_inst_i_15 
       (.I0(data0[14]),
        .I1(led_OBUF[5]),
        .I2(sw_IBUF[1]),
        .I3(sw_IBUF[0]),
        .I4(\iesire_num_reg[15]_10 ),
        .I5(\cat_OBUF[6]_inst_i_47_n_0 ),
        .O(\cat_OBUF[6]_inst_i_15_n_0 ));
  LUT6 #(
    .INIT(64'hFFFF00002A000000)) 
    \cat_OBUF[6]_inst_i_16 
       (.I0(data0[2]),
        .I1(led_OBUF[5]),
        .I2(sw_IBUF[1]),
        .I3(sw_IBUF[0]),
        .I4(\iesire_num_reg[15]_8 ),
        .I5(\cat_OBUF[6]_inst_i_48_n_0 ),
        .O(\cat_OBUF[6]_inst_i_16_n_0 ));
  LUT6 #(
    .INIT(64'hFFFF00002A000000)) 
    \cat_OBUF[6]_inst_i_17 
       (.I0(data0[6]),
        .I1(led_OBUF[5]),
        .I2(sw_IBUF[1]),
        .I3(sw_IBUF[0]),
        .I4(\iesire_num_reg[15]_9 ),
        .I5(\cat_OBUF[6]_inst_i_49_n_0 ),
        .O(\cat_OBUF[6]_inst_i_17_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFEEEFEEEFEEE)) 
    \cat_OBUF[6]_inst_i_19 
       (.I0(\cat_OBUF[6]_inst_i_51_n_0 ),
        .I1(\iesire_num_reg[15]_7 ),
        .I2(\iesire_num_reg[15]_3 ),
        .I3(\cat_OBUF[6]_inst_i_53_n_0 ),
        .I4(\iesire_num_reg[14] ),
        .I5(\cat_OBUF[6]_inst_i_55_n_0 ),
        .O(\cat_OBUF[6]_inst_i_19_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
    \cat_OBUF[6]_inst_i_2 
       (.I0(\iesire_num_reg[15]_2 ),
        .I1(\cat_OBUF[6]_inst_i_9_n_0 ),
        .I2(\cat_OBUF[6]_inst_i_10_n_0 ),
        .I3(\cat_OBUF[6]_inst_i_11_n_0 ),
        .I4(\cat_OBUF[6]_inst_i_12_n_0 ),
        .I5(\cat_OBUF[6]_inst_i_13_n_0 ),
        .O(\cat_OBUF[6]_inst_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFFF00002A000000)) 
    \cat_OBUF[6]_inst_i_21 
       (.I0(data0[4]),
        .I1(led_OBUF[5]),
        .I2(sw_IBUF[1]),
        .I3(sw_IBUF[0]),
        .I4(\iesire_num_reg[15]_9 ),
        .I5(\cat_OBUF[6]_inst_i_56_n_0 ),
        .O(\cat_OBUF[6]_inst_i_21_n_0 ));
  LUT6 #(
    .INIT(64'hFFFF00002A000000)) 
    \cat_OBUF[6]_inst_i_22 
       (.I0(data0[0]),
        .I1(led_OBUF[5]),
        .I2(sw_IBUF[1]),
        .I3(sw_IBUF[0]),
        .I4(\iesire_num_reg[15]_8 ),
        .I5(\cat_OBUF[6]_inst_i_57_n_0 ),
        .O(\cat_OBUF[6]_inst_i_22_n_0 ));
  LUT6 #(
    .INIT(64'hFFFF00002A000000)) 
    \cat_OBUF[6]_inst_i_23 
       (.I0(data0[12]),
        .I1(led_OBUF[5]),
        .I2(sw_IBUF[1]),
        .I3(sw_IBUF[0]),
        .I4(\iesire_num_reg[15]_10 ),
        .I5(\cat_OBUF[6]_inst_i_58_n_0 ),
        .O(\cat_OBUF[6]_inst_i_23_n_0 ));
  LUT6 #(
    .INIT(64'hFFFF00002A000000)) 
    \cat_OBUF[6]_inst_i_24 
       (.I0(data0[8]),
        .I1(led_OBUF[5]),
        .I2(sw_IBUF[1]),
        .I3(sw_IBUF[0]),
        .I4(\iesire_num_reg[14]_0 ),
        .I5(\cat_OBUF[6]_inst_i_59_n_0 ),
        .O(\cat_OBUF[6]_inst_i_24_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFEEEFEEEFEEE)) 
    \cat_OBUF[6]_inst_i_25 
       (.I0(\cat_OBUF[6]_inst_i_60_n_0 ),
        .I1(\cat_OBUF[6]_inst_i_61_n_0 ),
        .I2(\iesire_num_reg[15]_3 ),
        .I3(\cat_OBUF[6]_inst_i_62_n_0 ),
        .I4(\iesire_num_reg[14] ),
        .I5(\cat_OBUF[6]_inst_i_63_n_0 ),
        .O(\cat_OBUF[6]_inst_i_25_n_0 ));
  LUT6 #(
    .INIT(64'hFFFF00002A000000)) 
    \cat_OBUF[6]_inst_i_26 
       (.I0(data0[9]),
        .I1(led_OBUF[5]),
        .I2(sw_IBUF[1]),
        .I3(sw_IBUF[0]),
        .I4(\iesire_num_reg[14]_0 ),
        .I5(\cat_OBUF[6]_inst_i_64_n_0 ),
        .O(\cat_OBUF[6]_inst_i_26_n_0 ));
  LUT6 #(
    .INIT(64'hFFFF00002A000000)) 
    \cat_OBUF[6]_inst_i_27 
       (.I0(data0[13]),
        .I1(led_OBUF[5]),
        .I2(sw_IBUF[1]),
        .I3(sw_IBUF[0]),
        .I4(\iesire_num_reg[15]_10 ),
        .I5(\cat_OBUF[6]_inst_i_65_n_0 ),
        .O(\cat_OBUF[6]_inst_i_27_n_0 ));
  LUT6 #(
    .INIT(64'hFFFF00002A000000)) 
    \cat_OBUF[6]_inst_i_28 
       (.I0(data0[1]),
        .I1(led_OBUF[5]),
        .I2(sw_IBUF[1]),
        .I3(sw_IBUF[0]),
        .I4(\iesire_num_reg[15]_8 ),
        .I5(\cat_OBUF[6]_inst_i_66_n_0 ),
        .O(\cat_OBUF[6]_inst_i_28_n_0 ));
  LUT6 #(
    .INIT(64'hFFFF00002A000000)) 
    \cat_OBUF[6]_inst_i_29 
       (.I0(data0[5]),
        .I1(led_OBUF[5]),
        .I2(sw_IBUF[1]),
        .I3(sw_IBUF[0]),
        .I4(\iesire_num_reg[15]_9 ),
        .I5(\cat_OBUF[6]_inst_i_67_n_0 ),
        .O(\cat_OBUF[6]_inst_i_29_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFEEEFEEEFEEE)) 
    \cat_OBUF[6]_inst_i_31 
       (.I0(\cat_OBUF[6]_inst_i_68_n_0 ),
        .I1(\iesire_num_reg[15]_6 ),
        .I2(\iesire_num_reg[15]_3 ),
        .I3(\cat_OBUF[6]_inst_i_70_n_0 ),
        .I4(\iesire_num_reg[14] ),
        .I5(\cat_OBUF[6]_inst_i_71_n_0 ),
        .O(\cat_OBUF[6]_inst_i_31_n_0 ));
  LUT6 #(
    .INIT(64'hAAAB000122230001)) 
    \cat_OBUF[6]_inst_i_33 
       (.I0(sw_IBUF[1]),
        .I1(sw_IBUF[0]),
        .I2(PC_out_reg_rep[3]),
        .I3(\led_OBUF[7]_inst_i_2_n_0 ),
        .I4(MemData[7]),
        .I5(led_OBUF[5]),
        .O(\cat_OBUF[6]_inst_i_33_n_0 ));
  LUT6 #(
    .INIT(64'hAAAB000122230001)) 
    \cat_OBUF[6]_inst_i_35 
       (.I0(sw_IBUF[1]),
        .I1(sw_IBUF[0]),
        .I2(PC_out_reg_rep[3]),
        .I3(\led_OBUF[7]_inst_i_2_n_0 ),
        .I4(MemData[3]),
        .I5(led_OBUF[5]),
        .O(\cat_OBUF[6]_inst_i_35_n_0 ));
  LUT5 #(
    .INIT(32'h8800AAF0)) 
    \cat_OBUF[6]_inst_i_37 
       (.I0(MemData[15]),
        .I1(led_OBUF[5]),
        .I2(Instr[15]),
        .I3(sw_IBUF[1]),
        .I4(sw_IBUF[0]),
        .O(\cat_OBUF[6]_inst_i_37_n_0 ));
  LUT5 #(
    .INIT(32'h8800AAF0)) 
    \cat_OBUF[6]_inst_i_39 
       (.I0(MemData[11]),
        .I1(led_OBUF[5]),
        .I2(\cat[0] [4]),
        .I3(sw_IBUF[1]),
        .I4(sw_IBUF[0]),
        .O(\cat_OBUF[6]_inst_i_39_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
    \cat_OBUF[6]_inst_i_4 
       (.I0(\cat_OBUF[6]_inst_i_14_n_0 ),
        .I1(\cat_OBUF[6]_inst_i_15_n_0 ),
        .I2(\cat_OBUF[6]_inst_i_16_n_0 ),
        .I3(\cat_OBUF[6]_inst_i_17_n_0 ),
        .I4(\mux_rez_reg[2] ),
        .I5(\cat_OBUF[6]_inst_i_19_n_0 ),
        .O(\comp_ssd/numar__11 [2]));
  LUT6 #(
    .INIT(64'hCFAFCFA0C0AFC0A0)) 
    \cat_OBUF[6]_inst_i_41 
       (.I0(plusOp_carry__0_n_5),
        .I1(RD2[7]),
        .I2(sw_IBUF[0]),
        .I3(sw_IBUF[1]),
        .I4(\cat[0] [0]),
        .I5(rd1[7]),
        .O(\cat_OBUF[6]_inst_i_41_n_0 ));
  LUT5 #(
    .INIT(32'h008C0080)) 
    \cat_OBUF[6]_inst_i_42 
       (.I0(plusOp_carry_n_5),
        .I1(\iesire_num_reg[15]_4 ),
        .I2(sw_IBUF[0]),
        .I3(sw_IBUF[1]),
        .I4(Instr[15]),
        .O(\cat_OBUF[6]_inst_i_42_n_0 ));
  LUT6 #(
    .INIT(64'hCFAFCFA0C0AFC0A0)) 
    \cat_OBUF[6]_inst_i_44 
       (.I0(Jump_Adress[15]),
        .I1(RD2[15]),
        .I2(sw_IBUF[0]),
        .I3(sw_IBUF[1]),
        .I4(Instr[15]),
        .I5(rd1[15]),
        .O(\cat_OBUF[6]_inst_i_44_n_0 ));
  LUT6 #(
    .INIT(64'hA8A88888AA888888)) 
    \cat_OBUF[6]_inst_i_45 
       (.I0(\iesire_num_reg[14] ),
        .I1(\cat_OBUF[6]_inst_i_72_n_0 ),
        .I2(RD2[11]),
        .I3(plusOp_carry__1_n_5),
        .I4(sw_IBUF[0]),
        .I5(sw_IBUF[1]),
        .O(\cat_OBUF[6]_inst_i_45_n_0 ));
  LUT5 #(
    .INIT(32'h8800AAF0)) 
    \cat_OBUF[6]_inst_i_46 
       (.I0(MemData[10]),
        .I1(led_OBUF[5]),
        .I2(\cat[0] [3]),
        .I3(sw_IBUF[1]),
        .I4(sw_IBUF[0]),
        .O(\cat_OBUF[6]_inst_i_46_n_0 ));
  LUT5 #(
    .INIT(32'h8800AAF0)) 
    \cat_OBUF[6]_inst_i_47 
       (.I0(MemData[14]),
        .I1(led_OBUF[5]),
        .I2(Instr[14]),
        .I3(sw_IBUF[1]),
        .I4(sw_IBUF[0]),
        .O(\cat_OBUF[6]_inst_i_47_n_0 ));
  LUT6 #(
    .INIT(64'hAAAB000122230001)) 
    \cat_OBUF[6]_inst_i_48 
       (.I0(sw_IBUF[1]),
        .I1(sw_IBUF[0]),
        .I2(PC_out_reg_rep[3]),
        .I3(\led_OBUF[7]_inst_i_2_n_0 ),
        .I4(MemData[2]),
        .I5(led_OBUF[5]),
        .O(\cat_OBUF[6]_inst_i_48_n_0 ));
  LUT6 #(
    .INIT(64'hAAAB000122230001)) 
    \cat_OBUF[6]_inst_i_49 
       (.I0(sw_IBUF[1]),
        .I1(sw_IBUF[0]),
        .I2(PC_out_reg_rep[3]),
        .I3(\led_OBUF[7]_inst_i_2_n_0 ),
        .I4(MemData[6]),
        .I5(led_OBUF[5]),
        .O(\cat_OBUF[6]_inst_i_49_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
    \cat_OBUF[6]_inst_i_5 
       (.I0(\iesire_num_reg[15]_1 ),
        .I1(\cat_OBUF[6]_inst_i_21_n_0 ),
        .I2(\cat_OBUF[6]_inst_i_22_n_0 ),
        .I3(\cat_OBUF[6]_inst_i_23_n_0 ),
        .I4(\cat_OBUF[6]_inst_i_24_n_0 ),
        .I5(\cat_OBUF[6]_inst_i_25_n_0 ),
        .O(\cat_OBUF[6]_inst_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hA8A88888AA888888)) 
    \cat_OBUF[6]_inst_i_51 
       (.I0(\iesire_num_reg[15]_5 ),
        .I1(\cat_OBUF[6]_inst_i_73_n_0 ),
        .I2(RD2[6]),
        .I3(plusOp_carry__0_n_6),
        .I4(sw_IBUF[0]),
        .I5(sw_IBUF[1]),
        .O(\cat_OBUF[6]_inst_i_51_n_0 ));
  LUT6 #(
    .INIT(64'hCFAFCFA0C0AFC0A0)) 
    \cat_OBUF[6]_inst_i_53 
       (.I0(Jump_Adress[14]),
        .I1(RD2[14]),
        .I2(sw_IBUF[0]),
        .I3(sw_IBUF[1]),
        .I4(Instr[14]),
        .I5(rd1[14]),
        .O(\cat_OBUF[6]_inst_i_53_n_0 ));
  LUT6 #(
    .INIT(64'hCFAFCFA0C0AFC0A0)) 
    \cat_OBUF[6]_inst_i_55 
       (.I0(plusOp_carry__1_n_6),
        .I1(RD2[10]),
        .I2(sw_IBUF[0]),
        .I3(sw_IBUF[1]),
        .I4(\cat[0] [3]),
        .I5(rd1[10]),
        .O(\cat_OBUF[6]_inst_i_55_n_0 ));
  LUT6 #(
    .INIT(64'hAAAB000122230001)) 
    \cat_OBUF[6]_inst_i_56 
       (.I0(sw_IBUF[1]),
        .I1(sw_IBUF[0]),
        .I2(PC_out_reg_rep[3]),
        .I3(\led_OBUF[7]_inst_i_2_n_0 ),
        .I4(MemData[4]),
        .I5(led_OBUF[5]),
        .O(\cat_OBUF[6]_inst_i_56_n_0 ));
  LUT6 #(
    .INIT(64'hAAAB000122230001)) 
    \cat_OBUF[6]_inst_i_57 
       (.I0(sw_IBUF[1]),
        .I1(sw_IBUF[0]),
        .I2(PC_out_reg_rep[3]),
        .I3(\led_OBUF[7]_inst_i_2_n_0 ),
        .I4(MemData[0]),
        .I5(led_OBUF[5]),
        .O(\cat_OBUF[6]_inst_i_57_n_0 ));
  LUT5 #(
    .INIT(32'h8800AAF0)) 
    \cat_OBUF[6]_inst_i_58 
       (.I0(MemData[12]),
        .I1(led_OBUF[5]),
        .I2(\cat[0] [5]),
        .I3(sw_IBUF[1]),
        .I4(sw_IBUF[0]),
        .O(\cat_OBUF[6]_inst_i_58_n_0 ));
  LUT6 #(
    .INIT(64'hAAAB000122230001)) 
    \cat_OBUF[6]_inst_i_59 
       (.I0(sw_IBUF[1]),
        .I1(sw_IBUF[0]),
        .I2(PC_out_reg_rep[3]),
        .I3(\led_OBUF[7]_inst_i_2_n_0 ),
        .I4(MemData[8]),
        .I5(led_OBUF[5]),
        .O(\cat_OBUF[6]_inst_i_59_n_0 ));
  LUT6 #(
    .INIT(64'hA8A88888AA888888)) 
    \cat_OBUF[6]_inst_i_60 
       (.I0(\iesire_num_reg[15]_5 ),
        .I1(\cat_OBUF[6]_inst_i_74_n_0 ),
        .I2(RD2[4]),
        .I3(plusOp_carry_n_4),
        .I4(sw_IBUF[0]),
        .I5(sw_IBUF[1]),
        .O(\cat_OBUF[6]_inst_i_60_n_0 ));
  LUT5 #(
    .INIT(32'h004C0040)) 
    \cat_OBUF[6]_inst_i_61 
       (.I0(PC_out_reg[0]),
        .I1(\iesire_num_reg[15]_4 ),
        .I2(sw_IBUF[0]),
        .I3(sw_IBUF[1]),
        .I4(Instr[0]),
        .O(\cat_OBUF[6]_inst_i_61_n_0 ));
  LUT6 #(
    .INIT(64'hCFAFCFA0C0AFC0A0)) 
    \cat_OBUF[6]_inst_i_62 
       (.I0(plusOp_carry__1_n_4),
        .I1(RD2[12]),
        .I2(sw_IBUF[0]),
        .I3(sw_IBUF[1]),
        .I4(\cat[0] [5]),
        .I5(rd1[12]),
        .O(\cat_OBUF[6]_inst_i_62_n_0 ));
  LUT6 #(
    .INIT(64'hCFAFCFA0C0AFC0A0)) 
    \cat_OBUF[6]_inst_i_63 
       (.I0(plusOp_carry__0_n_4),
        .I1(RD2[8]),
        .I2(sw_IBUF[0]),
        .I3(sw_IBUF[1]),
        .I4(\cat[0] [1]),
        .I5(rd1[8]),
        .O(\cat_OBUF[6]_inst_i_63_n_0 ));
  LUT5 #(
    .INIT(32'h8800AAF0)) 
    \cat_OBUF[6]_inst_i_64 
       (.I0(MemData[9]),
        .I1(led_OBUF[5]),
        .I2(\cat[0] [2]),
        .I3(sw_IBUF[1]),
        .I4(sw_IBUF[0]),
        .O(\cat_OBUF[6]_inst_i_64_n_0 ));
  LUT5 #(
    .INIT(32'h8800AAF0)) 
    \cat_OBUF[6]_inst_i_65 
       (.I0(MemData[13]),
        .I1(led_OBUF[5]),
        .I2(Instr[13]),
        .I3(sw_IBUF[1]),
        .I4(sw_IBUF[0]),
        .O(\cat_OBUF[6]_inst_i_65_n_0 ));
  LUT6 #(
    .INIT(64'hAAAB000122230001)) 
    \cat_OBUF[6]_inst_i_66 
       (.I0(sw_IBUF[1]),
        .I1(sw_IBUF[0]),
        .I2(PC_out_reg_rep[3]),
        .I3(\led_OBUF[7]_inst_i_2_n_0 ),
        .I4(MemData[1]),
        .I5(led_OBUF[5]),
        .O(\cat_OBUF[6]_inst_i_66_n_0 ));
  LUT6 #(
    .INIT(64'hAAAB000122230001)) 
    \cat_OBUF[6]_inst_i_67 
       (.I0(sw_IBUF[1]),
        .I1(sw_IBUF[0]),
        .I2(PC_out_reg_rep[3]),
        .I3(\led_OBUF[7]_inst_i_2_n_0 ),
        .I4(MemData[5]),
        .I5(led_OBUF[5]),
        .O(\cat_OBUF[6]_inst_i_67_n_0 ));
  LUT6 #(
    .INIT(64'hA8A88888AA888888)) 
    \cat_OBUF[6]_inst_i_68 
       (.I0(\iesire_num_reg[15]_5 ),
        .I1(\cat_OBUF[6]_inst_i_76_n_0 ),
        .I2(RD2[5]),
        .I3(plusOp_carry__0_n_7),
        .I4(sw_IBUF[0]),
        .I5(sw_IBUF[1]),
        .O(\cat_OBUF[6]_inst_i_68_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
    \cat_OBUF[6]_inst_i_7 
       (.I0(\cat_OBUF[6]_inst_i_26_n_0 ),
        .I1(\cat_OBUF[6]_inst_i_27_n_0 ),
        .I2(\cat_OBUF[6]_inst_i_28_n_0 ),
        .I3(\cat_OBUF[6]_inst_i_29_n_0 ),
        .I4(\mux_rez_reg[2]_0 ),
        .I5(\cat_OBUF[6]_inst_i_31_n_0 ),
        .O(\comp_ssd/numar__11 [1]));
  LUT6 #(
    .INIT(64'hCFAFCFA0C0AFC0A0)) 
    \cat_OBUF[6]_inst_i_70 
       (.I0(Jump_Adress[13]),
        .I1(RD2[13]),
        .I2(sw_IBUF[0]),
        .I3(sw_IBUF[1]),
        .I4(Instr[13]),
        .I5(rd1[13]),
        .O(\cat_OBUF[6]_inst_i_70_n_0 ));
  LUT6 #(
    .INIT(64'hCFAFCFA0C0AFC0A0)) 
    \cat_OBUF[6]_inst_i_71 
       (.I0(plusOp_carry__1_n_7),
        .I1(RD2[9]),
        .I2(sw_IBUF[0]),
        .I3(sw_IBUF[1]),
        .I4(\cat[0] [2]),
        .I5(rd1[9]),
        .O(\cat_OBUF[6]_inst_i_71_n_0 ));
  LUT6 #(
    .INIT(64'h00000000AAAA0030)) 
    \cat_OBUF[6]_inst_i_72 
       (.I0(rd1[11]),
        .I1(PC_out_reg_rep[0]),
        .I2(\cat_OBUF[6]_inst_i_77_n_0 ),
        .I3(\led_OBUF[7]_inst_i_2_n_0 ),
        .I4(sw_IBUF[1]),
        .I5(sw_IBUF[0]),
        .O(\cat_OBUF[6]_inst_i_72_n_0 ));
  LUT6 #(
    .INIT(64'h00000000AAAA3000)) 
    \cat_OBUF[6]_inst_i_73 
       (.I0(rd1[6]),
        .I1(PC_out_reg_rep[1]),
        .I2(\cat_OBUF[6]_inst_i_78_n_0 ),
        .I3(\cat_OBUF[6]_inst_i_79_n_0 ),
        .I4(sw_IBUF[1]),
        .I5(sw_IBUF[0]),
        .O(\cat_OBUF[6]_inst_i_73_n_0 ));
  LUT6 #(
    .INIT(64'h00000000AAAA00C0)) 
    \cat_OBUF[6]_inst_i_74 
       (.I0(rd1[4]),
        .I1(\cat_OBUF[6]_inst_i_79_n_0 ),
        .I2(PC_out_reg_rep[3]),
        .I3(PC_out_reg_rep[1]),
        .I4(sw_IBUF[1]),
        .I5(sw_IBUF[0]),
        .O(\cat_OBUF[6]_inst_i_74_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT4 #(
    .INIT(16'h0004)) 
    \cat_OBUF[6]_inst_i_75 
       (.I0(PC_out_reg_rep[3]),
        .I1(PC_out_reg_rep[0]),
        .I2(PC_out_reg_rep[2]),
        .I3(\led_OBUF[7]_inst_i_2_n_0 ),
        .O(Instr[0]));
  LUT6 #(
    .INIT(64'h00000000AAAA3000)) 
    \cat_OBUF[6]_inst_i_76 
       (.I0(rd1[5]),
        .I1(PC_out_reg_rep[0]),
        .I2(\cat_OBUF[6]_inst_i_80_n_0 ),
        .I3(\cat_OBUF[6]_inst_i_79_n_0 ),
        .I4(sw_IBUF[1]),
        .I5(sw_IBUF[0]),
        .O(\cat_OBUF[6]_inst_i_76_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \cat_OBUF[6]_inst_i_77 
       (.I0(PC_out_reg_rep[2]),
        .I1(PC_out_reg_rep[3]),
        .O(\cat_OBUF[6]_inst_i_77_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \cat_OBUF[6]_inst_i_78 
       (.I0(PC_out_reg_rep[3]),
        .I1(PC_out_reg_rep[0]),
        .O(\cat_OBUF[6]_inst_i_78_n_0 ));
  LUT5 #(
    .INIT(32'h00000001)) 
    \cat_OBUF[6]_inst_i_79 
       (.I0(PC_out_reg_rep[5]),
        .I1(PC_out_reg_rep[4]),
        .I2(PC_out_reg_rep[6]),
        .I3(PC_out_reg_rep[7]),
        .I4(PC_out_reg_rep[2]),
        .O(\cat_OBUF[6]_inst_i_79_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \cat_OBUF[6]_inst_i_80 
       (.I0(PC_out_reg_rep[1]),
        .I1(PC_out_reg_rep[3]),
        .O(\cat_OBUF[6]_inst_i_80_n_0 ));
  LUT6 #(
    .INIT(64'hFFFF00002A000000)) 
    \cat_OBUF[6]_inst_i_9 
       (.I0(data0[7]),
        .I1(led_OBUF[5]),
        .I2(sw_IBUF[1]),
        .I3(sw_IBUF[0]),
        .I4(\iesire_num_reg[15]_9 ),
        .I5(\cat_OBUF[6]_inst_i_33_n_0 ),
        .O(\cat_OBUF[6]_inst_i_9_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT5 #(
    .INIT(32'hEAFAFAFA)) 
    \led_OBUF[0]_inst_i_1 
       (.I0(\led_OBUF[7]_inst_i_2_n_0 ),
        .I1(PC_out_reg_rep[2]),
        .I2(PC_out_reg_rep[3]),
        .I3(PC_out_reg_rep[1]),
        .I4(PC_out_reg_rep[0]),
        .O(led_OBUF[0]));
  LUT5 #(
    .INIT(32'hFBFFFFF5)) 
    \led_OBUF[1]_inst_i_1 
       (.I0(PC_out_reg_rep[2]),
        .I1(PC_out_reg_rep[0]),
        .I2(\led_OBUF[7]_inst_i_2_n_0 ),
        .I3(PC_out_reg_rep[1]),
        .I4(PC_out_reg_rep[3]),
        .O(led_OBUF[1]));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT2 #(
    .INIT(4'h1)) 
    \led_OBUF[3]_inst_i_1 
       (.I0(\led_OBUF[7]_inst_i_2_n_0 ),
        .I1(PC_out_reg_rep[3]),
        .O(led_OBUF[2]));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT5 #(
    .INIT(32'h04000000)) 
    \led_OBUF[5]_inst_i_1 
       (.I0(PC_out_reg_rep[2]),
        .I1(PC_out_reg_rep[0]),
        .I2(\led_OBUF[7]_inst_i_2_n_0 ),
        .I3(PC_out_reg_rep[1]),
        .I4(PC_out_reg_rep[3]),
        .O(led_OBUF[3]));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT4 #(
    .INIT(16'h0004)) 
    \led_OBUF[6]_inst_i_1 
       (.I0(\led_OBUF[7]_inst_i_2_n_0 ),
        .I1(PC_out_reg_rep[2]),
        .I2(PC_out_reg_rep[3]),
        .I3(PC_out_reg_rep[1]),
        .O(led_OBUF[4]));
  LUT4 #(
    .INIT(16'h0400)) 
    \led_OBUF[7]_inst_i_1 
       (.I0(PC_out_reg_rep[3]),
        .I1(PC_out_reg_rep[1]),
        .I2(\led_OBUF[7]_inst_i_2_n_0 ),
        .I3(PC_out_reg_rep[2]),
        .O(led_OBUF[5]));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \led_OBUF[7]_inst_i_2 
       (.I0(PC_out_reg_rep[7]),
        .I1(PC_out_reg_rep[6]),
        .I2(PC_out_reg_rep[4]),
        .I3(PC_out_reg_rep[5]),
        .O(\led_OBUF[7]_inst_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT5 #(
    .INIT(32'h00100515)) 
    \mux_rez[0]_i_1 
       (.I0(\led_OBUF[7]_inst_i_2_n_0 ),
        .I1(PC_out_reg_rep[2]),
        .I2(PC_out_reg_rep[3]),
        .I3(PC_out_reg_rep[1]),
        .I4(PC_out_reg_rep[0]),
        .O(D[0]));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT5 #(
    .INIT(32'h04051100)) 
    \mux_rez[1]_i_1 
       (.I0(\led_OBUF[7]_inst_i_2_n_0 ),
        .I1(PC_out_reg_rep[2]),
        .I2(PC_out_reg_rep[3]),
        .I3(PC_out_reg_rep[1]),
        .I4(PC_out_reg_rep[0]),
        .O(D[1]));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT5 #(
    .INIT(32'h01000010)) 
    \mux_rez[2]_i_1 
       (.I0(\led_OBUF[7]_inst_i_2_n_0 ),
        .I1(PC_out_reg_rep[2]),
        .I2(PC_out_reg_rep[3]),
        .I3(PC_out_reg_rep[1]),
        .I4(PC_out_reg_rep[0]),
        .O(D[2]));
  CARRY4 plusOp_carry
       (.CI(1'b0),
        .CO({plusOp_carry_n_0,NLW_plusOp_carry_CO_UNCONNECTED[2:0]}),
        .CYINIT(PC_out_reg[0]),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({plusOp_carry_n_4,plusOp_carry_n_5,O}),
        .S(PC_out_reg[4:1]));
  CARRY4 plusOp_carry__0
       (.CI(plusOp_carry_n_0),
        .CO({plusOp_carry__0_n_0,NLW_plusOp_carry__0_CO_UNCONNECTED[2:0]}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({plusOp_carry__0_n_4,plusOp_carry__0_n_5,plusOp_carry__0_n_6,plusOp_carry__0_n_7}),
        .S(PC_out_reg[8:5]));
  CARRY4 plusOp_carry__1
       (.CI(plusOp_carry__0_n_0),
        .CO({plusOp_carry__1_n_0,NLW_plusOp_carry__1_CO_UNCONNECTED[2:0]}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({plusOp_carry__1_n_4,plusOp_carry__1_n_5,plusOp_carry__1_n_6,plusOp_carry__1_n_7}),
        .S(PC_out_reg[12:9]));
  CARRY4 plusOp_carry__2
       (.CI(plusOp_carry__1_n_0),
        .CO(NLW_plusOp_carry__2_CO_UNCONNECTED[3:0]),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({NLW_plusOp_carry__2_O_UNCONNECTED[3],Jump_Adress}),
        .S({1'b0,PC_out_reg[15:13]}));
  LUT4 #(
    .INIT(16'h0008)) 
    reg_file_reg_r1_0_7_0_5_i_7
       (.I0(PC_out_reg_rep[0]),
        .I1(PC_out_reg_rep[2]),
        .I2(PC_out_reg_rep[3]),
        .I3(\led_OBUF[7]_inst_i_2_n_0 ),
        .O(\cat[0] [5]));
  LUT4 #(
    .INIT(16'h0004)) 
    reg_file_reg_r1_0_7_0_5_i_8
       (.I0(PC_out_reg_rep[0]),
        .I1(PC_out_reg_rep[2]),
        .I2(PC_out_reg_rep[3]),
        .I3(\led_OBUF[7]_inst_i_2_n_0 ),
        .O(\cat[0] [4]));
  LUT5 #(
    .INIT(32'h01010010)) 
    reg_file_reg_r1_0_7_0_5_i_9
       (.I0(\led_OBUF[7]_inst_i_2_n_0 ),
        .I1(PC_out_reg_rep[0]),
        .I2(PC_out_reg_rep[3]),
        .I3(PC_out_reg_rep[1]),
        .I4(PC_out_reg_rep[2]),
        .O(\cat[0] [3]));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT5 #(
    .INIT(32'h00000080)) 
    reg_file_reg_r1_0_7_12_15_i_10
       (.I0(PC_out_reg_rep[0]),
        .I1(PC_out_reg_rep[1]),
        .I2(PC_out_reg_rep[3]),
        .I3(PC_out_reg_rep[2]),
        .I4(\led_OBUF[7]_inst_i_2_n_0 ),
        .O(Instr[15]));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT5 #(
    .INIT(32'h04500050)) 
    reg_file_reg_r1_0_7_12_15_i_11
       (.I0(\led_OBUF[7]_inst_i_2_n_0 ),
        .I1(PC_out_reg_rep[1]),
        .I2(PC_out_reg_rep[2]),
        .I3(PC_out_reg_rep[3]),
        .I4(PC_out_reg_rep[0]),
        .O(Instr[14]));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT5 #(
    .INIT(32'h0400050F)) 
    reg_file_reg_r1_0_7_12_15_i_12
       (.I0(PC_out_reg_rep[2]),
        .I1(PC_out_reg_rep[0]),
        .I2(\led_OBUF[7]_inst_i_2_n_0 ),
        .I3(PC_out_reg_rep[1]),
        .I4(PC_out_reg_rep[3]),
        .O(Instr[13]));
  LUT5 #(
    .INIT(32'h01EFFE10)) 
    reg_file_reg_r1_0_7_12_15_i_6
       (.I0(\led_OBUF[7]_inst_i_2_n_0 ),
        .I1(PC_out_reg_rep[3]),
        .I2(Instr[15]),
        .I3(RD2[15]),
        .I4(rd1[15]),
        .O(\cat[0]_2 [3]));
  LUT5 #(
    .INIT(32'h0FE11EF0)) 
    reg_file_reg_r1_0_7_12_15_i_7
       (.I0(\led_OBUF[7]_inst_i_2_n_0 ),
        .I1(PC_out_reg_rep[3]),
        .I2(rd1[14]),
        .I3(RD2[14]),
        .I4(Instr[14]),
        .O(\cat[0]_2 [2]));
  LUT5 #(
    .INIT(32'h0FE11EF0)) 
    reg_file_reg_r1_0_7_12_15_i_8
       (.I0(\led_OBUF[7]_inst_i_2_n_0 ),
        .I1(PC_out_reg_rep[3]),
        .I2(rd1[13]),
        .I3(RD2[13]),
        .I4(Instr[13]),
        .O(\cat[0]_2 [1]));
  LUT5 #(
    .INIT(32'h0FE11EF0)) 
    reg_file_reg_r1_0_7_12_15_i_9
       (.I0(\led_OBUF[7]_inst_i_2_n_0 ),
        .I1(PC_out_reg_rep[3]),
        .I2(rd1[12]),
        .I3(RD2[12]),
        .I4(\cat[0] [5]),
        .O(\cat[0]_2 [0]));
  LUT5 #(
    .INIT(32'h0FE11EF0)) 
    reg_file_reg_r1_0_7_6_11_i_10
       (.I0(\led_OBUF[7]_inst_i_2_n_0 ),
        .I1(PC_out_reg_rep[3]),
        .I2(rd1[9]),
        .I3(RD2[9]),
        .I4(\cat[0] [2]),
        .O(\cat[0]_0 [1]));
  LUT4 #(
    .INIT(16'h0FE1)) 
    reg_file_reg_r1_0_7_6_11_i_11
       (.I0(\led_OBUF[7]_inst_i_2_n_0 ),
        .I1(PC_out_reg_rep[3]),
        .I2(rd1[8]),
        .I3(RD2[8]),
        .O(\cat[0]_0 [0]));
  LUT5 #(
    .INIT(32'h0FE11EF0)) 
    reg_file_reg_r1_0_7_6_11_i_8
       (.I0(\led_OBUF[7]_inst_i_2_n_0 ),
        .I1(PC_out_reg_rep[3]),
        .I2(rd1[11]),
        .I3(RD2[11]),
        .I4(\cat[0] [4]),
        .O(\cat[0]_0 [3]));
  LUT5 #(
    .INIT(32'h0FE11EF0)) 
    reg_file_reg_r1_0_7_6_11_i_9
       (.I0(\led_OBUF[7]_inst_i_2_n_0 ),
        .I1(PC_out_reg_rep[3]),
        .I2(rd1[10]),
        .I3(RD2[10]),
        .I4(\cat[0] [3]),
        .O(\cat[0]_0 [2]));
  LUT5 #(
    .INIT(32'h00101000)) 
    reg_file_reg_r2_0_7_0_5_i_1
       (.I0(PC_out_reg_rep[2]),
        .I1(\led_OBUF[7]_inst_i_2_n_0 ),
        .I2(PC_out_reg_rep[1]),
        .I3(PC_out_reg_rep[0]),
        .I4(PC_out_reg_rep[3]),
        .O(\cat[0] [2]));
  LUT5 #(
    .INIT(32'h10011054)) 
    reg_file_reg_r2_0_7_0_5_i_2
       (.I0(\led_OBUF[7]_inst_i_2_n_0 ),
        .I1(PC_out_reg_rep[3]),
        .I2(PC_out_reg_rep[0]),
        .I3(PC_out_reg_rep[2]),
        .I4(PC_out_reg_rep[1]),
        .O(\cat[0] [1]));
  LUT5 #(
    .INIT(32'h0000005D)) 
    reg_file_reg_r2_0_7_0_5_i_3
       (.I0(PC_out_reg_rep[3]),
        .I1(PC_out_reg_rep[1]),
        .I2(PC_out_reg_rep[2]),
        .I3(\led_OBUF[7]_inst_i_2_n_0 ),
        .I4(PC_out_reg_rep[0]),
        .O(\cat[0] [0]));
endmodule

(* ECO_CHECKSUM = "27c1fbbc" *) 
(* NotValidForBitStream *)
module MIPS
   (clk,
    btn,
    sw,
    led,
    an,
    cat);
  input clk;
  input [4:0]btn;
  input [15:0]sw;
  output [15:0]led;
  output [3:0]an;
  output [6:0]cat;

  wire [12:7]Instr;
  wire [15:0]MemData;
  wire [15:0]RD2;
  wire [3:0]an;
  wire [3:0]an_OBUF;
  wire [4:0]btn;
  wire [2:0]btn_IBUF;
  wire [6:0]cat;
  wire [6:0]cat_OBUF;
  wire clk;
  wire clk_IBUF;
  wire clk_IBUF_BUFG;
  wire comp_ID_n_0;
  wire comp_ID_n_17;
  wire comp_InstF_n_0;
  wire comp_InstF_n_1;
  wire comp_InstF_n_15;
  wire comp_InstF_n_16;
  wire comp_InstF_n_17;
  wire comp_InstF_n_24;
  wire comp_InstF_n_25;
  wire comp_InstF_n_26;
  wire comp_InstF_n_27;
  wire comp_InstF_n_28;
  wire comp_InstF_n_29;
  wire comp_InstF_n_30;
  wire comp_InstF_n_31;
  wire comp_InstF_n_32;
  wire comp_InstF_n_33;
  wire comp_InstF_n_34;
  wire comp_InstF_n_35;
  wire comp_InstF_n_36;
  wire comp_InstF_n_37;
  wire comp_InstF_n_38;
  wire comp_InstF_n_39;
  wire comp_mpg1_n_14;
  wire comp_mpg1_n_15;
  wire comp_mpg1_n_16;
  wire comp_mpg1_n_17;
  wire comp_mpg1_n_18;
  wire comp_mpg1_n_19;
  wire comp_mpg1_n_2;
  wire comp_mpg1_n_3;
  wire comp_mpg1_n_4;
  wire comp_mpg1_n_5;
  wire comp_mpg1_n_6;
  wire comp_mpg1_n_7;
  wire comp_mpg1_n_8;
  wire comp_mpg1_n_9;
  wire comp_mpg2_n_0;
  wire [15:0]data0;
  wire eqOp;
  wire [15:0]led;
  wire [15:0]led1;
  wire [7:0]led_OBUF;
  wire reset;
  wire [15:0]sw;
  wire [7:5]sw_IBUF;
  wire [15:0]wd;

initial begin
 $sdf_annotate("MIPS_time_impl.sdf",,,,"tool_control");
end
  OBUF \an_OBUF[0]_inst 
       (.I(an_OBUF[0]),
        .O(an[0]));
  OBUF \an_OBUF[1]_inst 
       (.I(an_OBUF[1]),
        .O(an[1]));
  OBUF \an_OBUF[2]_inst 
       (.I(an_OBUF[2]),
        .O(an[2]));
  OBUF \an_OBUF[3]_inst 
       (.I(an_OBUF[3]),
        .O(an[3]));
  IBUF \btn_IBUF[0]_inst 
       (.I(btn[0]),
        .O(btn_IBUF[0]));
  IBUF \btn_IBUF[1]_inst 
       (.I(btn[1]),
        .O(btn_IBUF[1]));
  IBUF \btn_IBUF[2]_inst 
       (.I(btn[2]),
        .O(btn_IBUF[2]));
  OBUF \cat_OBUF[0]_inst 
       (.I(cat_OBUF[0]),
        .O(cat[0]));
  OBUF \cat_OBUF[1]_inst 
       (.I(cat_OBUF[1]),
        .O(cat[1]));
  OBUF \cat_OBUF[2]_inst 
       (.I(cat_OBUF[2]),
        .O(cat[2]));
  OBUF \cat_OBUF[3]_inst 
       (.I(cat_OBUF[3]),
        .O(cat[3]));
  OBUF \cat_OBUF[4]_inst 
       (.I(cat_OBUF[4]),
        .O(cat[4]));
  OBUF \cat_OBUF[5]_inst 
       (.I(cat_OBUF[5]),
        .O(cat[5]));
  OBUF \cat_OBUF[6]_inst 
       (.I(cat_OBUF[6]),
        .O(cat[6]));
  BUFG clk_IBUF_BUFG_inst
       (.I(clk_IBUF),
        .O(clk_IBUF_BUFG));
  IBUF clk_IBUF_inst
       (.I(clk),
        .O(clk_IBUF));
  ID comp_ID
       (.D({comp_InstF_n_15,comp_InstF_n_16,comp_InstF_n_17}),
        .Instr(Instr),
        .O({comp_InstF_n_0,comp_InstF_n_1}),
        .\PC_out_reg_rep[3] ({comp_InstF_n_28,comp_InstF_n_29,comp_InstF_n_30,comp_InstF_n_31}),
        .\PC_out_reg_rep[3]_0 ({comp_InstF_n_24,comp_InstF_n_25,comp_InstF_n_26,comp_InstF_n_27}),
        .\PC_out_reg_rep[3]_1 ({comp_InstF_n_36,comp_InstF_n_37,comp_InstF_n_38,comp_InstF_n_39}),
        .RD2(RD2),
        .S({comp_InstF_n_32,comp_InstF_n_33,comp_InstF_n_34,comp_InstF_n_35}),
        .\cat[0] (comp_ID_n_0),
        .\cat[0]_0 (comp_ID_n_17),
        .clk_IBUF_BUFG(clk_IBUF_BUFG),
        .data0(data0),
        .\iesire_num_reg[15] (comp_mpg1_n_8),
        .led_OBUF(led_OBUF[1]),
        .rd1(led1),
        .sw_IBUF(sw_IBUF[6:5]),
        .wd(wd));
  InstF comp_InstF
       (.D({comp_InstF_n_15,comp_InstF_n_16,comp_InstF_n_17}),
        .E(comp_mpg2_n_0),
        .MemData(MemData),
        .O({comp_InstF_n_0,comp_InstF_n_1}),
        .RD2(RD2),
        .S({comp_InstF_n_32,comp_InstF_n_33,comp_InstF_n_34,comp_InstF_n_35}),
        .\cat[0] (Instr),
        .\cat[0]_0 ({comp_InstF_n_24,comp_InstF_n_25,comp_InstF_n_26,comp_InstF_n_27}),
        .\cat[0]_1 ({comp_InstF_n_28,comp_InstF_n_29,comp_InstF_n_30,comp_InstF_n_31}),
        .\cat[0]_2 ({comp_InstF_n_36,comp_InstF_n_37,comp_InstF_n_38,comp_InstF_n_39}),
        .cat_OBUF(cat_OBUF),
        .clk_IBUF_BUFG(clk_IBUF_BUFG),
        .data0(data0),
        .\iesire_num_reg[14] (comp_mpg1_n_17),
        .\iesire_num_reg[14]_0 (comp_mpg1_n_16),
        .\iesire_num_reg[15] (comp_mpg1_n_6),
        .\iesire_num_reg[15]_0 (comp_mpg1_n_7),
        .\iesire_num_reg[15]_1 (comp_mpg1_n_4),
        .\iesire_num_reg[15]_10 (comp_mpg1_n_18),
        .\iesire_num_reg[15]_2 (comp_mpg1_n_5),
        .\iesire_num_reg[15]_3 (comp_mpg1_n_19),
        .\iesire_num_reg[15]_4 (comp_mpg1_n_8),
        .\iesire_num_reg[15]_5 (comp_mpg1_n_15),
        .\iesire_num_reg[15]_6 (comp_mpg1_n_3),
        .\iesire_num_reg[15]_7 (comp_mpg1_n_2),
        .\iesire_num_reg[15]_8 (comp_mpg1_n_9),
        .\iesire_num_reg[15]_9 (comp_mpg1_n_14),
        .led_OBUF({led_OBUF[7:5],led_OBUF[2:0]}),
        .\mux_rez_reg[2] (comp_ID_n_0),
        .\mux_rez_reg[2]_0 (comp_ID_n_17),
        .rd1(led1),
        .reset(reset),
        .sw_IBUF(sw_IBUF[6:5]));
  RAM comp_RAM
       (.MemData(MemData),
        .RD2(RD2),
        .clk_IBUF_BUFG(clk_IBUF_BUFG),
        .data0(data0),
        .en(btn_IBUF[2]),
        .led_OBUF(led_OBUF[7]),
        .wd(wd));
  MPG comp_mpg1
       (.RD2({RD2[3],RD2[0]}),
        .an_OBUF(an_OBUF),
        .btn_IBUF(btn_IBUF[0]),
        .\cat[0] (comp_mpg1_n_2),
        .\cat[0]_0 (comp_mpg1_n_3),
        .\cat[0]_1 (comp_mpg1_n_4),
        .\cat[0]_10 (comp_mpg1_n_19),
        .\cat[0]_2 (comp_mpg1_n_5),
        .\cat[0]_3 (comp_mpg1_n_8),
        .\cat[0]_4 (comp_mpg1_n_9),
        .\cat[0]_5 (comp_mpg1_n_14),
        .\cat[0]_6 (comp_mpg1_n_15),
        .\cat[0]_7 (comp_mpg1_n_16),
        .\cat[0]_8 (comp_mpg1_n_17),
        .\cat[0]_9 (comp_mpg1_n_18),
        .\cat[6] (comp_mpg1_n_6),
        .\cat[6]_0 (comp_mpg1_n_7),
        .clk_IBUF_BUFG(clk_IBUF_BUFG),
        .eqOp(eqOp),
        .rd1(led1[3:0]),
        .reset(reset),
        .sw_IBUF(sw_IBUF));
  MPG_0 comp_mpg2
       (.E(comp_mpg2_n_0),
        .btn_IBUF(btn_IBUF[1]),
        .clk_IBUF_BUFG(clk_IBUF_BUFG),
        .eqOp(eqOp));
  OBUF \led_OBUF[0]_inst 
       (.I(led_OBUF[0]),
        .O(led[0]));
  OBUFT \led_OBUF[10]_inst 
       (.I(1'b0),
        .O(led[10]),
        .T(1'b1));
  OBUFT \led_OBUF[11]_inst 
       (.I(1'b0),
        .O(led[11]),
        .T(1'b1));
  OBUFT \led_OBUF[12]_inst 
       (.I(1'b0),
        .O(led[12]),
        .T(1'b1));
  OBUFT \led_OBUF[13]_inst 
       (.I(1'b0),
        .O(led[13]),
        .T(1'b1));
  OBUFT \led_OBUF[14]_inst 
       (.I(1'b0),
        .O(led[14]),
        .T(1'b1));
  OBUFT \led_OBUF[15]_inst 
       (.I(1'b0),
        .O(led[15]),
        .T(1'b1));
  OBUF \led_OBUF[1]_inst 
       (.I(led_OBUF[1]),
        .O(led[1]));
  OBUF \led_OBUF[2]_inst 
       (.I(led_OBUF[2]),
        .O(led[2]));
  OBUF \led_OBUF[3]_inst 
       (.I(led_OBUF[2]),
        .O(led[3]));
  OBUF \led_OBUF[4]_inst 
       (.I(1'b0),
        .O(led[4]));
  OBUF \led_OBUF[5]_inst 
       (.I(led_OBUF[5]),
        .O(led[5]));
  OBUF \led_OBUF[6]_inst 
       (.I(led_OBUF[6]),
        .O(led[6]));
  OBUF \led_OBUF[7]_inst 
       (.I(led_OBUF[7]),
        .O(led[7]));
  OBUFT \led_OBUF[8]_inst 
       (.I(1'b0),
        .O(led[8]),
        .T(1'b1));
  OBUFT \led_OBUF[9]_inst 
       (.I(1'b0),
        .O(led[9]),
        .T(1'b1));
  IBUF \sw_IBUF[5]_inst 
       (.I(sw[5]),
        .O(sw_IBUF[5]));
  IBUF \sw_IBUF[6]_inst 
       (.I(sw[6]),
        .O(sw_IBUF[6]));
  IBUF \sw_IBUF[7]_inst 
       (.I(sw[7]),
        .O(sw_IBUF[7]));
endmodule

module MPG
   (eqOp,
    reset,
    \cat[0] ,
    \cat[0]_0 ,
    \cat[0]_1 ,
    \cat[0]_2 ,
    \cat[6] ,
    \cat[6]_0 ,
    \cat[0]_3 ,
    \cat[0]_4 ,
    an_OBUF,
    \cat[0]_5 ,
    \cat[0]_6 ,
    \cat[0]_7 ,
    \cat[0]_8 ,
    \cat[0]_9 ,
    \cat[0]_10 ,
    btn_IBUF,
    clk_IBUF_BUFG,
    sw_IBUF,
    rd1,
    RD2);
  output eqOp;
  output reset;
  output \cat[0] ;
  output \cat[0]_0 ;
  output \cat[0]_1 ;
  output \cat[0]_2 ;
  output \cat[6] ;
  output \cat[6]_0 ;
  output \cat[0]_3 ;
  output \cat[0]_4 ;
  output [3:0]an_OBUF;
  output \cat[0]_5 ;
  output \cat[0]_6 ;
  output \cat[0]_7 ;
  output \cat[0]_8 ;
  output \cat[0]_9 ;
  output \cat[0]_10 ;
  input [0:0]btn_IBUF;
  input clk_IBUF_BUFG;
  input [2:0]sw_IBUF;
  input [3:0]rd1;
  input [1:0]RD2;

  wire [1:0]RD2;
  wire [3:0]an_OBUF;
  wire [0:0]btn_IBUF;
  wire \cat[0] ;
  wire \cat[0]_0 ;
  wire \cat[0]_1 ;
  wire \cat[0]_10 ;
  wire \cat[0]_2 ;
  wire \cat[0]_3 ;
  wire \cat[0]_4 ;
  wire \cat[0]_5 ;
  wire \cat[0]_6 ;
  wire \cat[0]_7 ;
  wire \cat[0]_8 ;
  wire \cat[0]_9 ;
  wire \cat[6] ;
  wire \cat[6]_0 ;
  wire clk_IBUF_BUFG;
  wire [15:14]\comp_ssd/iesire_num_reg ;
  wire [13:0]\comp_ssd/iesire_num_reg__0 ;
  wire eqOp;
  wire \iesire_num[0]_i_5_n_0 ;
  wire \iesire_num_reg[0]_i_1_n_0 ;
  wire \iesire_num_reg[0]_i_1_n_4 ;
  wire \iesire_num_reg[0]_i_1_n_5 ;
  wire \iesire_num_reg[0]_i_1_n_6 ;
  wire \iesire_num_reg[0]_i_1_n_7 ;
  wire \iesire_num_reg[12]_i_1_n_4 ;
  wire \iesire_num_reg[12]_i_1_n_5 ;
  wire \iesire_num_reg[12]_i_1_n_6 ;
  wire \iesire_num_reg[12]_i_1_n_7 ;
  wire \iesire_num_reg[4]_i_1_n_0 ;
  wire \iesire_num_reg[4]_i_1_n_4 ;
  wire \iesire_num_reg[4]_i_1_n_5 ;
  wire \iesire_num_reg[4]_i_1_n_6 ;
  wire \iesire_num_reg[4]_i_1_n_7 ;
  wire \iesire_num_reg[8]_i_1_n_0 ;
  wire \iesire_num_reg[8]_i_1_n_4 ;
  wire \iesire_num_reg[8]_i_1_n_5 ;
  wire \iesire_num_reg[8]_i_1_n_6 ;
  wire \iesire_num_reg[8]_i_1_n_7 ;
  wire q1;
  wire q1_i_2_n_0;
  wire q1_i_3_n_0;
  wire q1_i_4_n_0;
  wire q2;
  wire q3;
  wire [3:0]rd1;
  wire reset;
  wire [2:0]sw_IBUF;
  wire [2:0]\NLW_iesire_num_reg[0]_i_1_CO_UNCONNECTED ;
  wire [3:0]\NLW_iesire_num_reg[12]_i_1_CO_UNCONNECTED ;
  wire [2:0]\NLW_iesire_num_reg[4]_i_1_CO_UNCONNECTED ;
  wire [2:0]\NLW_iesire_num_reg[8]_i_1_CO_UNCONNECTED ;

  LUT2 #(
    .INIT(4'h2)) 
    \PC_out_rep[7]_i_1 
       (.I0(q2),
        .I1(q3),
        .O(reset));
  LUT2 #(
    .INIT(4'hE)) 
    \an_OBUF[0]_inst_i_1 
       (.I0(\comp_ssd/iesire_num_reg [14]),
        .I1(\comp_ssd/iesire_num_reg [15]),
        .O(an_OBUF[0]));
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT2 #(
    .INIT(4'hB)) 
    \an_OBUF[1]_inst_i_1 
       (.I0(\comp_ssd/iesire_num_reg [15]),
        .I1(\comp_ssd/iesire_num_reg [14]),
        .O(an_OBUF[1]));
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT2 #(
    .INIT(4'hB)) 
    \an_OBUF[2]_inst_i_1 
       (.I0(\comp_ssd/iesire_num_reg [14]),
        .I1(\comp_ssd/iesire_num_reg [15]),
        .O(an_OBUF[2]));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT2 #(
    .INIT(4'h7)) 
    \an_OBUF[3]_inst_i_1 
       (.I0(\comp_ssd/iesire_num_reg [14]),
        .I1(\comp_ssd/iesire_num_reg [15]),
        .O(an_OBUF[3]));
  LUT6 #(
    .INIT(64'h0000200000000000)) 
    \cat_OBUF[6]_inst_i_20 
       (.I0(sw_IBUF[1]),
        .I1(sw_IBUF[0]),
        .I2(\comp_ssd/iesire_num_reg [15]),
        .I3(\comp_ssd/iesire_num_reg [14]),
        .I4(sw_IBUF[2]),
        .I5(rd1[0]),
        .O(\cat[0]_1 ));
  LUT6 #(
    .INIT(64'h0000800000000000)) 
    \cat_OBUF[6]_inst_i_3 
       (.I0(sw_IBUF[1]),
        .I1(sw_IBUF[0]),
        .I2(\comp_ssd/iesire_num_reg [15]),
        .I3(\comp_ssd/iesire_num_reg [14]),
        .I4(sw_IBUF[2]),
        .I5(RD2[1]),
        .O(\cat[6]_0 ));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT3 #(
    .INIT(8'h08)) 
    \cat_OBUF[6]_inst_i_32 
       (.I0(sw_IBUF[2]),
        .I1(\comp_ssd/iesire_num_reg [15]),
        .I2(\comp_ssd/iesire_num_reg [14]),
        .O(\cat[0]_5 ));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT3 #(
    .INIT(8'h80)) 
    \cat_OBUF[6]_inst_i_34 
       (.I0(sw_IBUF[2]),
        .I1(\comp_ssd/iesire_num_reg [15]),
        .I2(\comp_ssd/iesire_num_reg [14]),
        .O(\cat[0]_4 ));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT3 #(
    .INIT(8'h02)) 
    \cat_OBUF[6]_inst_i_36 
       (.I0(sw_IBUF[2]),
        .I1(\comp_ssd/iesire_num_reg [15]),
        .I2(\comp_ssd/iesire_num_reg [14]),
        .O(\cat[0]_9 ));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT3 #(
    .INIT(8'h08)) 
    \cat_OBUF[6]_inst_i_38 
       (.I0(sw_IBUF[2]),
        .I1(\comp_ssd/iesire_num_reg [14]),
        .I2(\comp_ssd/iesire_num_reg [15]),
        .O(\cat[0]_7 ));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT3 #(
    .INIT(8'h02)) 
    \cat_OBUF[6]_inst_i_40 
       (.I0(\comp_ssd/iesire_num_reg [15]),
        .I1(\comp_ssd/iesire_num_reg [14]),
        .I2(sw_IBUF[2]),
        .O(\cat[0]_6 ));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT3 #(
    .INIT(8'h01)) 
    \cat_OBUF[6]_inst_i_43 
       (.I0(\comp_ssd/iesire_num_reg [15]),
        .I1(\comp_ssd/iesire_num_reg [14]),
        .I2(sw_IBUF[2]),
        .O(\cat[0]_10 ));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT3 #(
    .INIT(8'h08)) 
    \cat_OBUF[6]_inst_i_50 
       (.I0(\comp_ssd/iesire_num_reg [15]),
        .I1(\comp_ssd/iesire_num_reg [14]),
        .I2(sw_IBUF[2]),
        .O(\cat[0]_3 ));
  LUT6 #(
    .INIT(64'h0000200000000000)) 
    \cat_OBUF[6]_inst_i_52 
       (.I0(sw_IBUF[1]),
        .I1(sw_IBUF[0]),
        .I2(\comp_ssd/iesire_num_reg [15]),
        .I3(\comp_ssd/iesire_num_reg [14]),
        .I4(sw_IBUF[2]),
        .I5(rd1[2]),
        .O(\cat[0] ));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT3 #(
    .INIT(8'h02)) 
    \cat_OBUF[6]_inst_i_54 
       (.I0(\comp_ssd/iesire_num_reg [14]),
        .I1(\comp_ssd/iesire_num_reg [15]),
        .I2(sw_IBUF[2]),
        .O(\cat[0]_8 ));
  LUT6 #(
    .INIT(64'h0000800000000000)) 
    \cat_OBUF[6]_inst_i_6 
       (.I0(sw_IBUF[1]),
        .I1(sw_IBUF[0]),
        .I2(\comp_ssd/iesire_num_reg [15]),
        .I3(\comp_ssd/iesire_num_reg [14]),
        .I4(sw_IBUF[2]),
        .I5(RD2[0]),
        .O(\cat[6] ));
  LUT6 #(
    .INIT(64'h0000200000000000)) 
    \cat_OBUF[6]_inst_i_69 
       (.I0(sw_IBUF[1]),
        .I1(sw_IBUF[0]),
        .I2(\comp_ssd/iesire_num_reg [15]),
        .I3(\comp_ssd/iesire_num_reg [14]),
        .I4(sw_IBUF[2]),
        .I5(rd1[1]),
        .O(\cat[0]_0 ));
  LUT6 #(
    .INIT(64'h0000200000000000)) 
    \cat_OBUF[6]_inst_i_8 
       (.I0(sw_IBUF[1]),
        .I1(sw_IBUF[0]),
        .I2(\comp_ssd/iesire_num_reg [15]),
        .I3(\comp_ssd/iesire_num_reg [14]),
        .I4(sw_IBUF[2]),
        .I5(rd1[3]),
        .O(\cat[0]_2 ));
  LUT1 #(
    .INIT(2'h1)) 
    \iesire_num[0]_i_5 
       (.I0(\comp_ssd/iesire_num_reg__0 [0]),
        .O(\iesire_num[0]_i_5_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \iesire_num_reg[0] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\iesire_num_reg[0]_i_1_n_7 ),
        .Q(\comp_ssd/iesire_num_reg__0 [0]),
        .R(1'b0));
  CARRY4 \iesire_num_reg[0]_i_1 
       (.CI(1'b0),
        .CO({\iesire_num_reg[0]_i_1_n_0 ,\NLW_iesire_num_reg[0]_i_1_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b1}),
        .O({\iesire_num_reg[0]_i_1_n_4 ,\iesire_num_reg[0]_i_1_n_5 ,\iesire_num_reg[0]_i_1_n_6 ,\iesire_num_reg[0]_i_1_n_7 }),
        .S({\comp_ssd/iesire_num_reg__0 [3:1],\iesire_num[0]_i_5_n_0 }));
  FDRE #(
    .INIT(1'b0)) 
    \iesire_num_reg[10] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\iesire_num_reg[8]_i_1_n_5 ),
        .Q(\comp_ssd/iesire_num_reg__0 [10]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \iesire_num_reg[11] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\iesire_num_reg[8]_i_1_n_4 ),
        .Q(\comp_ssd/iesire_num_reg__0 [11]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \iesire_num_reg[12] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\iesire_num_reg[12]_i_1_n_7 ),
        .Q(\comp_ssd/iesire_num_reg__0 [12]),
        .R(1'b0));
  CARRY4 \iesire_num_reg[12]_i_1 
       (.CI(\iesire_num_reg[8]_i_1_n_0 ),
        .CO(\NLW_iesire_num_reg[12]_i_1_CO_UNCONNECTED [3:0]),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\iesire_num_reg[12]_i_1_n_4 ,\iesire_num_reg[12]_i_1_n_5 ,\iesire_num_reg[12]_i_1_n_6 ,\iesire_num_reg[12]_i_1_n_7 }),
        .S({\comp_ssd/iesire_num_reg ,\comp_ssd/iesire_num_reg__0 [13:12]}));
  FDRE #(
    .INIT(1'b0)) 
    \iesire_num_reg[13] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\iesire_num_reg[12]_i_1_n_6 ),
        .Q(\comp_ssd/iesire_num_reg__0 [13]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \iesire_num_reg[14] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\iesire_num_reg[12]_i_1_n_5 ),
        .Q(\comp_ssd/iesire_num_reg [14]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \iesire_num_reg[15] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\iesire_num_reg[12]_i_1_n_4 ),
        .Q(\comp_ssd/iesire_num_reg [15]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \iesire_num_reg[1] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\iesire_num_reg[0]_i_1_n_6 ),
        .Q(\comp_ssd/iesire_num_reg__0 [1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \iesire_num_reg[2] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\iesire_num_reg[0]_i_1_n_5 ),
        .Q(\comp_ssd/iesire_num_reg__0 [2]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \iesire_num_reg[3] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\iesire_num_reg[0]_i_1_n_4 ),
        .Q(\comp_ssd/iesire_num_reg__0 [3]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \iesire_num_reg[4] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\iesire_num_reg[4]_i_1_n_7 ),
        .Q(\comp_ssd/iesire_num_reg__0 [4]),
        .R(1'b0));
  CARRY4 \iesire_num_reg[4]_i_1 
       (.CI(\iesire_num_reg[0]_i_1_n_0 ),
        .CO({\iesire_num_reg[4]_i_1_n_0 ,\NLW_iesire_num_reg[4]_i_1_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\iesire_num_reg[4]_i_1_n_4 ,\iesire_num_reg[4]_i_1_n_5 ,\iesire_num_reg[4]_i_1_n_6 ,\iesire_num_reg[4]_i_1_n_7 }),
        .S(\comp_ssd/iesire_num_reg__0 [7:4]));
  FDRE #(
    .INIT(1'b0)) 
    \iesire_num_reg[5] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\iesire_num_reg[4]_i_1_n_6 ),
        .Q(\comp_ssd/iesire_num_reg__0 [5]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \iesire_num_reg[6] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\iesire_num_reg[4]_i_1_n_5 ),
        .Q(\comp_ssd/iesire_num_reg__0 [6]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \iesire_num_reg[7] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\iesire_num_reg[4]_i_1_n_4 ),
        .Q(\comp_ssd/iesire_num_reg__0 [7]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \iesire_num_reg[8] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\iesire_num_reg[8]_i_1_n_7 ),
        .Q(\comp_ssd/iesire_num_reg__0 [8]),
        .R(1'b0));
  CARRY4 \iesire_num_reg[8]_i_1 
       (.CI(\iesire_num_reg[4]_i_1_n_0 ),
        .CO({\iesire_num_reg[8]_i_1_n_0 ,\NLW_iesire_num_reg[8]_i_1_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\iesire_num_reg[8]_i_1_n_4 ,\iesire_num_reg[8]_i_1_n_5 ,\iesire_num_reg[8]_i_1_n_6 ,\iesire_num_reg[8]_i_1_n_7 }),
        .S(\comp_ssd/iesire_num_reg__0 [11:8]));
  FDRE #(
    .INIT(1'b0)) 
    \iesire_num_reg[9] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\iesire_num_reg[8]_i_1_n_6 ),
        .Q(\comp_ssd/iesire_num_reg__0 [9]),
        .R(1'b0));
  LUT6 #(
    .INIT(64'h8000000000000000)) 
    q1_i_1
       (.I0(q1_i_2_n_0),
        .I1(\comp_ssd/iesire_num_reg__0 [1]),
        .I2(\comp_ssd/iesire_num_reg__0 [0]),
        .I3(\comp_ssd/iesire_num_reg__0 [3]),
        .I4(\comp_ssd/iesire_num_reg__0 [2]),
        .I5(q1_i_3_n_0),
        .O(eqOp));
  LUT4 #(
    .INIT(16'h8000)) 
    q1_i_2
       (.I0(\comp_ssd/iesire_num_reg__0 [7]),
        .I1(\comp_ssd/iesire_num_reg__0 [6]),
        .I2(\comp_ssd/iesire_num_reg__0 [5]),
        .I3(\comp_ssd/iesire_num_reg__0 [4]),
        .O(q1_i_2_n_0));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT5 #(
    .INIT(32'h80000000)) 
    q1_i_3
       (.I0(\comp_ssd/iesire_num_reg [14]),
        .I1(\comp_ssd/iesire_num_reg [15]),
        .I2(\comp_ssd/iesire_num_reg__0 [12]),
        .I3(\comp_ssd/iesire_num_reg__0 [13]),
        .I4(q1_i_4_n_0),
        .O(q1_i_3_n_0));
  LUT4 #(
    .INIT(16'h8000)) 
    q1_i_4
       (.I0(\comp_ssd/iesire_num_reg__0 [11]),
        .I1(\comp_ssd/iesire_num_reg__0 [10]),
        .I2(\comp_ssd/iesire_num_reg__0 [9]),
        .I3(\comp_ssd/iesire_num_reg__0 [8]),
        .O(q1_i_4_n_0));
  FDRE #(
    .INIT(1'b0)) 
    q1_reg
       (.C(clk_IBUF_BUFG),
        .CE(eqOp),
        .D(btn_IBUF),
        .Q(q1),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    q2_reg
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(q1),
        .Q(q2),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    q3_reg
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(q2),
        .Q(q3),
        .R(1'b0));
endmodule

(* ORIG_REF_NAME = "MPG" *) 
module MPG_0
   (E,
    eqOp,
    btn_IBUF,
    clk_IBUF_BUFG);
  output [0:0]E;
  input eqOp;
  input [0:0]btn_IBUF;
  input clk_IBUF_BUFG;

  wire [0:0]E;
  wire [0:0]btn_IBUF;
  wire clk_IBUF_BUFG;
  wire eqOp;
  wire q1_reg_n_0;
  wire q2;
  wire q3;

  LUT2 #(
    .INIT(4'h2)) 
    \PC_out_rep[7]_i_2 
       (.I0(q2),
        .I1(q3),
        .O(E));
  FDRE #(
    .INIT(1'b0)) 
    q1_reg
       (.C(clk_IBUF_BUFG),
        .CE(eqOp),
        .D(btn_IBUF),
        .Q(q1_reg_n_0),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    q2_reg
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(q1_reg_n_0),
        .Q(q2),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    q3_reg
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(q2),
        .Q(q3),
        .R(1'b0));
endmodule

module RAM
   (wd,
    MemData,
    data0,
    led_OBUF,
    clk_IBUF_BUFG,
    RD2,
    en);
  output [15:0]wd;
  output [15:0]MemData;
  input [15:0]data0;
  input [0:0]led_OBUF;
  input clk_IBUF_BUFG;
  input [15:0]RD2;
  input en;

  wire [15:0]MemData;
  wire [15:0]RD2;
  wire clk_IBUF_BUFG;
  wire [15:0]data0;
  wire en;
  wire [0:0]led_OBUF;
  wire [15:0]wd;

  (* INIT = "32'h0000006A" *) 
  RAM32X1S_UNIQ_BASE_ RAM_reg_0_31_0_0
       (.A0(data0[0]),
        .A1(data0[1]),
        .A2(data0[2]),
        .A3(data0[3]),
        .A4(data0[4]),
        .D(RD2[0]),
        .O(MemData[0]),
        .WCLK(clk_IBUF_BUFG),
        .WE(en));
  (* INIT = "32'h00000000" *) 
  RAM32X1S_HD6 RAM_reg_0_31_10_10
       (.A0(data0[0]),
        .A1(data0[1]),
        .A2(data0[2]),
        .A3(data0[3]),
        .A4(data0[4]),
        .D(RD2[10]),
        .O(MemData[10]),
        .WCLK(clk_IBUF_BUFG),
        .WE(en));
  (* INIT = "32'h00000000" *) 
  RAM32X1S_HD7 RAM_reg_0_31_11_11
       (.A0(data0[0]),
        .A1(data0[1]),
        .A2(data0[2]),
        .A3(data0[3]),
        .A4(data0[4]),
        .D(RD2[11]),
        .O(MemData[11]),
        .WCLK(clk_IBUF_BUFG),
        .WE(en));
  (* INIT = "32'h00000000" *) 
  RAM32X1S_HD8 RAM_reg_0_31_12_12
       (.A0(data0[0]),
        .A1(data0[1]),
        .A2(data0[2]),
        .A3(data0[3]),
        .A4(data0[4]),
        .D(RD2[12]),
        .O(MemData[12]),
        .WCLK(clk_IBUF_BUFG),
        .WE(en));
  (* INIT = "32'h00000000" *) 
  RAM32X1S_HD9 RAM_reg_0_31_13_13
       (.A0(data0[0]),
        .A1(data0[1]),
        .A2(data0[2]),
        .A3(data0[3]),
        .A4(data0[4]),
        .D(RD2[13]),
        .O(MemData[13]),
        .WCLK(clk_IBUF_BUFG),
        .WE(en));
  (* INIT = "32'h00000000" *) 
  RAM32X1S_HD10 RAM_reg_0_31_14_14
       (.A0(data0[0]),
        .A1(data0[1]),
        .A2(data0[2]),
        .A3(data0[3]),
        .A4(data0[4]),
        .D(RD2[14]),
        .O(MemData[14]),
        .WCLK(clk_IBUF_BUFG),
        .WE(en));
  (* INIT = "32'h00000000" *) 
  RAM32X1S_HD11 RAM_reg_0_31_15_15
       (.A0(data0[0]),
        .A1(data0[1]),
        .A2(data0[2]),
        .A3(data0[3]),
        .A4(data0[4]),
        .D(RD2[15]),
        .O(MemData[15]),
        .WCLK(clk_IBUF_BUFG),
        .WE(en));
  (* INIT = "32'h00000033" *) 
  RAM32X1S_HD12 RAM_reg_0_31_1_1
       (.A0(data0[0]),
        .A1(data0[1]),
        .A2(data0[2]),
        .A3(data0[3]),
        .A4(data0[4]),
        .D(RD2[1]),
        .O(MemData[1]),
        .WCLK(clk_IBUF_BUFG),
        .WE(en));
  (* INIT = "32'h0000003C" *) 
  RAM32X1S_HD13 RAM_reg_0_31_2_2
       (.A0(data0[0]),
        .A1(data0[1]),
        .A2(data0[2]),
        .A3(data0[3]),
        .A4(data0[4]),
        .D(RD2[2]),
        .O(MemData[2]),
        .WCLK(clk_IBUF_BUFG),
        .WE(en));
  (* INIT = "32'h000000FF" *) 
  RAM32X1S_HD14 RAM_reg_0_31_3_3
       (.A0(data0[0]),
        .A1(data0[1]),
        .A2(data0[2]),
        .A3(data0[3]),
        .A4(data0[4]),
        .D(RD2[3]),
        .O(MemData[3]),
        .WCLK(clk_IBUF_BUFG),
        .WE(en));
  (* INIT = "32'h00000000" *) 
  RAM32X1S_HD15 RAM_reg_0_31_4_4
       (.A0(data0[0]),
        .A1(data0[1]),
        .A2(data0[2]),
        .A3(data0[3]),
        .A4(data0[4]),
        .D(RD2[4]),
        .O(MemData[4]),
        .WCLK(clk_IBUF_BUFG),
        .WE(en));
  (* INIT = "32'h00000000" *) 
  RAM32X1S_HD16 RAM_reg_0_31_5_5
       (.A0(data0[0]),
        .A1(data0[1]),
        .A2(data0[2]),
        .A3(data0[3]),
        .A4(data0[4]),
        .D(RD2[5]),
        .O(MemData[5]),
        .WCLK(clk_IBUF_BUFG),
        .WE(en));
  (* INIT = "32'h00000000" *) 
  RAM32X1S_HD17 RAM_reg_0_31_6_6
       (.A0(data0[0]),
        .A1(data0[1]),
        .A2(data0[2]),
        .A3(data0[3]),
        .A4(data0[4]),
        .D(RD2[6]),
        .O(MemData[6]),
        .WCLK(clk_IBUF_BUFG),
        .WE(en));
  (* INIT = "32'h00000000" *) 
  RAM32X1S_HD18 RAM_reg_0_31_7_7
       (.A0(data0[0]),
        .A1(data0[1]),
        .A2(data0[2]),
        .A3(data0[3]),
        .A4(data0[4]),
        .D(RD2[7]),
        .O(MemData[7]),
        .WCLK(clk_IBUF_BUFG),
        .WE(en));
  (* INIT = "32'h00000000" *) 
  RAM32X1S_HD19 RAM_reg_0_31_8_8
       (.A0(data0[0]),
        .A1(data0[1]),
        .A2(data0[2]),
        .A3(data0[3]),
        .A4(data0[4]),
        .D(RD2[8]),
        .O(MemData[8]),
        .WCLK(clk_IBUF_BUFG),
        .WE(en));
  (* INIT = "32'h00000000" *) 
  RAM32X1S_HD20 RAM_reg_0_31_9_9
       (.A0(data0[0]),
        .A1(data0[1]),
        .A2(data0[2]),
        .A3(data0[3]),
        .A4(data0[4]),
        .D(RD2[9]),
        .O(MemData[9]),
        .WCLK(clk_IBUF_BUFG),
        .WE(en));
  LUT3 #(
    .INIT(8'hCA)) 
    reg_file_reg_r1_0_7_0_5_i_1
       (.I0(data0[1]),
        .I1(MemData[1]),
        .I2(led_OBUF),
        .O(wd[1]));
  LUT3 #(
    .INIT(8'hCA)) 
    reg_file_reg_r1_0_7_0_5_i_2
       (.I0(data0[0]),
        .I1(MemData[0]),
        .I2(led_OBUF),
        .O(wd[0]));
  LUT3 #(
    .INIT(8'hCA)) 
    reg_file_reg_r1_0_7_0_5_i_3
       (.I0(data0[3]),
        .I1(MemData[3]),
        .I2(led_OBUF),
        .O(wd[3]));
  LUT3 #(
    .INIT(8'hCA)) 
    reg_file_reg_r1_0_7_0_5_i_4
       (.I0(data0[2]),
        .I1(MemData[2]),
        .I2(led_OBUF),
        .O(wd[2]));
  LUT3 #(
    .INIT(8'hCA)) 
    reg_file_reg_r1_0_7_0_5_i_5
       (.I0(data0[5]),
        .I1(MemData[5]),
        .I2(led_OBUF),
        .O(wd[5]));
  LUT3 #(
    .INIT(8'hCA)) 
    reg_file_reg_r1_0_7_0_5_i_6
       (.I0(data0[4]),
        .I1(MemData[4]),
        .I2(led_OBUF),
        .O(wd[4]));
  LUT3 #(
    .INIT(8'hCA)) 
    reg_file_reg_r1_0_7_12_15_i_1
       (.I0(data0[13]),
        .I1(MemData[13]),
        .I2(led_OBUF),
        .O(wd[13]));
  LUT3 #(
    .INIT(8'hCA)) 
    reg_file_reg_r1_0_7_12_15_i_2
       (.I0(data0[12]),
        .I1(MemData[12]),
        .I2(led_OBUF),
        .O(wd[12]));
  LUT3 #(
    .INIT(8'hCA)) 
    reg_file_reg_r1_0_7_12_15_i_3
       (.I0(data0[15]),
        .I1(MemData[15]),
        .I2(led_OBUF),
        .O(wd[15]));
  LUT3 #(
    .INIT(8'hCA)) 
    reg_file_reg_r1_0_7_12_15_i_4
       (.I0(data0[14]),
        .I1(MemData[14]),
        .I2(led_OBUF),
        .O(wd[14]));
  LUT3 #(
    .INIT(8'hCA)) 
    reg_file_reg_r1_0_7_6_11_i_1
       (.I0(data0[7]),
        .I1(MemData[7]),
        .I2(led_OBUF),
        .O(wd[7]));
  LUT3 #(
    .INIT(8'hCA)) 
    reg_file_reg_r1_0_7_6_11_i_2
       (.I0(data0[6]),
        .I1(MemData[6]),
        .I2(led_OBUF),
        .O(wd[6]));
  LUT3 #(
    .INIT(8'hCA)) 
    reg_file_reg_r1_0_7_6_11_i_3
       (.I0(data0[9]),
        .I1(MemData[9]),
        .I2(led_OBUF),
        .O(wd[9]));
  LUT3 #(
    .INIT(8'hCA)) 
    reg_file_reg_r1_0_7_6_11_i_4
       (.I0(data0[8]),
        .I1(MemData[8]),
        .I2(led_OBUF),
        .O(wd[8]));
  LUT3 #(
    .INIT(8'hCA)) 
    reg_file_reg_r1_0_7_6_11_i_5
       (.I0(data0[11]),
        .I1(MemData[11]),
        .I2(led_OBUF),
        .O(wd[11]));
  LUT3 #(
    .INIT(8'hCA)) 
    reg_file_reg_r1_0_7_6_11_i_6
       (.I0(data0[10]),
        .I1(MemData[10]),
        .I2(led_OBUF),
        .O(wd[10]));
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
    wire FCSBO_GLBL;
    wire [3:0] DO_GLBL;
    wire [3:0] DI_GLBL;
   
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
