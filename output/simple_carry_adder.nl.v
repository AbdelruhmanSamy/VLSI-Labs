module simple_carry_adder (cin,
    cout,
    a,
    b,
    sum);
 input cin;
 output cout;
 input [7:0] a;
 input [7:0] b;
 output [7:0] sum;

 wire _00_;
 wire _01_;
 wire _02_;
 wire _03_;
 wire _04_;
 wire _05_;
 wire _06_;
 wire _07_;
 wire _08_;
 wire _09_;
 wire _10_;
 wire _11_;
 wire _12_;
 wire _13_;
 wire _14_;
 wire _15_;
 wire _16_;
 wire _17_;
 wire _18_;
 wire _19_;
 wire _20_;
 wire _21_;
 wire _22_;
 wire _23_;
 wire _24_;
 wire _25_;
 wire _26_;
 wire _27_;
 wire _28_;
 wire _29_;
 wire _30_;
 wire _31_;
 wire _32_;
 wire _33_;
 wire net1;
 wire net2;
 wire net3;
 wire net4;
 wire net5;
 wire net6;
 wire net7;
 wire net8;
 wire net9;
 wire net10;
 wire net11;
 wire net12;
 wire net13;
 wire net14;
 wire net15;
 wire net16;
 wire net17;
 wire net18;
 wire net19;
 wire net20;
 wire net21;
 wire net22;
 wire net23;
 wire net24;
 wire net25;
 wire net26;

 sky130_fd_sc_hd__nor2_1 _34_ (.A(net9),
    .B(net1),
    .Y(_00_));
 sky130_fd_sc_hd__or3_1 _35_ (.A(net9),
    .B(net1),
    .C(net17),
    .X(_01_));
 sky130_fd_sc_hd__and3_1 _36_ (.A(net9),
    .B(net1),
    .C(net17),
    .X(_02_));
 sky130_fd_sc_hd__a21oi_1 _37_ (.A1(net9),
    .A2(net1),
    .B1(net17),
    .Y(_03_));
 sky130_fd_sc_hd__or2_1 _38_ (.A(_00_),
    .B(_03_),
    .X(_04_));
 sky130_fd_sc_hd__a21o_1 _39_ (.A1(_01_),
    .A2(_04_),
    .B1(_02_),
    .X(net19));
 sky130_fd_sc_hd__nor2_1 _40_ (.A(net10),
    .B(net2),
    .Y(_05_));
 sky130_fd_sc_hd__nand2_1 _41_ (.A(net10),
    .B(net2),
    .Y(_06_));
 sky130_fd_sc_hd__and2b_1 _42_ (.A_N(_05_),
    .B(_06_),
    .X(_07_));
 sky130_fd_sc_hd__xnor2_1 _43_ (.A(_04_),
    .B(_07_),
    .Y(net20));
 sky130_fd_sc_hd__nor2_1 _44_ (.A(net11),
    .B(net3),
    .Y(_08_));
 sky130_fd_sc_hd__nand2_1 _45_ (.A(net11),
    .B(net3),
    .Y(_09_));
 sky130_fd_sc_hd__nand2b_1 _46_ (.A_N(_08_),
    .B(_09_),
    .Y(_10_));
 sky130_fd_sc_hd__o21ai_1 _47_ (.A1(_04_),
    .A2(_05_),
    .B1(_06_),
    .Y(_11_));
 sky130_fd_sc_hd__xnor2_1 _48_ (.A(_10_),
    .B(_11_),
    .Y(net21));
 sky130_fd_sc_hd__o311a_1 _49_ (.A1(_00_),
    .A2(_03_),
    .A3(_05_),
    .B1(_06_),
    .C1(_09_),
    .X(_12_));
 sky130_fd_sc_hd__or2_1 _50_ (.A(_08_),
    .B(_12_),
    .X(_13_));
 sky130_fd_sc_hd__nor2_1 _51_ (.A(net12),
    .B(net4),
    .Y(_14_));
 sky130_fd_sc_hd__nand2_1 _52_ (.A(_13_),
    .B(_14_),
    .Y(_15_));
 sky130_fd_sc_hd__nand2_1 _53_ (.A(net12),
    .B(net4),
    .Y(_16_));
 sky130_fd_sc_hd__o21a_1 _54_ (.A1(_13_),
    .A2(_14_),
    .B1(_16_),
    .X(_17_));
 sky130_fd_sc_hd__a2bb2o_1 _55_ (.A1_N(_13_),
    .A2_N(_16_),
    .B1(_17_),
    .B2(_15_),
    .X(net22));
 sky130_fd_sc_hd__nor2_1 _56_ (.A(net13),
    .B(net5),
    .Y(_18_));
 sky130_fd_sc_hd__nand2_1 _57_ (.A(net13),
    .B(net5),
    .Y(_19_));
 sky130_fd_sc_hd__o311a_1 _58_ (.A1(_08_),
    .A2(_12_),
    .A3(_14_),
    .B1(_16_),
    .C1(_19_),
    .X(_20_));
 sky130_fd_sc_hd__and2b_1 _59_ (.A_N(_18_),
    .B(_19_),
    .X(_21_));
 sky130_fd_sc_hd__xnor2_1 _60_ (.A(_17_),
    .B(_21_),
    .Y(net23));
 sky130_fd_sc_hd__nand2_1 _61_ (.A(net14),
    .B(net6),
    .Y(_22_));
 sky130_fd_sc_hd__or3_1 _62_ (.A(_18_),
    .B(_20_),
    .C(_22_),
    .X(_23_));
 sky130_fd_sc_hd__nor2_1 _63_ (.A(net14),
    .B(net6),
    .Y(_24_));
 sky130_fd_sc_hd__o21ai_1 _64_ (.A1(_18_),
    .A2(_20_),
    .B1(_24_),
    .Y(_25_));
 sky130_fd_sc_hd__o31a_1 _65_ (.A1(_18_),
    .A2(_20_),
    .A3(_24_),
    .B1(_22_),
    .X(_26_));
 sky130_fd_sc_hd__a21bo_1 _66_ (.A1(_25_),
    .A2(_26_),
    .B1_N(_23_),
    .X(net24));
 sky130_fd_sc_hd__nor2_1 _67_ (.A(net15),
    .B(net7),
    .Y(_27_));
 sky130_fd_sc_hd__nand2_1 _68_ (.A(net15),
    .B(net7),
    .Y(_28_));
 sky130_fd_sc_hd__and2b_1 _69_ (.A_N(_27_),
    .B(_28_),
    .X(_29_));
 sky130_fd_sc_hd__xnor2_1 _70_ (.A(_26_),
    .B(_29_),
    .Y(net25));
 sky130_fd_sc_hd__or2_1 _71_ (.A(net16),
    .B(net8),
    .X(_30_));
 sky130_fd_sc_hd__nand2_1 _72_ (.A(net16),
    .B(net8),
    .Y(_31_));
 sky130_fd_sc_hd__nand2_1 _73_ (.A(_30_),
    .B(_31_),
    .Y(_32_));
 sky130_fd_sc_hd__o21ai_1 _74_ (.A1(_26_),
    .A2(_27_),
    .B1(_28_),
    .Y(_33_));
 sky130_fd_sc_hd__xnor2_1 _75_ (.A(_32_),
    .B(_33_),
    .Y(net26));
 sky130_fd_sc_hd__a21bo_1 _76_ (.A1(_30_),
    .A2(_33_),
    .B1_N(_31_),
    .X(net18));
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_0_Right_0 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_1_Right_1 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_2_Right_2 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_3_Right_3 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_4_Right_4 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_5_Right_5 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_6_Right_6 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_7_Right_7 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_8_Right_8 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_9_Right_9 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_0_Left_10 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_1_Left_11 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_2_Left_12 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_3_Left_13 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_4_Left_14 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_5_Left_15 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_6_Left_16 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_7_Left_17 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_8_Left_18 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_9_Left_19 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_0_20 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_2_21 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_4_22 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_6_23 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_8_24 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_9_25 ();
 sky130_fd_sc_hd__buf_1 input1 (.A(a[0]),
    .X(net1));
 sky130_fd_sc_hd__clkbuf_1 input2 (.A(a[1]),
    .X(net2));
 sky130_fd_sc_hd__clkbuf_1 input3 (.A(a[2]),
    .X(net3));
 sky130_fd_sc_hd__clkbuf_1 input4 (.A(a[3]),
    .X(net4));
 sky130_fd_sc_hd__clkbuf_1 input5 (.A(a[4]),
    .X(net5));
 sky130_fd_sc_hd__clkbuf_1 input6 (.A(a[5]),
    .X(net6));
 sky130_fd_sc_hd__clkbuf_1 input7 (.A(a[6]),
    .X(net7));
 sky130_fd_sc_hd__clkbuf_1 input8 (.A(a[7]),
    .X(net8));
 sky130_fd_sc_hd__buf_1 input9 (.A(b[0]),
    .X(net9));
 sky130_fd_sc_hd__clkbuf_1 input10 (.A(b[1]),
    .X(net10));
 sky130_fd_sc_hd__clkbuf_1 input11 (.A(b[2]),
    .X(net11));
 sky130_fd_sc_hd__clkbuf_1 input12 (.A(b[3]),
    .X(net12));
 sky130_fd_sc_hd__clkbuf_1 input13 (.A(b[4]),
    .X(net13));
 sky130_fd_sc_hd__clkbuf_1 input14 (.A(b[5]),
    .X(net14));
 sky130_fd_sc_hd__clkbuf_1 input15 (.A(b[6]),
    .X(net15));
 sky130_fd_sc_hd__clkbuf_1 input16 (.A(b[7]),
    .X(net16));
 sky130_fd_sc_hd__clkbuf_1 input17 (.A(cin),
    .X(net17));
 sky130_fd_sc_hd__buf_2 output18 (.A(net18),
    .X(cout));
 sky130_fd_sc_hd__buf_2 output19 (.A(net19),
    .X(sum[0]));
 sky130_fd_sc_hd__buf_2 output20 (.A(net20),
    .X(sum[1]));
 sky130_fd_sc_hd__buf_2 output21 (.A(net21),
    .X(sum[2]));
 sky130_fd_sc_hd__buf_2 output22 (.A(net22),
    .X(sum[3]));
 sky130_fd_sc_hd__buf_2 output23 (.A(net23),
    .X(sum[4]));
 sky130_fd_sc_hd__buf_2 output24 (.A(net24),
    .X(sum[5]));
 sky130_fd_sc_hd__buf_2 output25 (.A(net25),
    .X(sum[6]));
 sky130_fd_sc_hd__buf_2 output26 (.A(net26),
    .X(sum[7]));
 sky130_fd_sc_hd__fill_2 FILLER_0_15 ();
 sky130_fd_sc_hd__fill_1 FILLER_0_27 ();
 sky130_fd_sc_hd__fill_2 FILLER_0_29 ();
 sky130_ef_sc_hd__decap_12 FILLER_0_35 ();
 sky130_fd_sc_hd__decap_6 FILLER_0_47 ();
 sky130_fd_sc_hd__fill_1 FILLER_1_7 ();
 sky130_ef_sc_hd__decap_12 FILLER_1_33 ();
 sky130_fd_sc_hd__fill_1 FILLER_1_45 ();
 sky130_fd_sc_hd__fill_1 FILLER_1_52 ();
 sky130_fd_sc_hd__fill_2 FILLER_2_14 ();
 sky130_fd_sc_hd__decap_4 FILLER_2_23 ();
 sky130_fd_sc_hd__fill_1 FILLER_2_27 ();
 sky130_fd_sc_hd__decap_6 FILLER_2_29 ();
 sky130_fd_sc_hd__fill_2 FILLER_2_50 ();
 sky130_ef_sc_hd__decap_12 FILLER_3_3 ();
 sky130_ef_sc_hd__decap_12 FILLER_3_15 ();
 sky130_ef_sc_hd__decap_12 FILLER_3_27 ();
 sky130_fd_sc_hd__decap_3 FILLER_3_39 ();
 sky130_fd_sc_hd__fill_2 FILLER_3_51 ();
 sky130_ef_sc_hd__decap_12 FILLER_4_9 ();
 sky130_fd_sc_hd__decap_6 FILLER_4_21 ();
 sky130_fd_sc_hd__fill_1 FILLER_4_27 ();
 sky130_ef_sc_hd__decap_12 FILLER_4_29 ();
 sky130_fd_sc_hd__decap_4 FILLER_4_41 ();
 sky130_fd_sc_hd__fill_1 FILLER_4_45 ();
 sky130_fd_sc_hd__fill_1 FILLER_4_52 ();
 sky130_fd_sc_hd__fill_1 FILLER_5_6 ();
 sky130_ef_sc_hd__decap_12 FILLER_5_12 ();
 sky130_ef_sc_hd__decap_12 FILLER_5_24 ();
 sky130_fd_sc_hd__decap_6 FILLER_5_36 ();
 sky130_fd_sc_hd__fill_1 FILLER_5_42 ();
 sky130_fd_sc_hd__fill_1 FILLER_5_55 ();
 sky130_fd_sc_hd__decap_6 FILLER_6_22 ();
 sky130_fd_sc_hd__decap_6 FILLER_6_29 ();
 sky130_fd_sc_hd__fill_2 FILLER_6_54 ();
 sky130_fd_sc_hd__fill_1 FILLER_7_3 ();
 sky130_fd_sc_hd__fill_1 FILLER_7_27 ();
 sky130_fd_sc_hd__decap_4 FILLER_7_33 ();
 sky130_fd_sc_hd__fill_1 FILLER_7_37 ();
 sky130_fd_sc_hd__fill_1 FILLER_7_51 ();
 sky130_fd_sc_hd__fill_2 FILLER_8_3 ();
 sky130_fd_sc_hd__fill_2 FILLER_8_11 ();
 sky130_fd_sc_hd__decap_8 FILLER_8_20 ();
 sky130_fd_sc_hd__decap_4 FILLER_8_42 ();
 sky130_fd_sc_hd__fill_1 FILLER_8_55 ();
 sky130_ef_sc_hd__decap_12 FILLER_9_12 ();
 sky130_fd_sc_hd__fill_2 FILLER_9_29 ();
 sky130_fd_sc_hd__decap_4 FILLER_9_34 ();
 sky130_fd_sc_hd__decap_3 FILLER_9_42 ();
 sky130_fd_sc_hd__fill_2 FILLER_9_48 ();
endmodule
