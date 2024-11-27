module carry_select_adder_nl (cin,
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
 wire _34_;
 wire _35_;
 wire _36_;
 wire _37_;
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

 sky130_fd_sc_hd__and3_1 _38_ (.A(net17),
    .B(net9),
    .C(net1),
    .X(_00_));
 sky130_fd_sc_hd__or3_1 _39_ (.A(net17),
    .B(net9),
    .C(net1),
    .X(_01_));
 sky130_fd_sc_hd__o21a_1 _40_ (.A1(net9),
    .A2(net1),
    .B1(net17),
    .X(_02_));
 sky130_fd_sc_hd__a21oi_1 _41_ (.A1(net9),
    .A2(net1),
    .B1(_02_),
    .Y(_03_));
 sky130_fd_sc_hd__o21a_1 _42_ (.A1(_00_),
    .A2(_03_),
    .B1(_01_),
    .X(net19));
 sky130_fd_sc_hd__nor2_1 _43_ (.A(net13),
    .B(net5),
    .Y(_04_));
 sky130_fd_sc_hd__nand2_1 _44_ (.A(net13),
    .B(net5),
    .Y(_05_));
 sky130_fd_sc_hd__and2b_1 _45_ (.A_N(_04_),
    .B(_05_),
    .X(_06_));
 sky130_fd_sc_hd__nor2_1 _46_ (.A(net4),
    .B(net12),
    .Y(_07_));
 sky130_fd_sc_hd__nand2_1 _47_ (.A(net4),
    .B(net12),
    .Y(_08_));
 sky130_fd_sc_hd__and2_1 _48_ (.A(net3),
    .B(net11),
    .X(_09_));
 sky130_fd_sc_hd__or2_1 _49_ (.A(net3),
    .B(net11),
    .X(_10_));
 sky130_fd_sc_hd__o211a_1 _50_ (.A1(net2),
    .A2(net10),
    .B1(net9),
    .C1(net1),
    .X(_11_));
 sky130_fd_sc_hd__a21o_1 _51_ (.A1(net2),
    .A2(net10),
    .B1(net17),
    .X(_12_));
 sky130_fd_sc_hd__o22a_1 _52_ (.A1(net9),
    .A2(net1),
    .B1(net2),
    .B2(net10),
    .X(_13_));
 sky130_fd_sc_hd__a21bo_1 _53_ (.A1(net2),
    .A2(net10),
    .B1_N(net17),
    .X(_14_));
 sky130_fd_sc_hd__o22a_1 _54_ (.A1(_11_),
    .A2(_12_),
    .B1(_13_),
    .B2(_14_),
    .X(_15_));
 sky130_fd_sc_hd__a21oi_1 _55_ (.A1(_10_),
    .A2(_15_),
    .B1(_09_),
    .Y(_16_));
 sky130_fd_sc_hd__o21a_1 _56_ (.A1(_07_),
    .A2(_16_),
    .B1(_08_),
    .X(_17_));
 sky130_fd_sc_hd__xnor2_1 _57_ (.A(_06_),
    .B(_17_),
    .Y(net23));
 sky130_fd_sc_hd__nor2_1 _58_ (.A(net8),
    .B(net16),
    .Y(_18_));
 sky130_fd_sc_hd__nand2_1 _59_ (.A(net8),
    .B(net16),
    .Y(_19_));
 sky130_fd_sc_hd__nor2_1 _60_ (.A(net7),
    .B(net15),
    .Y(_20_));
 sky130_fd_sc_hd__nand2_1 _61_ (.A(net6),
    .B(net14),
    .Y(_21_));
 sky130_fd_sc_hd__nor2_1 _62_ (.A(net6),
    .B(net14),
    .Y(_22_));
 sky130_fd_sc_hd__inv_2 _63_ (.A(_22_),
    .Y(_23_));
 sky130_fd_sc_hd__a21o_1 _64_ (.A1(_05_),
    .A2(_21_),
    .B1(_22_),
    .X(_24_));
 sky130_fd_sc_hd__nand2_1 _65_ (.A(net7),
    .B(net15),
    .Y(_25_));
 sky130_fd_sc_hd__o21a_1 _66_ (.A1(_04_),
    .A2(_22_),
    .B1(_21_),
    .X(_26_));
 sky130_fd_sc_hd__o21a_1 _67_ (.A1(_20_),
    .A2(_26_),
    .B1(_25_),
    .X(_27_));
 sky130_fd_sc_hd__o21a_1 _68_ (.A1(_20_),
    .A2(_24_),
    .B1(_25_),
    .X(_28_));
 sky130_fd_sc_hd__mux2_1 _69_ (.A0(_27_),
    .A1(_28_),
    .S(_17_),
    .X(_29_));
 sky130_fd_sc_hd__o21ai_1 _70_ (.A1(_18_),
    .A2(_29_),
    .B1(_19_),
    .Y(net18));
 sky130_fd_sc_hd__and2b_1 _71_ (.A_N(_07_),
    .B(_08_),
    .X(_30_));
 sky130_fd_sc_hd__xnor2_1 _72_ (.A(_16_),
    .B(_30_),
    .Y(net22));
 sky130_fd_sc_hd__nand2b_1 _73_ (.A_N(_09_),
    .B(_10_),
    .Y(_31_));
 sky130_fd_sc_hd__xnor2_1 _74_ (.A(_15_),
    .B(_31_),
    .Y(net21));
 sky130_fd_sc_hd__xor2_1 _75_ (.A(net2),
    .B(net10),
    .X(_32_));
 sky130_fd_sc_hd__xnor2_1 _76_ (.A(_03_),
    .B(_32_),
    .Y(net20));
 sky130_fd_sc_hd__and2b_1 _77_ (.A_N(_18_),
    .B(_19_),
    .X(_33_));
 sky130_fd_sc_hd__xnor2_1 _78_ (.A(_29_),
    .B(_33_),
    .Y(net26));
 sky130_fd_sc_hd__and2b_1 _79_ (.A_N(_20_),
    .B(_25_),
    .X(_34_));
 sky130_fd_sc_hd__mux2_1 _80_ (.A0(_26_),
    .A1(_24_),
    .S(_17_),
    .X(_35_));
 sky130_fd_sc_hd__xnor2_1 _81_ (.A(_34_),
    .B(_35_),
    .Y(net25));
 sky130_fd_sc_hd__nand2_1 _82_ (.A(_21_),
    .B(_23_),
    .Y(_36_));
 sky130_fd_sc_hd__o21ai_1 _83_ (.A1(_04_),
    .A2(_17_),
    .B1(_05_),
    .Y(_37_));
 sky130_fd_sc_hd__xnor2_1 _84_ (.A(_36_),
    .B(_37_),
    .Y(net24));
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
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_0_21 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_1_22 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_2_23 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_3_24 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_4_25 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_5_26 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_6_27 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_7_28 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_8_29 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_9_30 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_9_31 ();
 sky130_fd_sc_hd__buf_1 input1 (.A(a[0]),
    .X(net1));
 sky130_fd_sc_hd__dlymetal6s2s_1 input2 (.A(a[1]),
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
 sky130_fd_sc_hd__dlymetal6s2s_1 input10 (.A(b[1]),
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
 sky130_fd_sc_hd__buf_1 input17 (.A(cin),
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
 sky130_ef_sc_hd__decap_12 FILLER_0_3 ();
 sky130_fd_sc_hd__fill_2 FILLER_0_15 ();
 sky130_fd_sc_hd__decap_4 FILLER_0_20 ();
 sky130_fd_sc_hd__fill_1 FILLER_0_27 ();
 sky130_fd_sc_hd__fill_2 FILLER_0_29 ();
 sky130_fd_sc_hd__fill_1 FILLER_0_35 ();
 sky130_fd_sc_hd__fill_2 FILLER_0_48 ();
 sky130_fd_sc_hd__decap_3 FILLER_0_53 ();
 sky130_fd_sc_hd__fill_1 FILLER_0_57 ();
 sky130_fd_sc_hd__decap_4 FILLER_1_12 ();
 sky130_fd_sc_hd__fill_1 FILLER_1_35 ();
 sky130_fd_sc_hd__fill_1 FILLER_1_55 ();
 sky130_fd_sc_hd__fill_2 FILLER_2_3 ();
 sky130_fd_sc_hd__fill_2 FILLER_2_14 ();
 sky130_fd_sc_hd__decap_3 FILLER_2_25 ();
 sky130_fd_sc_hd__fill_1 FILLER_2_44 ();
 sky130_fd_sc_hd__fill_2 FILLER_3_3 ();
 sky130_fd_sc_hd__decap_6 FILLER_3_16 ();
 sky130_fd_sc_hd__decap_8 FILLER_3_34 ();
 sky130_fd_sc_hd__decap_6 FILLER_3_49 ();
 sky130_fd_sc_hd__fill_1 FILLER_3_55 ();
 sky130_fd_sc_hd__decap_4 FILLER_3_57 ();
 sky130_ef_sc_hd__decap_12 FILLER_4_7 ();
 sky130_fd_sc_hd__decap_8 FILLER_4_19 ();
 sky130_fd_sc_hd__fill_1 FILLER_4_27 ();
 sky130_ef_sc_hd__decap_12 FILLER_4_29 ();
 sky130_fd_sc_hd__decap_8 FILLER_4_41 ();
 sky130_fd_sc_hd__fill_1 FILLER_4_49 ();
 sky130_fd_sc_hd__fill_2 FILLER_4_55 ();
 sky130_ef_sc_hd__decap_12 FILLER_5_7 ();
 sky130_ef_sc_hd__decap_12 FILLER_5_19 ();
 sky130_ef_sc_hd__decap_12 FILLER_5_31 ();
 sky130_fd_sc_hd__decap_3 FILLER_5_43 ();
 sky130_fd_sc_hd__fill_1 FILLER_5_55 ();
 sky130_fd_sc_hd__fill_1 FILLER_5_57 ();
 sky130_fd_sc_hd__fill_2 FILLER_6_12 ();
 sky130_fd_sc_hd__fill_2 FILLER_6_26 ();
 sky130_ef_sc_hd__decap_12 FILLER_6_29 ();
 sky130_fd_sc_hd__fill_2 FILLER_6_41 ();
 sky130_fd_sc_hd__decap_8 FILLER_7_6 ();
 sky130_fd_sc_hd__fill_1 FILLER_7_14 ();
 sky130_fd_sc_hd__decap_4 FILLER_7_26 ();
 sky130_fd_sc_hd__fill_1 FILLER_8_3 ();
 sky130_fd_sc_hd__fill_2 FILLER_8_26 ();
 sky130_fd_sc_hd__decap_6 FILLER_8_29 ();
 sky130_fd_sc_hd__fill_1 FILLER_8_35 ();
 sky130_ef_sc_hd__decap_12 FILLER_9_9 ();
 sky130_fd_sc_hd__decap_3 FILLER_9_21 ();
 sky130_fd_sc_hd__fill_2 FILLER_9_29 ();
 sky130_fd_sc_hd__fill_2 FILLER_9_35 ();
endmodule
