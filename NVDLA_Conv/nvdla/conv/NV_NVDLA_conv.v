module NV_NVDLA_conv (
    nvdla_core_clk
    ,nvdla_core_rstn

    ,csb2csc_req_pvld
    ,csb2csc_req_prdy
    ,csb2csc_req_pd

    ,csb2cmac_a_req_pvld
    ,csb2cmac_a_req_prdy
    ,csb2cmac_a_req_pd

    ,csb2cmac_b_req_pvld
    ,csb2cmac_b_req_prdy
    ,csb2cmac_b_req_pd

    ,csb2cacc_req_dst_pvld
    ,csb2cacc_req_dst_prdy
    ,csb2cacc_req_dst_pd

    ,cacc2sdp_valid
    ,cacc2sdp_ready
    ,cacc2sdp_pd
    ,cacc2glb_done_intr_src_pd
);

input nvdla_core_clk;
input nvdla_core_rstn;

// ------------- sc start --------------//
// acc2sc
 wire accu2sc_credit_vld; /* data valid */
 wire [2:0] accu2sc_credit_size;
// csb2sc |<> io 
 input csb2csc_req_pvld; /* data valid */
 output csb2csc_req_prdy; /* data return handshake */
 input [62:0] csb2csc_req_pd;
// * sc2mac_a data
 wire sc2mac_dat_a_src_pvld;
 wire [127:0] sc2mac_dat_a_src_mask;
 wire [7:0] sc2mac_dat_a_src_data0;
 wire [7:0] sc2mac_dat_a_src_data1;
 wire [7:0] sc2mac_dat_a_src_data2;
 wire [7:0] sc2mac_dat_a_src_data3;
 wire [7:0] sc2mac_dat_a_src_data4;
 wire [7:0] sc2mac_dat_a_src_data5;
 wire [7:0] sc2mac_dat_a_src_data6;
 wire [7:0] sc2mac_dat_a_src_data7;
 wire [7:0] sc2mac_dat_a_src_data8;
 wire [7:0] sc2mac_dat_a_src_data9;
 wire [7:0] sc2mac_dat_a_src_data10;
 wire [7:0] sc2mac_dat_a_src_data11;
 wire [7:0] sc2mac_dat_a_src_data12;
 wire [7:0] sc2mac_dat_a_src_data13;
 wire [7:0] sc2mac_dat_a_src_data14;
 wire [7:0] sc2mac_dat_a_src_data15;
 wire [7:0] sc2mac_dat_a_src_data16;
 wire [7:0] sc2mac_dat_a_src_data17;
 wire [7:0] sc2mac_dat_a_src_data18;
 wire [7:0] sc2mac_dat_a_src_data19;
 wire [7:0] sc2mac_dat_a_src_data20;
 wire [7:0] sc2mac_dat_a_src_data21;
 wire [7:0] sc2mac_dat_a_src_data22;
 wire [7:0] sc2mac_dat_a_src_data23;
 wire [7:0] sc2mac_dat_a_src_data24;
 wire [7:0] sc2mac_dat_a_src_data25;
 wire [7:0] sc2mac_dat_a_src_data26;
 wire [7:0] sc2mac_dat_a_src_data27;
 wire [7:0] sc2mac_dat_a_src_data28;
 wire [7:0] sc2mac_dat_a_src_data29;
 wire [7:0] sc2mac_dat_a_src_data30;
 wire [7:0] sc2mac_dat_a_src_data31;
 wire [7:0] sc2mac_dat_a_src_data32;
 wire [7:0] sc2mac_dat_a_src_data33;
 wire [7:0] sc2mac_dat_a_src_data34;
 wire [7:0] sc2mac_dat_a_src_data35;
 wire [7:0] sc2mac_dat_a_src_data36;
 wire [7:0] sc2mac_dat_a_src_data37;
 wire [7:0] sc2mac_dat_a_src_data38;
 wire [7:0] sc2mac_dat_a_src_data39;
 wire [7:0] sc2mac_dat_a_src_data40;
 wire [7:0] sc2mac_dat_a_src_data41;
 wire [7:0] sc2mac_dat_a_src_data42;
 wire [7:0] sc2mac_dat_a_src_data43;
 wire [7:0] sc2mac_dat_a_src_data44;
 wire [7:0] sc2mac_dat_a_src_data45;
 wire [7:0] sc2mac_dat_a_src_data46;
 wire [7:0] sc2mac_dat_a_src_data47;
 wire [7:0] sc2mac_dat_a_src_data48;
 wire [7:0] sc2mac_dat_a_src_data49;
 wire [7:0] sc2mac_dat_a_src_data50;
 wire [7:0] sc2mac_dat_a_src_data51;
 wire [7:0] sc2mac_dat_a_src_data52;
 wire [7:0] sc2mac_dat_a_src_data53;
 wire [7:0] sc2mac_dat_a_src_data54;
 wire [7:0] sc2mac_dat_a_src_data55;
 wire [7:0] sc2mac_dat_a_src_data56;
 wire [7:0] sc2mac_dat_a_src_data57;
 wire [7:0] sc2mac_dat_a_src_data58;
 wire [7:0] sc2mac_dat_a_src_data59;
 wire [7:0] sc2mac_dat_a_src_data60;
 wire [7:0] sc2mac_dat_a_src_data61;
 wire [7:0] sc2mac_dat_a_src_data62;
 wire [7:0] sc2mac_dat_a_src_data63;
 wire [7:0] sc2mac_dat_a_src_data64;
 wire [7:0] sc2mac_dat_a_src_data65;
 wire [7:0] sc2mac_dat_a_src_data66;
 wire [7:0] sc2mac_dat_a_src_data67;
 wire [7:0] sc2mac_dat_a_src_data68;
 wire [7:0] sc2mac_dat_a_src_data69;
 wire [7:0] sc2mac_dat_a_src_data70;
 wire [7:0] sc2mac_dat_a_src_data71;
 wire [7:0] sc2mac_dat_a_src_data72;
 wire [7:0] sc2mac_dat_a_src_data73;
 wire [7:0] sc2mac_dat_a_src_data74;
 wire [7:0] sc2mac_dat_a_src_data75;
 wire [7:0] sc2mac_dat_a_src_data76;
 wire [7:0] sc2mac_dat_a_src_data77;
 wire [7:0] sc2mac_dat_a_src_data78;
 wire [7:0] sc2mac_dat_a_src_data79;
 wire [7:0] sc2mac_dat_a_src_data80;
 wire [7:0] sc2mac_dat_a_src_data81;
 wire [7:0] sc2mac_dat_a_src_data82;
 wire [7:0] sc2mac_dat_a_src_data83;
 wire [7:0] sc2mac_dat_a_src_data84;
 wire [7:0] sc2mac_dat_a_src_data85;
 wire [7:0] sc2mac_dat_a_src_data86;
 wire [7:0] sc2mac_dat_a_src_data87;
 wire [7:0] sc2mac_dat_a_src_data88;
 wire [7:0] sc2mac_dat_a_src_data89;
 wire [7:0] sc2mac_dat_a_src_data90;
 wire [7:0] sc2mac_dat_a_src_data91;
 wire [7:0] sc2mac_dat_a_src_data92;
 wire [7:0] sc2mac_dat_a_src_data93;
 wire [7:0] sc2mac_dat_a_src_data94;
 wire [7:0] sc2mac_dat_a_src_data95;
 wire [7:0] sc2mac_dat_a_src_data96;
 wire [7:0] sc2mac_dat_a_src_data97;
 wire [7:0] sc2mac_dat_a_src_data98;
 wire [7:0] sc2mac_dat_a_src_data99;
 wire [7:0] sc2mac_dat_a_src_data100;
 wire [7:0] sc2mac_dat_a_src_data101;
 wire [7:0] sc2mac_dat_a_src_data102;
 wire [7:0] sc2mac_dat_a_src_data103;
 wire [7:0] sc2mac_dat_a_src_data104;
 wire [7:0] sc2mac_dat_a_src_data105;
 wire [7:0] sc2mac_dat_a_src_data106;
 wire [7:0] sc2mac_dat_a_src_data107;
 wire [7:0] sc2mac_dat_a_src_data108;
 wire [7:0] sc2mac_dat_a_src_data109;
 wire [7:0] sc2mac_dat_a_src_data110;
 wire [7:0] sc2mac_dat_a_src_data111;
 wire [7:0] sc2mac_dat_a_src_data112;
 wire [7:0] sc2mac_dat_a_src_data113;
 wire [7:0] sc2mac_dat_a_src_data114;
 wire [7:0] sc2mac_dat_a_src_data115;
 wire [7:0] sc2mac_dat_a_src_data116;
 wire [7:0] sc2mac_dat_a_src_data117;
 wire [7:0] sc2mac_dat_a_src_data118;
 wire [7:0] sc2mac_dat_a_src_data119;
 wire [7:0] sc2mac_dat_a_src_data120;
 wire [7:0] sc2mac_dat_a_src_data121;
 wire [7:0] sc2mac_dat_a_src_data122;
 wire [7:0] sc2mac_dat_a_src_data123;
 wire [7:0] sc2mac_dat_a_src_data124;
 wire [7:0] sc2mac_dat_a_src_data125;
 wire [7:0] sc2mac_dat_a_src_data126;
 wire [7:0] sc2mac_dat_a_src_data127;
 wire [8:0] sc2mac_dat_a_src_pd;
// * sc2mac_b data
 wire sc2mac_dat_b_src_pvld;
 wire [127:0] sc2mac_dat_b_src_mask;
 wire [7:0] sc2mac_dat_b_src_data0;
 wire [7:0] sc2mac_dat_b_src_data1;
 wire [7:0] sc2mac_dat_b_src_data2;
 wire [7:0] sc2mac_dat_b_src_data3;
 wire [7:0] sc2mac_dat_b_src_data4;
 wire [7:0] sc2mac_dat_b_src_data5;
 wire [7:0] sc2mac_dat_b_src_data6;
 wire [7:0] sc2mac_dat_b_src_data7;
 wire [7:0] sc2mac_dat_b_src_data8;
 wire [7:0] sc2mac_dat_b_src_data9;
 wire [7:0] sc2mac_dat_b_src_data10;
 wire [7:0] sc2mac_dat_b_src_data11;
 wire [7:0] sc2mac_dat_b_src_data12;
 wire [7:0] sc2mac_dat_b_src_data13;
 wire [7:0] sc2mac_dat_b_src_data14;
 wire [7:0] sc2mac_dat_b_src_data15;
 wire [7:0] sc2mac_dat_b_src_data16;
 wire [7:0] sc2mac_dat_b_src_data17;
 wire [7:0] sc2mac_dat_b_src_data18;
 wire [7:0] sc2mac_dat_b_src_data19;
 wire [7:0] sc2mac_dat_b_src_data20;
 wire [7:0] sc2mac_dat_b_src_data21;
 wire [7:0] sc2mac_dat_b_src_data22;
 wire [7:0] sc2mac_dat_b_src_data23;
 wire [7:0] sc2mac_dat_b_src_data24;
 wire [7:0] sc2mac_dat_b_src_data25;
 wire [7:0] sc2mac_dat_b_src_data26;
 wire [7:0] sc2mac_dat_b_src_data27;
 wire [7:0] sc2mac_dat_b_src_data28;
 wire [7:0] sc2mac_dat_b_src_data29;
 wire [7:0] sc2mac_dat_b_src_data30;
 wire [7:0] sc2mac_dat_b_src_data31;
 wire [7:0] sc2mac_dat_b_src_data32;
 wire [7:0] sc2mac_dat_b_src_data33;
 wire [7:0] sc2mac_dat_b_src_data34;
 wire [7:0] sc2mac_dat_b_src_data35;
 wire [7:0] sc2mac_dat_b_src_data36;
 wire [7:0] sc2mac_dat_b_src_data37;
 wire [7:0] sc2mac_dat_b_src_data38;
 wire [7:0] sc2mac_dat_b_src_data39;
 wire [7:0] sc2mac_dat_b_src_data40;
 wire [7:0] sc2mac_dat_b_src_data41;
 wire [7:0] sc2mac_dat_b_src_data42;
 wire [7:0] sc2mac_dat_b_src_data43;
 wire [7:0] sc2mac_dat_b_src_data44;
 wire [7:0] sc2mac_dat_b_src_data45;
 wire [7:0] sc2mac_dat_b_src_data46;
 wire [7:0] sc2mac_dat_b_src_data47;
 wire [7:0] sc2mac_dat_b_src_data48;
 wire [7:0] sc2mac_dat_b_src_data49;
 wire [7:0] sc2mac_dat_b_src_data50;
 wire [7:0] sc2mac_dat_b_src_data51;
 wire [7:0] sc2mac_dat_b_src_data52;
 wire [7:0] sc2mac_dat_b_src_data53;
 wire [7:0] sc2mac_dat_b_src_data54;
 wire [7:0] sc2mac_dat_b_src_data55;
 wire [7:0] sc2mac_dat_b_src_data56;
 wire [7:0] sc2mac_dat_b_src_data57;
 wire [7:0] sc2mac_dat_b_src_data58;
 wire [7:0] sc2mac_dat_b_src_data59;
 wire [7:0] sc2mac_dat_b_src_data60;
 wire [7:0] sc2mac_dat_b_src_data61;
 wire [7:0] sc2mac_dat_b_src_data62;
 wire [7:0] sc2mac_dat_b_src_data63;
 wire [7:0] sc2mac_dat_b_src_data64;
 wire [7:0] sc2mac_dat_b_src_data65;
 wire [7:0] sc2mac_dat_b_src_data66;
 wire [7:0] sc2mac_dat_b_src_data67;
 wire [7:0] sc2mac_dat_b_src_data68;
 wire [7:0] sc2mac_dat_b_src_data69;
 wire [7:0] sc2mac_dat_b_src_data70;
 wire [7:0] sc2mac_dat_b_src_data71;
 wire [7:0] sc2mac_dat_b_src_data72;
 wire [7:0] sc2mac_dat_b_src_data73;
 wire [7:0] sc2mac_dat_b_src_data74;
 wire [7:0] sc2mac_dat_b_src_data75;
 wire [7:0] sc2mac_dat_b_src_data76;
 wire [7:0] sc2mac_dat_b_src_data77;
 wire [7:0] sc2mac_dat_b_src_data78;
 wire [7:0] sc2mac_dat_b_src_data79;
 wire [7:0] sc2mac_dat_b_src_data80;
 wire [7:0] sc2mac_dat_b_src_data81;
 wire [7:0] sc2mac_dat_b_src_data82;
 wire [7:0] sc2mac_dat_b_src_data83;
 wire [7:0] sc2mac_dat_b_src_data84;
 wire [7:0] sc2mac_dat_b_src_data85;
 wire [7:0] sc2mac_dat_b_src_data86;
 wire [7:0] sc2mac_dat_b_src_data87;
 wire [7:0] sc2mac_dat_b_src_data88;
 wire [7:0] sc2mac_dat_b_src_data89;
 wire [7:0] sc2mac_dat_b_src_data90;
 wire [7:0] sc2mac_dat_b_src_data91;
 wire [7:0] sc2mac_dat_b_src_data92;
 wire [7:0] sc2mac_dat_b_src_data93;
 wire [7:0] sc2mac_dat_b_src_data94;
 wire [7:0] sc2mac_dat_b_src_data95;
 wire [7:0] sc2mac_dat_b_src_data96;
 wire [7:0] sc2mac_dat_b_src_data97;
 wire [7:0] sc2mac_dat_b_src_data98;
 wire [7:0] sc2mac_dat_b_src_data99;
 wire [7:0] sc2mac_dat_b_src_data100;
 wire [7:0] sc2mac_dat_b_src_data101;
 wire [7:0] sc2mac_dat_b_src_data102;
 wire [7:0] sc2mac_dat_b_src_data103;
 wire [7:0] sc2mac_dat_b_src_data104;
 wire [7:0] sc2mac_dat_b_src_data105;
 wire [7:0] sc2mac_dat_b_src_data106;
 wire [7:0] sc2mac_dat_b_src_data107;
 wire [7:0] sc2mac_dat_b_src_data108;
 wire [7:0] sc2mac_dat_b_src_data109;
 wire [7:0] sc2mac_dat_b_src_data110;
 wire [7:0] sc2mac_dat_b_src_data111;
 wire [7:0] sc2mac_dat_b_src_data112;
 wire [7:0] sc2mac_dat_b_src_data113;
 wire [7:0] sc2mac_dat_b_src_data114;
 wire [7:0] sc2mac_dat_b_src_data115;
 wire [7:0] sc2mac_dat_b_src_data116;
 wire [7:0] sc2mac_dat_b_src_data117;
 wire [7:0] sc2mac_dat_b_src_data118;
 wire [7:0] sc2mac_dat_b_src_data119;
 wire [7:0] sc2mac_dat_b_src_data120;
 wire [7:0] sc2mac_dat_b_src_data121;
 wire [7:0] sc2mac_dat_b_src_data122;
 wire [7:0] sc2mac_dat_b_src_data123;
 wire [7:0] sc2mac_dat_b_src_data124;
 wire [7:0] sc2mac_dat_b_src_data125;
 wire [7:0] sc2mac_dat_b_src_data126;
 wire [7:0] sc2mac_dat_b_src_data127;
 wire [8:0] sc2mac_dat_b_src_pd;
// * sc2mac_a weight
 wire sc2mac_wt_a_src_pvld;
 wire [127:0] sc2mac_wt_a_src_mask;
 wire [7:0] sc2mac_wt_a_src_data0;
 wire [7:0] sc2mac_wt_a_src_data1;
 wire [7:0] sc2mac_wt_a_src_data2;
 wire [7:0] sc2mac_wt_a_src_data3;
 wire [7:0] sc2mac_wt_a_src_data4;
 wire [7:0] sc2mac_wt_a_src_data5;
 wire [7:0] sc2mac_wt_a_src_data6;
 wire [7:0] sc2mac_wt_a_src_data7;
 wire [7:0] sc2mac_wt_a_src_data8;
 wire [7:0] sc2mac_wt_a_src_data9;
 wire [7:0] sc2mac_wt_a_src_data10;
 wire [7:0] sc2mac_wt_a_src_data11;
 wire [7:0] sc2mac_wt_a_src_data12;
 wire [7:0] sc2mac_wt_a_src_data13;
 wire [7:0] sc2mac_wt_a_src_data14;
 wire [7:0] sc2mac_wt_a_src_data15;
 wire [7:0] sc2mac_wt_a_src_data16;
 wire [7:0] sc2mac_wt_a_src_data17;
 wire [7:0] sc2mac_wt_a_src_data18;
 wire [7:0] sc2mac_wt_a_src_data19;
 wire [7:0] sc2mac_wt_a_src_data20;
 wire [7:0] sc2mac_wt_a_src_data21;
 wire [7:0] sc2mac_wt_a_src_data22;
 wire [7:0] sc2mac_wt_a_src_data23;
 wire [7:0] sc2mac_wt_a_src_data24;
 wire [7:0] sc2mac_wt_a_src_data25;
 wire [7:0] sc2mac_wt_a_src_data26;
 wire [7:0] sc2mac_wt_a_src_data27;
 wire [7:0] sc2mac_wt_a_src_data28;
 wire [7:0] sc2mac_wt_a_src_data29;
 wire [7:0] sc2mac_wt_a_src_data30;
 wire [7:0] sc2mac_wt_a_src_data31;
 wire [7:0] sc2mac_wt_a_src_data32;
 wire [7:0] sc2mac_wt_a_src_data33;
 wire [7:0] sc2mac_wt_a_src_data34;
 wire [7:0] sc2mac_wt_a_src_data35;
 wire [7:0] sc2mac_wt_a_src_data36;
 wire [7:0] sc2mac_wt_a_src_data37;
 wire [7:0] sc2mac_wt_a_src_data38;
 wire [7:0] sc2mac_wt_a_src_data39;
 wire [7:0] sc2mac_wt_a_src_data40;
 wire [7:0] sc2mac_wt_a_src_data41;
 wire [7:0] sc2mac_wt_a_src_data42;
 wire [7:0] sc2mac_wt_a_src_data43;
 wire [7:0] sc2mac_wt_a_src_data44;
 wire [7:0] sc2mac_wt_a_src_data45;
 wire [7:0] sc2mac_wt_a_src_data46;
 wire [7:0] sc2mac_wt_a_src_data47;
 wire [7:0] sc2mac_wt_a_src_data48;
 wire [7:0] sc2mac_wt_a_src_data49;
 wire [7:0] sc2mac_wt_a_src_data50;
 wire [7:0] sc2mac_wt_a_src_data51;
 wire [7:0] sc2mac_wt_a_src_data52;
 wire [7:0] sc2mac_wt_a_src_data53;
 wire [7:0] sc2mac_wt_a_src_data54;
 wire [7:0] sc2mac_wt_a_src_data55;
 wire [7:0] sc2mac_wt_a_src_data56;
 wire [7:0] sc2mac_wt_a_src_data57;
 wire [7:0] sc2mac_wt_a_src_data58;
 wire [7:0] sc2mac_wt_a_src_data59;
 wire [7:0] sc2mac_wt_a_src_data60;
 wire [7:0] sc2mac_wt_a_src_data61;
 wire [7:0] sc2mac_wt_a_src_data62;
 wire [7:0] sc2mac_wt_a_src_data63;
 wire [7:0] sc2mac_wt_a_src_data64;
 wire [7:0] sc2mac_wt_a_src_data65;
 wire [7:0] sc2mac_wt_a_src_data66;
 wire [7:0] sc2mac_wt_a_src_data67;
 wire [7:0] sc2mac_wt_a_src_data68;
 wire [7:0] sc2mac_wt_a_src_data69;
 wire [7:0] sc2mac_wt_a_src_data70;
 wire [7:0] sc2mac_wt_a_src_data71;
 wire [7:0] sc2mac_wt_a_src_data72;
 wire [7:0] sc2mac_wt_a_src_data73;
 wire [7:0] sc2mac_wt_a_src_data74;
 wire [7:0] sc2mac_wt_a_src_data75;
 wire [7:0] sc2mac_wt_a_src_data76;
 wire [7:0] sc2mac_wt_a_src_data77;
 wire [7:0] sc2mac_wt_a_src_data78;
 wire [7:0] sc2mac_wt_a_src_data79;
 wire [7:0] sc2mac_wt_a_src_data80;
 wire [7:0] sc2mac_wt_a_src_data81;
 wire [7:0] sc2mac_wt_a_src_data82;
 wire [7:0] sc2mac_wt_a_src_data83;
 wire [7:0] sc2mac_wt_a_src_data84;
 wire [7:0] sc2mac_wt_a_src_data85;
 wire [7:0] sc2mac_wt_a_src_data86;
 wire [7:0] sc2mac_wt_a_src_data87;
 wire [7:0] sc2mac_wt_a_src_data88;
 wire [7:0] sc2mac_wt_a_src_data89;
 wire [7:0] sc2mac_wt_a_src_data90;
 wire [7:0] sc2mac_wt_a_src_data91;
 wire [7:0] sc2mac_wt_a_src_data92;
 wire [7:0] sc2mac_wt_a_src_data93;
 wire [7:0] sc2mac_wt_a_src_data94;
 wire [7:0] sc2mac_wt_a_src_data95;
 wire [7:0] sc2mac_wt_a_src_data96;
 wire [7:0] sc2mac_wt_a_src_data97;
 wire [7:0] sc2mac_wt_a_src_data98;
 wire [7:0] sc2mac_wt_a_src_data99;
 wire [7:0] sc2mac_wt_a_src_data100;
 wire [7:0] sc2mac_wt_a_src_data101;
 wire [7:0] sc2mac_wt_a_src_data102;
 wire [7:0] sc2mac_wt_a_src_data103;
 wire [7:0] sc2mac_wt_a_src_data104;
 wire [7:0] sc2mac_wt_a_src_data105;
 wire [7:0] sc2mac_wt_a_src_data106;
 wire [7:0] sc2mac_wt_a_src_data107;
 wire [7:0] sc2mac_wt_a_src_data108;
 wire [7:0] sc2mac_wt_a_src_data109;
 wire [7:0] sc2mac_wt_a_src_data110;
 wire [7:0] sc2mac_wt_a_src_data111;
 wire [7:0] sc2mac_wt_a_src_data112;
 wire [7:0] sc2mac_wt_a_src_data113;
 wire [7:0] sc2mac_wt_a_src_data114;
 wire [7:0] sc2mac_wt_a_src_data115;
 wire [7:0] sc2mac_wt_a_src_data116;
 wire [7:0] sc2mac_wt_a_src_data117;
 wire [7:0] sc2mac_wt_a_src_data118;
 wire [7:0] sc2mac_wt_a_src_data119;
 wire [7:0] sc2mac_wt_a_src_data120;
 wire [7:0] sc2mac_wt_a_src_data121;
 wire [7:0] sc2mac_wt_a_src_data122;
 wire [7:0] sc2mac_wt_a_src_data123;
 wire [7:0] sc2mac_wt_a_src_data124;
 wire [7:0] sc2mac_wt_a_src_data125;
 wire [7:0] sc2mac_wt_a_src_data126;
 wire [7:0] sc2mac_wt_a_src_data127;
 wire [7:0] sc2mac_wt_a_src_sel;
// * sc2mac_b weight
 wire sc2mac_wt_b_src_pvld;
 wire [127:0] sc2mac_wt_b_src_mask;
 wire [7:0] sc2mac_wt_b_src_data0;
 wire [7:0] sc2mac_wt_b_src_data1;
 wire [7:0] sc2mac_wt_b_src_data2;
 wire [7:0] sc2mac_wt_b_src_data3;
 wire [7:0] sc2mac_wt_b_src_data4;
 wire [7:0] sc2mac_wt_b_src_data5;
 wire [7:0] sc2mac_wt_b_src_data6;
 wire [7:0] sc2mac_wt_b_src_data7;
 wire [7:0] sc2mac_wt_b_src_data8;
 wire [7:0] sc2mac_wt_b_src_data9;
 wire [7:0] sc2mac_wt_b_src_data10;
 wire [7:0] sc2mac_wt_b_src_data11;
 wire [7:0] sc2mac_wt_b_src_data12;
 wire [7:0] sc2mac_wt_b_src_data13;
 wire [7:0] sc2mac_wt_b_src_data14;
 wire [7:0] sc2mac_wt_b_src_data15;
 wire [7:0] sc2mac_wt_b_src_data16;
 wire [7:0] sc2mac_wt_b_src_data17;
 wire [7:0] sc2mac_wt_b_src_data18;
 wire [7:0] sc2mac_wt_b_src_data19;
 wire [7:0] sc2mac_wt_b_src_data20;
 wire [7:0] sc2mac_wt_b_src_data21;
 wire [7:0] sc2mac_wt_b_src_data22;
 wire [7:0] sc2mac_wt_b_src_data23;
 wire [7:0] sc2mac_wt_b_src_data24;
 wire [7:0] sc2mac_wt_b_src_data25;
 wire [7:0] sc2mac_wt_b_src_data26;
 wire [7:0] sc2mac_wt_b_src_data27;
 wire [7:0] sc2mac_wt_b_src_data28;
 wire [7:0] sc2mac_wt_b_src_data29;
 wire [7:0] sc2mac_wt_b_src_data30;
 wire [7:0] sc2mac_wt_b_src_data31;
 wire [7:0] sc2mac_wt_b_src_data32;
 wire [7:0] sc2mac_wt_b_src_data33;
 wire [7:0] sc2mac_wt_b_src_data34;
 wire [7:0] sc2mac_wt_b_src_data35;
 wire [7:0] sc2mac_wt_b_src_data36;
 wire [7:0] sc2mac_wt_b_src_data37;
 wire [7:0] sc2mac_wt_b_src_data38;
 wire [7:0] sc2mac_wt_b_src_data39;
 wire [7:0] sc2mac_wt_b_src_data40;
 wire [7:0] sc2mac_wt_b_src_data41;
 wire [7:0] sc2mac_wt_b_src_data42;
 wire [7:0] sc2mac_wt_b_src_data43;
 wire [7:0] sc2mac_wt_b_src_data44;
 wire [7:0] sc2mac_wt_b_src_data45;
 wire [7:0] sc2mac_wt_b_src_data46;
 wire [7:0] sc2mac_wt_b_src_data47;
 wire [7:0] sc2mac_wt_b_src_data48;
 wire [7:0] sc2mac_wt_b_src_data49;
 wire [7:0] sc2mac_wt_b_src_data50;
 wire [7:0] sc2mac_wt_b_src_data51;
 wire [7:0] sc2mac_wt_b_src_data52;
 wire [7:0] sc2mac_wt_b_src_data53;
 wire [7:0] sc2mac_wt_b_src_data54;
 wire [7:0] sc2mac_wt_b_src_data55;
 wire [7:0] sc2mac_wt_b_src_data56;
 wire [7:0] sc2mac_wt_b_src_data57;
 wire [7:0] sc2mac_wt_b_src_data58;
 wire [7:0] sc2mac_wt_b_src_data59;
 wire [7:0] sc2mac_wt_b_src_data60;
 wire [7:0] sc2mac_wt_b_src_data61;
 wire [7:0] sc2mac_wt_b_src_data62;
 wire [7:0] sc2mac_wt_b_src_data63;
 wire [7:0] sc2mac_wt_b_src_data64;
 wire [7:0] sc2mac_wt_b_src_data65;
 wire [7:0] sc2mac_wt_b_src_data66;
 wire [7:0] sc2mac_wt_b_src_data67;
 wire [7:0] sc2mac_wt_b_src_data68;
 wire [7:0] sc2mac_wt_b_src_data69;
 wire [7:0] sc2mac_wt_b_src_data70;
 wire [7:0] sc2mac_wt_b_src_data71;
 wire [7:0] sc2mac_wt_b_src_data72;
 wire [7:0] sc2mac_wt_b_src_data73;
 wire [7:0] sc2mac_wt_b_src_data74;
 wire [7:0] sc2mac_wt_b_src_data75;
 wire [7:0] sc2mac_wt_b_src_data76;
 wire [7:0] sc2mac_wt_b_src_data77;
 wire [7:0] sc2mac_wt_b_src_data78;
 wire [7:0] sc2mac_wt_b_src_data79;
 wire [7:0] sc2mac_wt_b_src_data80;
 wire [7:0] sc2mac_wt_b_src_data81;
 wire [7:0] sc2mac_wt_b_src_data82;
 wire [7:0] sc2mac_wt_b_src_data83;
 wire [7:0] sc2mac_wt_b_src_data84;
 wire [7:0] sc2mac_wt_b_src_data85;
 wire [7:0] sc2mac_wt_b_src_data86;
 wire [7:0] sc2mac_wt_b_src_data87;
 wire [7:0] sc2mac_wt_b_src_data88;
 wire [7:0] sc2mac_wt_b_src_data89;
 wire [7:0] sc2mac_wt_b_src_data90;
 wire [7:0] sc2mac_wt_b_src_data91;
 wire [7:0] sc2mac_wt_b_src_data92;
 wire [7:0] sc2mac_wt_b_src_data93;
 wire [7:0] sc2mac_wt_b_src_data94;
 wire [7:0] sc2mac_wt_b_src_data95;
 wire [7:0] sc2mac_wt_b_src_data96;
 wire [7:0] sc2mac_wt_b_src_data97;
 wire [7:0] sc2mac_wt_b_src_data98;
 wire [7:0] sc2mac_wt_b_src_data99;
 wire [7:0] sc2mac_wt_b_src_data100;
 wire [7:0] sc2mac_wt_b_src_data101;
 wire [7:0] sc2mac_wt_b_src_data102;
 wire [7:0] sc2mac_wt_b_src_data103;
 wire [7:0] sc2mac_wt_b_src_data104;
 wire [7:0] sc2mac_wt_b_src_data105;
 wire [7:0] sc2mac_wt_b_src_data106;
 wire [7:0] sc2mac_wt_b_src_data107;
 wire [7:0] sc2mac_wt_b_src_data108;
 wire [7:0] sc2mac_wt_b_src_data109;
 wire [7:0] sc2mac_wt_b_src_data110;
 wire [7:0] sc2mac_wt_b_src_data111;
 wire [7:0] sc2mac_wt_b_src_data112;
 wire [7:0] sc2mac_wt_b_src_data113;
 wire [7:0] sc2mac_wt_b_src_data114;
 wire [7:0] sc2mac_wt_b_src_data115;
 wire [7:0] sc2mac_wt_b_src_data116;
 wire [7:0] sc2mac_wt_b_src_data117;
 wire [7:0] sc2mac_wt_b_src_data118;
 wire [7:0] sc2mac_wt_b_src_data119;
 wire [7:0] sc2mac_wt_b_src_data120;
 wire [7:0] sc2mac_wt_b_src_data121;
 wire [7:0] sc2mac_wt_b_src_data122;
 wire [7:0] sc2mac_wt_b_src_data123;
 wire [7:0] sc2mac_wt_b_src_data124;
 wire [7:0] sc2mac_wt_b_src_data125;
 wire [7:0] sc2mac_wt_b_src_data126;
 wire [7:0] sc2mac_wt_b_src_data127;
 wire [7:0] sc2mac_wt_b_src_sel;
// ------------- sc end ---------------//

// ------------ cmaca start --------------//
// csb2mac_a |<> io
 input csb2cmac_a_req_pvld;
 output csb2cmac_a_req_prdy;
 input [62:0] csb2cmac_a_req_pd;
// mac_a2accu
 wire mac_a2accu_dst_pvld; /* data valid */
 wire [7:0] mac_a2accu_dst_mask;
 wire [7:0] mac_a2accu_dst_mode;
 wire [175:0] mac_a2accu_dst_data0;
 wire [175:0] mac_a2accu_dst_data1;
 wire [175:0] mac_a2accu_dst_data2;
 wire [175:0] mac_a2accu_dst_data3;
 wire [175:0] mac_a2accu_dst_data4;
 wire [175:0] mac_a2accu_dst_data5;
 wire [175:0] mac_a2accu_dst_data6;
 wire [175:0] mac_a2accu_dst_data7;
 wire [8:0] mac_a2accu_dst_pd;
// ------------ cmaca end --------------//

// ------------ cmacb start --------------//
// csb2mac_b |<> io
 input csb2cmac_b_req_pvld;
 output csb2cmac_b_req_prdy;
 input [62:0] csb2cmac_b_req_pd;
// mac_b2accu
 wire [7:0] mac_b2accu_dst_mask;
 wire [7:0] mac_b2accu_dst_mode;
 wire [8:0] mac_b2accu_dst_pd;
 wire mac_b2accu_dst_pvld;
 wire [175:0] mac_b2accu_dst_data0;
 wire [175:0] mac_b2accu_dst_data1;
 wire [175:0] mac_b2accu_dst_data2;
 wire [175:0] mac_b2accu_dst_data3;
 wire [175:0] mac_b2accu_dst_data4;
 wire [175:0] mac_b2accu_dst_data5;
 wire [175:0] mac_b2accu_dst_data6;
 wire [175:0] mac_b2accu_dst_data7;
// ------------ cmacb end --------------//

// ------------ caccu start --------------//
// csb2acc |<> io 
 input csb2cacc_req_dst_pvld;
 output csb2cacc_req_dst_prdy;
 input [62:0] csb2cacc_req_dst_pd;
// accu2sdp |<> io
 output cacc2sdp_valid;
 input cacc2sdp_ready;
 output [513:0] cacc2sdp_pd;
output [1:0] cacc2glb_done_intr_src_pd;



////////////////////////////////////////////////////////////////////////
// NVDLA Partition C: Convolution Sequence Controller //
////////////////////////////////////////////////////////////////////////
NV_NVDLA_csc csc (
   .nvdla_core_clk (nvdla_core_clk) //|< i
  ,.nvdla_core_rstn (nvdla_core_rstn) //|< w
// * accu2sc
  ,.accu2sc_credit_vld (accu2sc_credit_vld) //|< w
  ,.accu2sc_credit_size (accu2sc_credit_size[2:0]) //|< w
// * csb2sc |<> io
  ,.csb2csc_req_pvld (csb2csc_req_pvld) //|< i
  ,.csb2csc_req_prdy (csb2csc_req_prdy) //|> o
  ,.csb2csc_req_pd (csb2csc_req_pd[62:0]) //|< i
  ,.csc2csb_resp_valid () //|> o
  ,.csc2csb_resp_pd () //|> o
// others sc2buf
  ,.pwrbus_ram_pd () //|< i
  ,.sc2buf_dat_rd_en () //|> w
  ,.sc2buf_dat_rd_addr () //|> w
  ,.sc2buf_dat_rd_valid () //|< w
  ,.sc2buf_dat_rd_data () //|< w
  ,.sc2buf_wmb_rd_en () //|> w
  ,.sc2buf_wmb_rd_addr () //|> w
  ,.sc2buf_wmb_rd_valid () //|< w
  ,.sc2buf_wmb_rd_data () //|< w
  ,.sc2buf_wt_rd_en () //|> w
  ,.sc2buf_wt_rd_addr () //|> w
  ,.sc2buf_wt_rd_valid () //|< w
  ,.sc2buf_wt_rd_data () //|< w
// * sc2mac_a data
  ,.sc2mac_dat_a_pvld (sc2mac_dat_a_src_pvld) //|> o
  ,.sc2mac_dat_a_mask (sc2mac_dat_a_src_mask[127:0]) //|> o
  ,.sc2mac_dat_a_data0 (sc2mac_dat_a_src_data0[7:0]) //|> o
  ,.sc2mac_dat_a_data1 (sc2mac_dat_a_src_data1[7:0]) //|> o
  ,.sc2mac_dat_a_data2 (sc2mac_dat_a_src_data2[7:0]) //|> o
  ,.sc2mac_dat_a_data3 (sc2mac_dat_a_src_data3[7:0]) //|> o
  ,.sc2mac_dat_a_data4 (sc2mac_dat_a_src_data4[7:0]) //|> o
  ,.sc2mac_dat_a_data5 (sc2mac_dat_a_src_data5[7:0]) //|> o
  ,.sc2mac_dat_a_data6 (sc2mac_dat_a_src_data6[7:0]) //|> o
  ,.sc2mac_dat_a_data7 (sc2mac_dat_a_src_data7[7:0]) //|> o
  ,.sc2mac_dat_a_data8 (sc2mac_dat_a_src_data8[7:0]) //|> o
  ,.sc2mac_dat_a_data9 (sc2mac_dat_a_src_data9[7:0]) //|> o
  ,.sc2mac_dat_a_data10 (sc2mac_dat_a_src_data10[7:0]) //|> o
  ,.sc2mac_dat_a_data11 (sc2mac_dat_a_src_data11[7:0]) //|> o
  ,.sc2mac_dat_a_data12 (sc2mac_dat_a_src_data12[7:0]) //|> o
  ,.sc2mac_dat_a_data13 (sc2mac_dat_a_src_data13[7:0]) //|> o
  ,.sc2mac_dat_a_data14 (sc2mac_dat_a_src_data14[7:0]) //|> o
  ,.sc2mac_dat_a_data15 (sc2mac_dat_a_src_data15[7:0]) //|> o
  ,.sc2mac_dat_a_data16 (sc2mac_dat_a_src_data16[7:0]) //|> o
  ,.sc2mac_dat_a_data17 (sc2mac_dat_a_src_data17[7:0]) //|> o
  ,.sc2mac_dat_a_data18 (sc2mac_dat_a_src_data18[7:0]) //|> o
  ,.sc2mac_dat_a_data19 (sc2mac_dat_a_src_data19[7:0]) //|> o
  ,.sc2mac_dat_a_data20 (sc2mac_dat_a_src_data20[7:0]) //|> o
  ,.sc2mac_dat_a_data21 (sc2mac_dat_a_src_data21[7:0]) //|> o
  ,.sc2mac_dat_a_data22 (sc2mac_dat_a_src_data22[7:0]) //|> o
  ,.sc2mac_dat_a_data23 (sc2mac_dat_a_src_data23[7:0]) //|> o
  ,.sc2mac_dat_a_data24 (sc2mac_dat_a_src_data24[7:0]) //|> o
  ,.sc2mac_dat_a_data25 (sc2mac_dat_a_src_data25[7:0]) //|> o
  ,.sc2mac_dat_a_data26 (sc2mac_dat_a_src_data26[7:0]) //|> o
  ,.sc2mac_dat_a_data27 (sc2mac_dat_a_src_data27[7:0]) //|> o
  ,.sc2mac_dat_a_data28 (sc2mac_dat_a_src_data28[7:0]) //|> o
  ,.sc2mac_dat_a_data29 (sc2mac_dat_a_src_data29[7:0]) //|> o
  ,.sc2mac_dat_a_data30 (sc2mac_dat_a_src_data30[7:0]) //|> o
  ,.sc2mac_dat_a_data31 (sc2mac_dat_a_src_data31[7:0]) //|> o
  ,.sc2mac_dat_a_data32 (sc2mac_dat_a_src_data32[7:0]) //|> o
  ,.sc2mac_dat_a_data33 (sc2mac_dat_a_src_data33[7:0]) //|> o
  ,.sc2mac_dat_a_data34 (sc2mac_dat_a_src_data34[7:0]) //|> o
  ,.sc2mac_dat_a_data35 (sc2mac_dat_a_src_data35[7:0]) //|> o
  ,.sc2mac_dat_a_data36 (sc2mac_dat_a_src_data36[7:0]) //|> o
  ,.sc2mac_dat_a_data37 (sc2mac_dat_a_src_data37[7:0]) //|> o
  ,.sc2mac_dat_a_data38 (sc2mac_dat_a_src_data38[7:0]) //|> o
  ,.sc2mac_dat_a_data39 (sc2mac_dat_a_src_data39[7:0]) //|> o
  ,.sc2mac_dat_a_data40 (sc2mac_dat_a_src_data40[7:0]) //|> o
  ,.sc2mac_dat_a_data41 (sc2mac_dat_a_src_data41[7:0]) //|> o
  ,.sc2mac_dat_a_data42 (sc2mac_dat_a_src_data42[7:0]) //|> o
  ,.sc2mac_dat_a_data43 (sc2mac_dat_a_src_data43[7:0]) //|> o
  ,.sc2mac_dat_a_data44 (sc2mac_dat_a_src_data44[7:0]) //|> o
  ,.sc2mac_dat_a_data45 (sc2mac_dat_a_src_data45[7:0]) //|> o
  ,.sc2mac_dat_a_data46 (sc2mac_dat_a_src_data46[7:0]) //|> o
  ,.sc2mac_dat_a_data47 (sc2mac_dat_a_src_data47[7:0]) //|> o
  ,.sc2mac_dat_a_data48 (sc2mac_dat_a_src_data48[7:0]) //|> o
  ,.sc2mac_dat_a_data49 (sc2mac_dat_a_src_data49[7:0]) //|> o
  ,.sc2mac_dat_a_data50 (sc2mac_dat_a_src_data50[7:0]) //|> o
  ,.sc2mac_dat_a_data51 (sc2mac_dat_a_src_data51[7:0]) //|> o
  ,.sc2mac_dat_a_data52 (sc2mac_dat_a_src_data52[7:0]) //|> o
  ,.sc2mac_dat_a_data53 (sc2mac_dat_a_src_data53[7:0]) //|> o
  ,.sc2mac_dat_a_data54 (sc2mac_dat_a_src_data54[7:0]) //|> o
  ,.sc2mac_dat_a_data55 (sc2mac_dat_a_src_data55[7:0]) //|> o
  ,.sc2mac_dat_a_data56 (sc2mac_dat_a_src_data56[7:0]) //|> o
  ,.sc2mac_dat_a_data57 (sc2mac_dat_a_src_data57[7:0]) //|> o
  ,.sc2mac_dat_a_data58 (sc2mac_dat_a_src_data58[7:0]) //|> o
  ,.sc2mac_dat_a_data59 (sc2mac_dat_a_src_data59[7:0]) //|> o
  ,.sc2mac_dat_a_data60 (sc2mac_dat_a_src_data60[7:0]) //|> o
  ,.sc2mac_dat_a_data61 (sc2mac_dat_a_src_data61[7:0]) //|> o
  ,.sc2mac_dat_a_data62 (sc2mac_dat_a_src_data62[7:0]) //|> o
  ,.sc2mac_dat_a_data63 (sc2mac_dat_a_src_data63[7:0]) //|> o
  ,.sc2mac_dat_a_data64 (sc2mac_dat_a_src_data64[7:0]) //|> o
  ,.sc2mac_dat_a_data65 (sc2mac_dat_a_src_data65[7:0]) //|> o
  ,.sc2mac_dat_a_data66 (sc2mac_dat_a_src_data66[7:0]) //|> o
  ,.sc2mac_dat_a_data67 (sc2mac_dat_a_src_data67[7:0]) //|> o
  ,.sc2mac_dat_a_data68 (sc2mac_dat_a_src_data68[7:0]) //|> o
  ,.sc2mac_dat_a_data69 (sc2mac_dat_a_src_data69[7:0]) //|> o
  ,.sc2mac_dat_a_data70 (sc2mac_dat_a_src_data70[7:0]) //|> o
  ,.sc2mac_dat_a_data71 (sc2mac_dat_a_src_data71[7:0]) //|> o
  ,.sc2mac_dat_a_data72 (sc2mac_dat_a_src_data72[7:0]) //|> o
  ,.sc2mac_dat_a_data73 (sc2mac_dat_a_src_data73[7:0]) //|> o
  ,.sc2mac_dat_a_data74 (sc2mac_dat_a_src_data74[7:0]) //|> o
  ,.sc2mac_dat_a_data75 (sc2mac_dat_a_src_data75[7:0]) //|> o
  ,.sc2mac_dat_a_data76 (sc2mac_dat_a_src_data76[7:0]) //|> o
  ,.sc2mac_dat_a_data77 (sc2mac_dat_a_src_data77[7:0]) //|> o
  ,.sc2mac_dat_a_data78 (sc2mac_dat_a_src_data78[7:0]) //|> o
  ,.sc2mac_dat_a_data79 (sc2mac_dat_a_src_data79[7:0]) //|> o
  ,.sc2mac_dat_a_data80 (sc2mac_dat_a_src_data80[7:0]) //|> o
  ,.sc2mac_dat_a_data81 (sc2mac_dat_a_src_data81[7:0]) //|> o
  ,.sc2mac_dat_a_data82 (sc2mac_dat_a_src_data82[7:0]) //|> o
  ,.sc2mac_dat_a_data83 (sc2mac_dat_a_src_data83[7:0]) //|> o
  ,.sc2mac_dat_a_data84 (sc2mac_dat_a_src_data84[7:0]) //|> o
  ,.sc2mac_dat_a_data85 (sc2mac_dat_a_src_data85[7:0]) //|> o
  ,.sc2mac_dat_a_data86 (sc2mac_dat_a_src_data86[7:0]) //|> o
  ,.sc2mac_dat_a_data87 (sc2mac_dat_a_src_data87[7:0]) //|> o
  ,.sc2mac_dat_a_data88 (sc2mac_dat_a_src_data88[7:0]) //|> o
  ,.sc2mac_dat_a_data89 (sc2mac_dat_a_src_data89[7:0]) //|> o
  ,.sc2mac_dat_a_data90 (sc2mac_dat_a_src_data90[7:0]) //|> o
  ,.sc2mac_dat_a_data91 (sc2mac_dat_a_src_data91[7:0]) //|> o
  ,.sc2mac_dat_a_data92 (sc2mac_dat_a_src_data92[7:0]) //|> o
  ,.sc2mac_dat_a_data93 (sc2mac_dat_a_src_data93[7:0]) //|> o
  ,.sc2mac_dat_a_data94 (sc2mac_dat_a_src_data94[7:0]) //|> o
  ,.sc2mac_dat_a_data95 (sc2mac_dat_a_src_data95[7:0]) //|> o
  ,.sc2mac_dat_a_data96 (sc2mac_dat_a_src_data96[7:0]) //|> o
  ,.sc2mac_dat_a_data97 (sc2mac_dat_a_src_data97[7:0]) //|> o
  ,.sc2mac_dat_a_data98 (sc2mac_dat_a_src_data98[7:0]) //|> o
  ,.sc2mac_dat_a_data99 (sc2mac_dat_a_src_data99[7:0]) //|> o
  ,.sc2mac_dat_a_data100 (sc2mac_dat_a_src_data100[7:0]) //|> o
  ,.sc2mac_dat_a_data101 (sc2mac_dat_a_src_data101[7:0]) //|> o
  ,.sc2mac_dat_a_data102 (sc2mac_dat_a_src_data102[7:0]) //|> o
  ,.sc2mac_dat_a_data103 (sc2mac_dat_a_src_data103[7:0]) //|> o
  ,.sc2mac_dat_a_data104 (sc2mac_dat_a_src_data104[7:0]) //|> o
  ,.sc2mac_dat_a_data105 (sc2mac_dat_a_src_data105[7:0]) //|> o
  ,.sc2mac_dat_a_data106 (sc2mac_dat_a_src_data106[7:0]) //|> o
  ,.sc2mac_dat_a_data107 (sc2mac_dat_a_src_data107[7:0]) //|> o
  ,.sc2mac_dat_a_data108 (sc2mac_dat_a_src_data108[7:0]) //|> o
  ,.sc2mac_dat_a_data109 (sc2mac_dat_a_src_data109[7:0]) //|> o
  ,.sc2mac_dat_a_data110 (sc2mac_dat_a_src_data110[7:0]) //|> o
  ,.sc2mac_dat_a_data111 (sc2mac_dat_a_src_data111[7:0]) //|> o
  ,.sc2mac_dat_a_data112 (sc2mac_dat_a_src_data112[7:0]) //|> o
  ,.sc2mac_dat_a_data113 (sc2mac_dat_a_src_data113[7:0]) //|> o
  ,.sc2mac_dat_a_data114 (sc2mac_dat_a_src_data114[7:0]) //|> o
  ,.sc2mac_dat_a_data115 (sc2mac_dat_a_src_data115[7:0]) //|> o
  ,.sc2mac_dat_a_data116 (sc2mac_dat_a_src_data116[7:0]) //|> o
  ,.sc2mac_dat_a_data117 (sc2mac_dat_a_src_data117[7:0]) //|> o
  ,.sc2mac_dat_a_data118 (sc2mac_dat_a_src_data118[7:0]) //|> o
  ,.sc2mac_dat_a_data119 (sc2mac_dat_a_src_data119[7:0]) //|> o
  ,.sc2mac_dat_a_data120 (sc2mac_dat_a_src_data120[7:0]) //|> o
  ,.sc2mac_dat_a_data121 (sc2mac_dat_a_src_data121[7:0]) //|> o
  ,.sc2mac_dat_a_data122 (sc2mac_dat_a_src_data122[7:0]) //|> o
  ,.sc2mac_dat_a_data123 (sc2mac_dat_a_src_data123[7:0]) //|> o
  ,.sc2mac_dat_a_data124 (sc2mac_dat_a_src_data124[7:0]) //|> o
  ,.sc2mac_dat_a_data125 (sc2mac_dat_a_src_data125[7:0]) //|> o
  ,.sc2mac_dat_a_data126 (sc2mac_dat_a_src_data126[7:0]) //|> o
  ,.sc2mac_dat_a_data127 (sc2mac_dat_a_src_data127[7:0]) //|> o
  ,.sc2mac_dat_a_pd (sc2mac_dat_a_src_pd[8:0]) //|> o
// * sc2mac_b data
  ,.sc2mac_dat_b_pvld (sc2mac_dat_b_src_pvld) //|> w
  ,.sc2mac_dat_b_mask (sc2mac_dat_b_src_mask[127:0]) //|> w
  ,.sc2mac_dat_b_data0 (sc2mac_dat_b_src_data0[7:0]) //|> w
  ,.sc2mac_dat_b_data1 (sc2mac_dat_b_src_data1[7:0]) //|> w
  ,.sc2mac_dat_b_data2 (sc2mac_dat_b_src_data2[7:0]) //|> w
  ,.sc2mac_dat_b_data3 (sc2mac_dat_b_src_data3[7:0]) //|> w
  ,.sc2mac_dat_b_data4 (sc2mac_dat_b_src_data4[7:0]) //|> w
  ,.sc2mac_dat_b_data5 (sc2mac_dat_b_src_data5[7:0]) //|> w
  ,.sc2mac_dat_b_data6 (sc2mac_dat_b_src_data6[7:0]) //|> w
  ,.sc2mac_dat_b_data7 (sc2mac_dat_b_src_data7[7:0]) //|> w
  ,.sc2mac_dat_b_data8 (sc2mac_dat_b_src_data8[7:0]) //|> w
  ,.sc2mac_dat_b_data9 (sc2mac_dat_b_src_data9[7:0]) //|> w
  ,.sc2mac_dat_b_data10 (sc2mac_dat_b_src_data10[7:0]) //|> w
  ,.sc2mac_dat_b_data11 (sc2mac_dat_b_src_data11[7:0]) //|> w
  ,.sc2mac_dat_b_data12 (sc2mac_dat_b_src_data12[7:0]) //|> w
  ,.sc2mac_dat_b_data13 (sc2mac_dat_b_src_data13[7:0]) //|> w
  ,.sc2mac_dat_b_data14 (sc2mac_dat_b_src_data14[7:0]) //|> w
  ,.sc2mac_dat_b_data15 (sc2mac_dat_b_src_data15[7:0]) //|> w
  ,.sc2mac_dat_b_data16 (sc2mac_dat_b_src_data16[7:0]) //|> w
  ,.sc2mac_dat_b_data17 (sc2mac_dat_b_src_data17[7:0]) //|> w
  ,.sc2mac_dat_b_data18 (sc2mac_dat_b_src_data18[7:0]) //|> w
  ,.sc2mac_dat_b_data19 (sc2mac_dat_b_src_data19[7:0]) //|> w
  ,.sc2mac_dat_b_data20 (sc2mac_dat_b_src_data20[7:0]) //|> w
  ,.sc2mac_dat_b_data21 (sc2mac_dat_b_src_data21[7:0]) //|> w
  ,.sc2mac_dat_b_data22 (sc2mac_dat_b_src_data22[7:0]) //|> w
  ,.sc2mac_dat_b_data23 (sc2mac_dat_b_src_data23[7:0]) //|> w
  ,.sc2mac_dat_b_data24 (sc2mac_dat_b_src_data24[7:0]) //|> w
  ,.sc2mac_dat_b_data25 (sc2mac_dat_b_src_data25[7:0]) //|> w
  ,.sc2mac_dat_b_data26 (sc2mac_dat_b_src_data26[7:0]) //|> w
  ,.sc2mac_dat_b_data27 (sc2mac_dat_b_src_data27[7:0]) //|> w
  ,.sc2mac_dat_b_data28 (sc2mac_dat_b_src_data28[7:0]) //|> w
  ,.sc2mac_dat_b_data29 (sc2mac_dat_b_src_data29[7:0]) //|> w
  ,.sc2mac_dat_b_data30 (sc2mac_dat_b_src_data30[7:0]) //|> w
  ,.sc2mac_dat_b_data31 (sc2mac_dat_b_src_data31[7:0]) //|> w
  ,.sc2mac_dat_b_data32 (sc2mac_dat_b_src_data32[7:0]) //|> w
  ,.sc2mac_dat_b_data33 (sc2mac_dat_b_src_data33[7:0]) //|> w
  ,.sc2mac_dat_b_data34 (sc2mac_dat_b_src_data34[7:0]) //|> w
  ,.sc2mac_dat_b_data35 (sc2mac_dat_b_src_data35[7:0]) //|> w
  ,.sc2mac_dat_b_data36 (sc2mac_dat_b_src_data36[7:0]) //|> w
  ,.sc2mac_dat_b_data37 (sc2mac_dat_b_src_data37[7:0]) //|> w
  ,.sc2mac_dat_b_data38 (sc2mac_dat_b_src_data38[7:0]) //|> w
  ,.sc2mac_dat_b_data39 (sc2mac_dat_b_src_data39[7:0]) //|> w
  ,.sc2mac_dat_b_data40 (sc2mac_dat_b_src_data40[7:0]) //|> w
  ,.sc2mac_dat_b_data41 (sc2mac_dat_b_src_data41[7:0]) //|> w
  ,.sc2mac_dat_b_data42 (sc2mac_dat_b_src_data42[7:0]) //|> w
  ,.sc2mac_dat_b_data43 (sc2mac_dat_b_src_data43[7:0]) //|> w
  ,.sc2mac_dat_b_data44 (sc2mac_dat_b_src_data44[7:0]) //|> w
  ,.sc2mac_dat_b_data45 (sc2mac_dat_b_src_data45[7:0]) //|> w
  ,.sc2mac_dat_b_data46 (sc2mac_dat_b_src_data46[7:0]) //|> w
  ,.sc2mac_dat_b_data47 (sc2mac_dat_b_src_data47[7:0]) //|> w
  ,.sc2mac_dat_b_data48 (sc2mac_dat_b_src_data48[7:0]) //|> w
  ,.sc2mac_dat_b_data49 (sc2mac_dat_b_src_data49[7:0]) //|> w
  ,.sc2mac_dat_b_data50 (sc2mac_dat_b_src_data50[7:0]) //|> w
  ,.sc2mac_dat_b_data51 (sc2mac_dat_b_src_data51[7:0]) //|> w
  ,.sc2mac_dat_b_data52 (sc2mac_dat_b_src_data52[7:0]) //|> w
  ,.sc2mac_dat_b_data53 (sc2mac_dat_b_src_data53[7:0]) //|> w
  ,.sc2mac_dat_b_data54 (sc2mac_dat_b_src_data54[7:0]) //|> w
  ,.sc2mac_dat_b_data55 (sc2mac_dat_b_src_data55[7:0]) //|> w
  ,.sc2mac_dat_b_data56 (sc2mac_dat_b_src_data56[7:0]) //|> w
  ,.sc2mac_dat_b_data57 (sc2mac_dat_b_src_data57[7:0]) //|> w
  ,.sc2mac_dat_b_data58 (sc2mac_dat_b_src_data58[7:0]) //|> w
  ,.sc2mac_dat_b_data59 (sc2mac_dat_b_src_data59[7:0]) //|> w
  ,.sc2mac_dat_b_data60 (sc2mac_dat_b_src_data60[7:0]) //|> w
  ,.sc2mac_dat_b_data61 (sc2mac_dat_b_src_data61[7:0]) //|> w
  ,.sc2mac_dat_b_data62 (sc2mac_dat_b_src_data62[7:0]) //|> w
  ,.sc2mac_dat_b_data63 (sc2mac_dat_b_src_data63[7:0]) //|> w
  ,.sc2mac_dat_b_data64 (sc2mac_dat_b_src_data64[7:0]) //|> w
  ,.sc2mac_dat_b_data65 (sc2mac_dat_b_src_data65[7:0]) //|> w
  ,.sc2mac_dat_b_data66 (sc2mac_dat_b_src_data66[7:0]) //|> w
  ,.sc2mac_dat_b_data67 (sc2mac_dat_b_src_data67[7:0]) //|> w
  ,.sc2mac_dat_b_data68 (sc2mac_dat_b_src_data68[7:0]) //|> w
  ,.sc2mac_dat_b_data69 (sc2mac_dat_b_src_data69[7:0]) //|> w
  ,.sc2mac_dat_b_data70 (sc2mac_dat_b_src_data70[7:0]) //|> w
  ,.sc2mac_dat_b_data71 (sc2mac_dat_b_src_data71[7:0]) //|> w
  ,.sc2mac_dat_b_data72 (sc2mac_dat_b_src_data72[7:0]) //|> w
  ,.sc2mac_dat_b_data73 (sc2mac_dat_b_src_data73[7:0]) //|> w
  ,.sc2mac_dat_b_data74 (sc2mac_dat_b_src_data74[7:0]) //|> w
  ,.sc2mac_dat_b_data75 (sc2mac_dat_b_src_data75[7:0]) //|> w
  ,.sc2mac_dat_b_data76 (sc2mac_dat_b_src_data76[7:0]) //|> w
  ,.sc2mac_dat_b_data77 (sc2mac_dat_b_src_data77[7:0]) //|> w
  ,.sc2mac_dat_b_data78 (sc2mac_dat_b_src_data78[7:0]) //|> w
  ,.sc2mac_dat_b_data79 (sc2mac_dat_b_src_data79[7:0]) //|> w
  ,.sc2mac_dat_b_data80 (sc2mac_dat_b_src_data80[7:0]) //|> w
  ,.sc2mac_dat_b_data81 (sc2mac_dat_b_src_data81[7:0]) //|> w
  ,.sc2mac_dat_b_data82 (sc2mac_dat_b_src_data82[7:0]) //|> w
  ,.sc2mac_dat_b_data83 (sc2mac_dat_b_src_data83[7:0]) //|> w
  ,.sc2mac_dat_b_data84 (sc2mac_dat_b_src_data84[7:0]) //|> w
  ,.sc2mac_dat_b_data85 (sc2mac_dat_b_src_data85[7:0]) //|> w
  ,.sc2mac_dat_b_data86 (sc2mac_dat_b_src_data86[7:0]) //|> w
  ,.sc2mac_dat_b_data87 (sc2mac_dat_b_src_data87[7:0]) //|> w
  ,.sc2mac_dat_b_data88 (sc2mac_dat_b_src_data88[7:0]) //|> w
  ,.sc2mac_dat_b_data89 (sc2mac_dat_b_src_data89[7:0]) //|> w
  ,.sc2mac_dat_b_data90 (sc2mac_dat_b_src_data90[7:0]) //|> w
  ,.sc2mac_dat_b_data91 (sc2mac_dat_b_src_data91[7:0]) //|> w
  ,.sc2mac_dat_b_data92 (sc2mac_dat_b_src_data92[7:0]) //|> w
  ,.sc2mac_dat_b_data93 (sc2mac_dat_b_src_data93[7:0]) //|> w
  ,.sc2mac_dat_b_data94 (sc2mac_dat_b_src_data94[7:0]) //|> w
  ,.sc2mac_dat_b_data95 (sc2mac_dat_b_src_data95[7:0]) //|> w
  ,.sc2mac_dat_b_data96 (sc2mac_dat_b_src_data96[7:0]) //|> w
  ,.sc2mac_dat_b_data97 (sc2mac_dat_b_src_data97[7:0]) //|> w
  ,.sc2mac_dat_b_data98 (sc2mac_dat_b_src_data98[7:0]) //|> w
  ,.sc2mac_dat_b_data99 (sc2mac_dat_b_src_data99[7:0]) //|> w
  ,.sc2mac_dat_b_data100 (sc2mac_dat_b_src_data100[7:0]) //|> w
  ,.sc2mac_dat_b_data101 (sc2mac_dat_b_src_data101[7:0]) //|> w
  ,.sc2mac_dat_b_data102 (sc2mac_dat_b_src_data102[7:0]) //|> w
  ,.sc2mac_dat_b_data103 (sc2mac_dat_b_src_data103[7:0]) //|> w
  ,.sc2mac_dat_b_data104 (sc2mac_dat_b_src_data104[7:0]) //|> w
  ,.sc2mac_dat_b_data105 (sc2mac_dat_b_src_data105[7:0]) //|> w
  ,.sc2mac_dat_b_data106 (sc2mac_dat_b_src_data106[7:0]) //|> w
  ,.sc2mac_dat_b_data107 (sc2mac_dat_b_src_data107[7:0]) //|> w
  ,.sc2mac_dat_b_data108 (sc2mac_dat_b_src_data108[7:0]) //|> w
  ,.sc2mac_dat_b_data109 (sc2mac_dat_b_src_data109[7:0]) //|> w
  ,.sc2mac_dat_b_data110 (sc2mac_dat_b_src_data110[7:0]) //|> w
  ,.sc2mac_dat_b_data111 (sc2mac_dat_b_src_data111[7:0]) //|> w
  ,.sc2mac_dat_b_data112 (sc2mac_dat_b_src_data112[7:0]) //|> w
  ,.sc2mac_dat_b_data113 (sc2mac_dat_b_src_data113[7:0]) //|> w
  ,.sc2mac_dat_b_data114 (sc2mac_dat_b_src_data114[7:0]) //|> w
  ,.sc2mac_dat_b_data115 (sc2mac_dat_b_src_data115[7:0]) //|> w
  ,.sc2mac_dat_b_data116 (sc2mac_dat_b_src_data116[7:0]) //|> w
  ,.sc2mac_dat_b_data117 (sc2mac_dat_b_src_data117[7:0]) //|> w
  ,.sc2mac_dat_b_data118 (sc2mac_dat_b_src_data118[7:0]) //|> w
  ,.sc2mac_dat_b_data119 (sc2mac_dat_b_src_data119[7:0]) //|> w
  ,.sc2mac_dat_b_data120 (sc2mac_dat_b_src_data120[7:0]) //|> w
  ,.sc2mac_dat_b_data121 (sc2mac_dat_b_src_data121[7:0]) //|> w
  ,.sc2mac_dat_b_data122 (sc2mac_dat_b_src_data122[7:0]) //|> w
  ,.sc2mac_dat_b_data123 (sc2mac_dat_b_src_data123[7:0]) //|> w
  ,.sc2mac_dat_b_data124 (sc2mac_dat_b_src_data124[7:0]) //|> w
  ,.sc2mac_dat_b_data125 (sc2mac_dat_b_src_data125[7:0]) //|> w
  ,.sc2mac_dat_b_data126 (sc2mac_dat_b_src_data126[7:0]) //|> w
  ,.sc2mac_dat_b_data127 (sc2mac_dat_b_src_data127[7:0]) //|> w
  ,.sc2mac_dat_b_pd (sc2mac_dat_b_src_pd[8:0]) //|> w
// * sc2mac_a weight
  ,.sc2mac_wt_a_pvld (sc2mac_wt_a_src_pvld) //|> o
  ,.sc2mac_wt_a_mask (sc2mac_wt_a_src_mask[127:0]) //|> o
  ,.sc2mac_wt_a_data0 (sc2mac_wt_a_src_data0[7:0]) //|> o
  ,.sc2mac_wt_a_data1 (sc2mac_wt_a_src_data1[7:0]) //|> o
  ,.sc2mac_wt_a_data2 (sc2mac_wt_a_src_data2[7:0]) //|> o
  ,.sc2mac_wt_a_data3 (sc2mac_wt_a_src_data3[7:0]) //|> o
  ,.sc2mac_wt_a_data4 (sc2mac_wt_a_src_data4[7:0]) //|> o
  ,.sc2mac_wt_a_data5 (sc2mac_wt_a_src_data5[7:0]) //|> o
  ,.sc2mac_wt_a_data6 (sc2mac_wt_a_src_data6[7:0]) //|> o
  ,.sc2mac_wt_a_data7 (sc2mac_wt_a_src_data7[7:0]) //|> o
  ,.sc2mac_wt_a_data8 (sc2mac_wt_a_src_data8[7:0]) //|> o
  ,.sc2mac_wt_a_data9 (sc2mac_wt_a_src_data9[7:0]) //|> o
  ,.sc2mac_wt_a_data10 (sc2mac_wt_a_src_data10[7:0]) //|> o
  ,.sc2mac_wt_a_data11 (sc2mac_wt_a_src_data11[7:0]) //|> o
  ,.sc2mac_wt_a_data12 (sc2mac_wt_a_src_data12[7:0]) //|> o
  ,.sc2mac_wt_a_data13 (sc2mac_wt_a_src_data13[7:0]) //|> o
  ,.sc2mac_wt_a_data14 (sc2mac_wt_a_src_data14[7:0]) //|> o
  ,.sc2mac_wt_a_data15 (sc2mac_wt_a_src_data15[7:0]) //|> o
  ,.sc2mac_wt_a_data16 (sc2mac_wt_a_src_data16[7:0]) //|> o
  ,.sc2mac_wt_a_data17 (sc2mac_wt_a_src_data17[7:0]) //|> o
  ,.sc2mac_wt_a_data18 (sc2mac_wt_a_src_data18[7:0]) //|> o
  ,.sc2mac_wt_a_data19 (sc2mac_wt_a_src_data19[7:0]) //|> o
  ,.sc2mac_wt_a_data20 (sc2mac_wt_a_src_data20[7:0]) //|> o
  ,.sc2mac_wt_a_data21 (sc2mac_wt_a_src_data21[7:0]) //|> o
  ,.sc2mac_wt_a_data22 (sc2mac_wt_a_src_data22[7:0]) //|> o
  ,.sc2mac_wt_a_data23 (sc2mac_wt_a_src_data23[7:0]) //|> o
  ,.sc2mac_wt_a_data24 (sc2mac_wt_a_src_data24[7:0]) //|> o
  ,.sc2mac_wt_a_data25 (sc2mac_wt_a_src_data25[7:0]) //|> o
  ,.sc2mac_wt_a_data26 (sc2mac_wt_a_src_data26[7:0]) //|> o
  ,.sc2mac_wt_a_data27 (sc2mac_wt_a_src_data27[7:0]) //|> o
  ,.sc2mac_wt_a_data28 (sc2mac_wt_a_src_data28[7:0]) //|> o
  ,.sc2mac_wt_a_data29 (sc2mac_wt_a_src_data29[7:0]) //|> o
  ,.sc2mac_wt_a_data30 (sc2mac_wt_a_src_data30[7:0]) //|> o
  ,.sc2mac_wt_a_data31 (sc2mac_wt_a_src_data31[7:0]) //|> o
  ,.sc2mac_wt_a_data32 (sc2mac_wt_a_src_data32[7:0]) //|> o
  ,.sc2mac_wt_a_data33 (sc2mac_wt_a_src_data33[7:0]) //|> o
  ,.sc2mac_wt_a_data34 (sc2mac_wt_a_src_data34[7:0]) //|> o
  ,.sc2mac_wt_a_data35 (sc2mac_wt_a_src_data35[7:0]) //|> o
  ,.sc2mac_wt_a_data36 (sc2mac_wt_a_src_data36[7:0]) //|> o
  ,.sc2mac_wt_a_data37 (sc2mac_wt_a_src_data37[7:0]) //|> o
  ,.sc2mac_wt_a_data38 (sc2mac_wt_a_src_data38[7:0]) //|> o
  ,.sc2mac_wt_a_data39 (sc2mac_wt_a_src_data39[7:0]) //|> o
  ,.sc2mac_wt_a_data40 (sc2mac_wt_a_src_data40[7:0]) //|> o
  ,.sc2mac_wt_a_data41 (sc2mac_wt_a_src_data41[7:0]) //|> o
  ,.sc2mac_wt_a_data42 (sc2mac_wt_a_src_data42[7:0]) //|> o
  ,.sc2mac_wt_a_data43 (sc2mac_wt_a_src_data43[7:0]) //|> o
  ,.sc2mac_wt_a_data44 (sc2mac_wt_a_src_data44[7:0]) //|> o
  ,.sc2mac_wt_a_data45 (sc2mac_wt_a_src_data45[7:0]) //|> o
  ,.sc2mac_wt_a_data46 (sc2mac_wt_a_src_data46[7:0]) //|> o
  ,.sc2mac_wt_a_data47 (sc2mac_wt_a_src_data47[7:0]) //|> o
  ,.sc2mac_wt_a_data48 (sc2mac_wt_a_src_data48[7:0]) //|> o
  ,.sc2mac_wt_a_data49 (sc2mac_wt_a_src_data49[7:0]) //|> o
  ,.sc2mac_wt_a_data50 (sc2mac_wt_a_src_data50[7:0]) //|> o
  ,.sc2mac_wt_a_data51 (sc2mac_wt_a_src_data51[7:0]) //|> o
  ,.sc2mac_wt_a_data52 (sc2mac_wt_a_src_data52[7:0]) //|> o
  ,.sc2mac_wt_a_data53 (sc2mac_wt_a_src_data53[7:0]) //|> o
  ,.sc2mac_wt_a_data54 (sc2mac_wt_a_src_data54[7:0]) //|> o
  ,.sc2mac_wt_a_data55 (sc2mac_wt_a_src_data55[7:0]) //|> o
  ,.sc2mac_wt_a_data56 (sc2mac_wt_a_src_data56[7:0]) //|> o
  ,.sc2mac_wt_a_data57 (sc2mac_wt_a_src_data57[7:0]) //|> o
  ,.sc2mac_wt_a_data58 (sc2mac_wt_a_src_data58[7:0]) //|> o
  ,.sc2mac_wt_a_data59 (sc2mac_wt_a_src_data59[7:0]) //|> o
  ,.sc2mac_wt_a_data60 (sc2mac_wt_a_src_data60[7:0]) //|> o
  ,.sc2mac_wt_a_data61 (sc2mac_wt_a_src_data61[7:0]) //|> o
  ,.sc2mac_wt_a_data62 (sc2mac_wt_a_src_data62[7:0]) //|> o
  ,.sc2mac_wt_a_data63 (sc2mac_wt_a_src_data63[7:0]) //|> o
  ,.sc2mac_wt_a_data64 (sc2mac_wt_a_src_data64[7:0]) //|> o
  ,.sc2mac_wt_a_data65 (sc2mac_wt_a_src_data65[7:0]) //|> o
  ,.sc2mac_wt_a_data66 (sc2mac_wt_a_src_data66[7:0]) //|> o
  ,.sc2mac_wt_a_data67 (sc2mac_wt_a_src_data67[7:0]) //|> o
  ,.sc2mac_wt_a_data68 (sc2mac_wt_a_src_data68[7:0]) //|> o
  ,.sc2mac_wt_a_data69 (sc2mac_wt_a_src_data69[7:0]) //|> o
  ,.sc2mac_wt_a_data70 (sc2mac_wt_a_src_data70[7:0]) //|> o
  ,.sc2mac_wt_a_data71 (sc2mac_wt_a_src_data71[7:0]) //|> o
  ,.sc2mac_wt_a_data72 (sc2mac_wt_a_src_data72[7:0]) //|> o
  ,.sc2mac_wt_a_data73 (sc2mac_wt_a_src_data73[7:0]) //|> o
  ,.sc2mac_wt_a_data74 (sc2mac_wt_a_src_data74[7:0]) //|> o
  ,.sc2mac_wt_a_data75 (sc2mac_wt_a_src_data75[7:0]) //|> o
  ,.sc2mac_wt_a_data76 (sc2mac_wt_a_src_data76[7:0]) //|> o
  ,.sc2mac_wt_a_data77 (sc2mac_wt_a_src_data77[7:0]) //|> o
  ,.sc2mac_wt_a_data78 (sc2mac_wt_a_src_data78[7:0]) //|> o
  ,.sc2mac_wt_a_data79 (sc2mac_wt_a_src_data79[7:0]) //|> o
  ,.sc2mac_wt_a_data80 (sc2mac_wt_a_src_data80[7:0]) //|> o
  ,.sc2mac_wt_a_data81 (sc2mac_wt_a_src_data81[7:0]) //|> o
  ,.sc2mac_wt_a_data82 (sc2mac_wt_a_src_data82[7:0]) //|> o
  ,.sc2mac_wt_a_data83 (sc2mac_wt_a_src_data83[7:0]) //|> o
  ,.sc2mac_wt_a_data84 (sc2mac_wt_a_src_data84[7:0]) //|> o
  ,.sc2mac_wt_a_data85 (sc2mac_wt_a_src_data85[7:0]) //|> o
  ,.sc2mac_wt_a_data86 (sc2mac_wt_a_src_data86[7:0]) //|> o
  ,.sc2mac_wt_a_data87 (sc2mac_wt_a_src_data87[7:0]) //|> o
  ,.sc2mac_wt_a_data88 (sc2mac_wt_a_src_data88[7:0]) //|> o
  ,.sc2mac_wt_a_data89 (sc2mac_wt_a_src_data89[7:0]) //|> o
  ,.sc2mac_wt_a_data90 (sc2mac_wt_a_src_data90[7:0]) //|> o
  ,.sc2mac_wt_a_data91 (sc2mac_wt_a_src_data91[7:0]) //|> o
  ,.sc2mac_wt_a_data92 (sc2mac_wt_a_src_data92[7:0]) //|> o
  ,.sc2mac_wt_a_data93 (sc2mac_wt_a_src_data93[7:0]) //|> o
  ,.sc2mac_wt_a_data94 (sc2mac_wt_a_src_data94[7:0]) //|> o
  ,.sc2mac_wt_a_data95 (sc2mac_wt_a_src_data95[7:0]) //|> o
  ,.sc2mac_wt_a_data96 (sc2mac_wt_a_src_data96[7:0]) //|> o
  ,.sc2mac_wt_a_data97 (sc2mac_wt_a_src_data97[7:0]) //|> o
  ,.sc2mac_wt_a_data98 (sc2mac_wt_a_src_data98[7:0]) //|> o
  ,.sc2mac_wt_a_data99 (sc2mac_wt_a_src_data99[7:0]) //|> o
  ,.sc2mac_wt_a_data100 (sc2mac_wt_a_src_data100[7:0]) //|> o
  ,.sc2mac_wt_a_data101 (sc2mac_wt_a_src_data101[7:0]) //|> o
  ,.sc2mac_wt_a_data102 (sc2mac_wt_a_src_data102[7:0]) //|> o
  ,.sc2mac_wt_a_data103 (sc2mac_wt_a_src_data103[7:0]) //|> o
  ,.sc2mac_wt_a_data104 (sc2mac_wt_a_src_data104[7:0]) //|> o
  ,.sc2mac_wt_a_data105 (sc2mac_wt_a_src_data105[7:0]) //|> o
  ,.sc2mac_wt_a_data106 (sc2mac_wt_a_src_data106[7:0]) //|> o
  ,.sc2mac_wt_a_data107 (sc2mac_wt_a_src_data107[7:0]) //|> o
  ,.sc2mac_wt_a_data108 (sc2mac_wt_a_src_data108[7:0]) //|> o
  ,.sc2mac_wt_a_data109 (sc2mac_wt_a_src_data109[7:0]) //|> o
  ,.sc2mac_wt_a_data110 (sc2mac_wt_a_src_data110[7:0]) //|> o
  ,.sc2mac_wt_a_data111 (sc2mac_wt_a_src_data111[7:0]) //|> o
  ,.sc2mac_wt_a_data112 (sc2mac_wt_a_src_data112[7:0]) //|> o
  ,.sc2mac_wt_a_data113 (sc2mac_wt_a_src_data113[7:0]) //|> o
  ,.sc2mac_wt_a_data114 (sc2mac_wt_a_src_data114[7:0]) //|> o
  ,.sc2mac_wt_a_data115 (sc2mac_wt_a_src_data115[7:0]) //|> o
  ,.sc2mac_wt_a_data116 (sc2mac_wt_a_src_data116[7:0]) //|> o
  ,.sc2mac_wt_a_data117 (sc2mac_wt_a_src_data117[7:0]) //|> o
  ,.sc2mac_wt_a_data118 (sc2mac_wt_a_src_data118[7:0]) //|> o
  ,.sc2mac_wt_a_data119 (sc2mac_wt_a_src_data119[7:0]) //|> o
  ,.sc2mac_wt_a_data120 (sc2mac_wt_a_src_data120[7:0]) //|> o
  ,.sc2mac_wt_a_data121 (sc2mac_wt_a_src_data121[7:0]) //|> o
  ,.sc2mac_wt_a_data122 (sc2mac_wt_a_src_data122[7:0]) //|> o
  ,.sc2mac_wt_a_data123 (sc2mac_wt_a_src_data123[7:0]) //|> o
  ,.sc2mac_wt_a_data124 (sc2mac_wt_a_src_data124[7:0]) //|> o
  ,.sc2mac_wt_a_data125 (sc2mac_wt_a_src_data125[7:0]) //|> o
  ,.sc2mac_wt_a_data126 (sc2mac_wt_a_src_data126[7:0]) //|> o
  ,.sc2mac_wt_a_data127 (sc2mac_wt_a_src_data127[7:0]) //|> o
  ,.sc2mac_wt_a_sel (sc2mac_wt_a_src_sel[7:0]) //|> o
// * sc2mac_b weight
  ,.sc2mac_wt_b_pvld (sc2mac_wt_b_src_pvld) //|> w
  ,.sc2mac_wt_b_mask (sc2mac_wt_b_src_mask[127:0]) //|> w
  ,.sc2mac_wt_b_data0 (sc2mac_wt_b_src_data0[7:0]) //|> w
  ,.sc2mac_wt_b_data1 (sc2mac_wt_b_src_data1[7:0]) //|> w
  ,.sc2mac_wt_b_data2 (sc2mac_wt_b_src_data2[7:0]) //|> w
  ,.sc2mac_wt_b_data3 (sc2mac_wt_b_src_data3[7:0]) //|> w
  ,.sc2mac_wt_b_data4 (sc2mac_wt_b_src_data4[7:0]) //|> w
  ,.sc2mac_wt_b_data5 (sc2mac_wt_b_src_data5[7:0]) //|> w
  ,.sc2mac_wt_b_data6 (sc2mac_wt_b_src_data6[7:0]) //|> w
  ,.sc2mac_wt_b_data7 (sc2mac_wt_b_src_data7[7:0]) //|> w
  ,.sc2mac_wt_b_data8 (sc2mac_wt_b_src_data8[7:0]) //|> w
  ,.sc2mac_wt_b_data9 (sc2mac_wt_b_src_data9[7:0]) //|> w
  ,.sc2mac_wt_b_data10 (sc2mac_wt_b_src_data10[7:0]) //|> w
  ,.sc2mac_wt_b_data11 (sc2mac_wt_b_src_data11[7:0]) //|> w
  ,.sc2mac_wt_b_data12 (sc2mac_wt_b_src_data12[7:0]) //|> w
  ,.sc2mac_wt_b_data13 (sc2mac_wt_b_src_data13[7:0]) //|> w
  ,.sc2mac_wt_b_data14 (sc2mac_wt_b_src_data14[7:0]) //|> w
  ,.sc2mac_wt_b_data15 (sc2mac_wt_b_src_data15[7:0]) //|> w
  ,.sc2mac_wt_b_data16 (sc2mac_wt_b_src_data16[7:0]) //|> w
  ,.sc2mac_wt_b_data17 (sc2mac_wt_b_src_data17[7:0]) //|> w
  ,.sc2mac_wt_b_data18 (sc2mac_wt_b_src_data18[7:0]) //|> w
  ,.sc2mac_wt_b_data19 (sc2mac_wt_b_src_data19[7:0]) //|> w
  ,.sc2mac_wt_b_data20 (sc2mac_wt_b_src_data20[7:0]) //|> w
  ,.sc2mac_wt_b_data21 (sc2mac_wt_b_src_data21[7:0]) //|> w
  ,.sc2mac_wt_b_data22 (sc2mac_wt_b_src_data22[7:0]) //|> w
  ,.sc2mac_wt_b_data23 (sc2mac_wt_b_src_data23[7:0]) //|> w
  ,.sc2mac_wt_b_data24 (sc2mac_wt_b_src_data24[7:0]) //|> w
  ,.sc2mac_wt_b_data25 (sc2mac_wt_b_src_data25[7:0]) //|> w
  ,.sc2mac_wt_b_data26 (sc2mac_wt_b_src_data26[7:0]) //|> w
  ,.sc2mac_wt_b_data27 (sc2mac_wt_b_src_data27[7:0]) //|> w
  ,.sc2mac_wt_b_data28 (sc2mac_wt_b_src_data28[7:0]) //|> w
  ,.sc2mac_wt_b_data29 (sc2mac_wt_b_src_data29[7:0]) //|> w
  ,.sc2mac_wt_b_data30 (sc2mac_wt_b_src_data30[7:0]) //|> w
  ,.sc2mac_wt_b_data31 (sc2mac_wt_b_src_data31[7:0]) //|> w
  ,.sc2mac_wt_b_data32 (sc2mac_wt_b_src_data32[7:0]) //|> w
  ,.sc2mac_wt_b_data33 (sc2mac_wt_b_src_data33[7:0]) //|> w
  ,.sc2mac_wt_b_data34 (sc2mac_wt_b_src_data34[7:0]) //|> w
  ,.sc2mac_wt_b_data35 (sc2mac_wt_b_src_data35[7:0]) //|> w
  ,.sc2mac_wt_b_data36 (sc2mac_wt_b_src_data36[7:0]) //|> w
  ,.sc2mac_wt_b_data37 (sc2mac_wt_b_src_data37[7:0]) //|> w
  ,.sc2mac_wt_b_data38 (sc2mac_wt_b_src_data38[7:0]) //|> w
  ,.sc2mac_wt_b_data39 (sc2mac_wt_b_src_data39[7:0]) //|> w
  ,.sc2mac_wt_b_data40 (sc2mac_wt_b_src_data40[7:0]) //|> w
  ,.sc2mac_wt_b_data41 (sc2mac_wt_b_src_data41[7:0]) //|> w
  ,.sc2mac_wt_b_data42 (sc2mac_wt_b_src_data42[7:0]) //|> w
  ,.sc2mac_wt_b_data43 (sc2mac_wt_b_src_data43[7:0]) //|> w
  ,.sc2mac_wt_b_data44 (sc2mac_wt_b_src_data44[7:0]) //|> w
  ,.sc2mac_wt_b_data45 (sc2mac_wt_b_src_data45[7:0]) //|> w
  ,.sc2mac_wt_b_data46 (sc2mac_wt_b_src_data46[7:0]) //|> w
  ,.sc2mac_wt_b_data47 (sc2mac_wt_b_src_data47[7:0]) //|> w
  ,.sc2mac_wt_b_data48 (sc2mac_wt_b_src_data48[7:0]) //|> w
  ,.sc2mac_wt_b_data49 (sc2mac_wt_b_src_data49[7:0]) //|> w
  ,.sc2mac_wt_b_data50 (sc2mac_wt_b_src_data50[7:0]) //|> w
  ,.sc2mac_wt_b_data51 (sc2mac_wt_b_src_data51[7:0]) //|> w
  ,.sc2mac_wt_b_data52 (sc2mac_wt_b_src_data52[7:0]) //|> w
  ,.sc2mac_wt_b_data53 (sc2mac_wt_b_src_data53[7:0]) //|> w
  ,.sc2mac_wt_b_data54 (sc2mac_wt_b_src_data54[7:0]) //|> w
  ,.sc2mac_wt_b_data55 (sc2mac_wt_b_src_data55[7:0]) //|> w
  ,.sc2mac_wt_b_data56 (sc2mac_wt_b_src_data56[7:0]) //|> w
  ,.sc2mac_wt_b_data57 (sc2mac_wt_b_src_data57[7:0]) //|> w
  ,.sc2mac_wt_b_data58 (sc2mac_wt_b_src_data58[7:0]) //|> w
  ,.sc2mac_wt_b_data59 (sc2mac_wt_b_src_data59[7:0]) //|> w
  ,.sc2mac_wt_b_data60 (sc2mac_wt_b_src_data60[7:0]) //|> w
  ,.sc2mac_wt_b_data61 (sc2mac_wt_b_src_data61[7:0]) //|> w
  ,.sc2mac_wt_b_data62 (sc2mac_wt_b_src_data62[7:0]) //|> w
  ,.sc2mac_wt_b_data63 (sc2mac_wt_b_src_data63[7:0]) //|> w
  ,.sc2mac_wt_b_data64 (sc2mac_wt_b_src_data64[7:0]) //|> w
  ,.sc2mac_wt_b_data65 (sc2mac_wt_b_src_data65[7:0]) //|> w
  ,.sc2mac_wt_b_data66 (sc2mac_wt_b_src_data66[7:0]) //|> w
  ,.sc2mac_wt_b_data67 (sc2mac_wt_b_src_data67[7:0]) //|> w
  ,.sc2mac_wt_b_data68 (sc2mac_wt_b_src_data68[7:0]) //|> w
  ,.sc2mac_wt_b_data69 (sc2mac_wt_b_src_data69[7:0]) //|> w
  ,.sc2mac_wt_b_data70 (sc2mac_wt_b_src_data70[7:0]) //|> w
  ,.sc2mac_wt_b_data71 (sc2mac_wt_b_src_data71[7:0]) //|> w
  ,.sc2mac_wt_b_data72 (sc2mac_wt_b_src_data72[7:0]) //|> w
  ,.sc2mac_wt_b_data73 (sc2mac_wt_b_src_data73[7:0]) //|> w
  ,.sc2mac_wt_b_data74 (sc2mac_wt_b_src_data74[7:0]) //|> w
  ,.sc2mac_wt_b_data75 (sc2mac_wt_b_src_data75[7:0]) //|> w
  ,.sc2mac_wt_b_data76 (sc2mac_wt_b_src_data76[7:0]) //|> w
  ,.sc2mac_wt_b_data77 (sc2mac_wt_b_src_data77[7:0]) //|> w
  ,.sc2mac_wt_b_data78 (sc2mac_wt_b_src_data78[7:0]) //|> w
  ,.sc2mac_wt_b_data79 (sc2mac_wt_b_src_data79[7:0]) //|> w
  ,.sc2mac_wt_b_data80 (sc2mac_wt_b_src_data80[7:0]) //|> w
  ,.sc2mac_wt_b_data81 (sc2mac_wt_b_src_data81[7:0]) //|> w
  ,.sc2mac_wt_b_data82 (sc2mac_wt_b_src_data82[7:0]) //|> w
  ,.sc2mac_wt_b_data83 (sc2mac_wt_b_src_data83[7:0]) //|> w
  ,.sc2mac_wt_b_data84 (sc2mac_wt_b_src_data84[7:0]) //|> w
  ,.sc2mac_wt_b_data85 (sc2mac_wt_b_src_data85[7:0]) //|> w
  ,.sc2mac_wt_b_data86 (sc2mac_wt_b_src_data86[7:0]) //|> w
  ,.sc2mac_wt_b_data87 (sc2mac_wt_b_src_data87[7:0]) //|> w
  ,.sc2mac_wt_b_data88 (sc2mac_wt_b_src_data88[7:0]) //|> w
  ,.sc2mac_wt_b_data89 (sc2mac_wt_b_src_data89[7:0]) //|> w
  ,.sc2mac_wt_b_data90 (sc2mac_wt_b_src_data90[7:0]) //|> w
  ,.sc2mac_wt_b_data91 (sc2mac_wt_b_src_data91[7:0]) //|> w
  ,.sc2mac_wt_b_data92 (sc2mac_wt_b_src_data92[7:0]) //|> w
  ,.sc2mac_wt_b_data93 (sc2mac_wt_b_src_data93[7:0]) //|> w
  ,.sc2mac_wt_b_data94 (sc2mac_wt_b_src_data94[7:0]) //|> w
  ,.sc2mac_wt_b_data95 (sc2mac_wt_b_src_data95[7:0]) //|> w
  ,.sc2mac_wt_b_data96 (sc2mac_wt_b_src_data96[7:0]) //|> w
  ,.sc2mac_wt_b_data97 (sc2mac_wt_b_src_data97[7:0]) //|> w
  ,.sc2mac_wt_b_data98 (sc2mac_wt_b_src_data98[7:0]) //|> w
  ,.sc2mac_wt_b_data99 (sc2mac_wt_b_src_data99[7:0]) //|> w
  ,.sc2mac_wt_b_data100 (sc2mac_wt_b_src_data100[7:0]) //|> w
  ,.sc2mac_wt_b_data101 (sc2mac_wt_b_src_data101[7:0]) //|> w
  ,.sc2mac_wt_b_data102 (sc2mac_wt_b_src_data102[7:0]) //|> w
  ,.sc2mac_wt_b_data103 (sc2mac_wt_b_src_data103[7:0]) //|> w
  ,.sc2mac_wt_b_data104 (sc2mac_wt_b_src_data104[7:0]) //|> w
  ,.sc2mac_wt_b_data105 (sc2mac_wt_b_src_data105[7:0]) //|> w
  ,.sc2mac_wt_b_data106 (sc2mac_wt_b_src_data106[7:0]) //|> w
  ,.sc2mac_wt_b_data107 (sc2mac_wt_b_src_data107[7:0]) //|> w
  ,.sc2mac_wt_b_data108 (sc2mac_wt_b_src_data108[7:0]) //|> w
  ,.sc2mac_wt_b_data109 (sc2mac_wt_b_src_data109[7:0]) //|> w
  ,.sc2mac_wt_b_data110 (sc2mac_wt_b_src_data110[7:0]) //|> w
  ,.sc2mac_wt_b_data111 (sc2mac_wt_b_src_data111[7:0]) //|> w
  ,.sc2mac_wt_b_data112 (sc2mac_wt_b_src_data112[7:0]) //|> w
  ,.sc2mac_wt_b_data113 (sc2mac_wt_b_src_data113[7:0]) //|> w
  ,.sc2mac_wt_b_data114 (sc2mac_wt_b_src_data114[7:0]) //|> w
  ,.sc2mac_wt_b_data115 (sc2mac_wt_b_src_data115[7:0]) //|> w
  ,.sc2mac_wt_b_data116 (sc2mac_wt_b_src_data116[7:0]) //|> w
  ,.sc2mac_wt_b_data117 (sc2mac_wt_b_src_data117[7:0]) //|> w
  ,.sc2mac_wt_b_data118 (sc2mac_wt_b_src_data118[7:0]) //|> w
  ,.sc2mac_wt_b_data119 (sc2mac_wt_b_src_data119[7:0]) //|> w
  ,.sc2mac_wt_b_data120 (sc2mac_wt_b_src_data120[7:0]) //|> w
  ,.sc2mac_wt_b_data121 (sc2mac_wt_b_src_data121[7:0]) //|> w
  ,.sc2mac_wt_b_data122 (sc2mac_wt_b_src_data122[7:0]) //|> w
  ,.sc2mac_wt_b_data123 (sc2mac_wt_b_src_data123[7:0]) //|> w
  ,.sc2mac_wt_b_data124 (sc2mac_wt_b_src_data124[7:0]) //|> w
  ,.sc2mac_wt_b_data125 (sc2mac_wt_b_src_data125[7:0]) //|> w
  ,.sc2mac_wt_b_data126 (sc2mac_wt_b_src_data126[7:0]) //|> w
  ,.sc2mac_wt_b_data127 (sc2mac_wt_b_src_data127[7:0]) //|> w
  ,.sc2mac_wt_b_sel (sc2mac_wt_b_src_sel[7:0]) //|> w
// others sc <> dma data&weight location info
  ,.sc2cdma_dat_pending_req () //|> w
  ,.sc2cdma_wt_pending_req () //|> w
  ,.cdma2sc_dat_pending_ack () //|< w
  ,.cdma2sc_wt_pending_ack () //|< w

  ,.cdma2sc_dat_updt () //|< w
  ,.cdma2sc_dat_entries () //|< w
  ,.cdma2sc_dat_slices () //|< w
  ,.sc2cdma_dat_updt () //|> w
  ,.sc2cdma_dat_entries () //|> w
  ,.sc2cdma_dat_slices () //|> w

  ,.cdma2sc_wt_updt () //|< w
  ,.cdma2sc_wt_kernels () //|< w
  ,.cdma2sc_wt_entries () //|< w
  ,.cdma2sc_wmb_entries () //|< w
  ,.sc2cdma_wt_updt () //|> w
  ,.sc2cdma_wt_kernels () //|> w
  ,.sc2cdma_wt_entries () //|> w
  ,.sc2cdma_wmb_entries () //|> w
//
  );

wire [6:0] dl_stripe_length = csc.u_dl.sg2dl_pd[23:17];
wire [3:0] dl_end = csc.u_dl.sg2dl_pd[29:26];
////////////////////////////////////////////////////////////////////////
// NVDLA Partition MA //
////////////////////////////////////////////////////////////////////////
NV_NVDLA_cmac u_NV_NVDLA_cmac_a (
   .nvdla_core_clk (nvdla_core_clk) //|< i
  ,.nvdla_core_rstn (nvdla_core_rstn) //|< w
// csb2mac_a |<> io
  ,.cmac_a2csb_resp_valid () //|> o
  ,.cmac_a2csb_resp_pd () //|> o
  ,.csb2cmac_a_req_pvld (csb2cmac_a_req_pvld) //|< i
  ,.csb2cmac_a_req_prdy (csb2cmac_a_req_prdy) //|> o
  ,.csb2cmac_a_req_pd (csb2cmac_a_req_pd[62:0]) //|< i
// mac_a2accu
  ,.mac2accu_pvld (mac_a2accu_dst_pvld) //|> o
  ,.mac2accu_mask (mac_a2accu_dst_mask[7:0]) //|> o
  ,.mac2accu_mode (mac_a2accu_dst_mode[7:0]) //|> o
  ,.mac2accu_data0 (mac_a2accu_dst_data0[175:0]) //|> o
  ,.mac2accu_data1 (mac_a2accu_dst_data1[175:0]) //|> o
  ,.mac2accu_data2 (mac_a2accu_dst_data2[175:0]) //|> o
  ,.mac2accu_data3 (mac_a2accu_dst_data3[175:0]) //|> o
  ,.mac2accu_data4 (mac_a2accu_dst_data4[175:0]) //|> o
  ,.mac2accu_data5 (mac_a2accu_dst_data5[175:0]) //|> o
  ,.mac2accu_data6 (mac_a2accu_dst_data6[175:0]) //|> o
  ,.mac2accu_data7 (mac_a2accu_dst_data7[175:0]) //|> o
  ,.mac2accu_pd (mac_a2accu_dst_pd[8:0]) //|> o
// sc2mac_a data
  ,.sc2mac_dat_pvld (sc2mac_dat_a_src_pvld) //|< i
  ,.sc2mac_dat_mask (sc2mac_dat_a_src_mask[127:0]) //|< i
  ,.sc2mac_dat_data0 (sc2mac_dat_a_src_data0[7:0]) //|< i
  ,.sc2mac_dat_data1 (sc2mac_dat_a_src_data1[7:0]) //|< i
  ,.sc2mac_dat_data2 (sc2mac_dat_a_src_data2[7:0]) //|< i
  ,.sc2mac_dat_data3 (sc2mac_dat_a_src_data3[7:0]) //|< i
  ,.sc2mac_dat_data4 (sc2mac_dat_a_src_data4[7:0]) //|< i
  ,.sc2mac_dat_data5 (sc2mac_dat_a_src_data5[7:0]) //|< i
  ,.sc2mac_dat_data6 (sc2mac_dat_a_src_data6[7:0]) //|< i
  ,.sc2mac_dat_data7 (sc2mac_dat_a_src_data7[7:0]) //|< i
  ,.sc2mac_dat_data8 (sc2mac_dat_a_src_data8[7:0]) //|< i
  ,.sc2mac_dat_data9 (sc2mac_dat_a_src_data9[7:0]) //|< i
  ,.sc2mac_dat_data10 (sc2mac_dat_a_src_data10[7:0]) //|< i
  ,.sc2mac_dat_data11 (sc2mac_dat_a_src_data11[7:0]) //|< i
  ,.sc2mac_dat_data12 (sc2mac_dat_a_src_data12[7:0]) //|< i
  ,.sc2mac_dat_data13 (sc2mac_dat_a_src_data13[7:0]) //|< i
  ,.sc2mac_dat_data14 (sc2mac_dat_a_src_data14[7:0]) //|< i
  ,.sc2mac_dat_data15 (sc2mac_dat_a_src_data15[7:0]) //|< i
  ,.sc2mac_dat_data16 (sc2mac_dat_a_src_data16[7:0]) //|< i
  ,.sc2mac_dat_data17 (sc2mac_dat_a_src_data17[7:0]) //|< i
  ,.sc2mac_dat_data18 (sc2mac_dat_a_src_data18[7:0]) //|< i
  ,.sc2mac_dat_data19 (sc2mac_dat_a_src_data19[7:0]) //|< i
  ,.sc2mac_dat_data20 (sc2mac_dat_a_src_data20[7:0]) //|< i
  ,.sc2mac_dat_data21 (sc2mac_dat_a_src_data21[7:0]) //|< i
  ,.sc2mac_dat_data22 (sc2mac_dat_a_src_data22[7:0]) //|< i
  ,.sc2mac_dat_data23 (sc2mac_dat_a_src_data23[7:0]) //|< i
  ,.sc2mac_dat_data24 (sc2mac_dat_a_src_data24[7:0]) //|< i
  ,.sc2mac_dat_data25 (sc2mac_dat_a_src_data25[7:0]) //|< i
  ,.sc2mac_dat_data26 (sc2mac_dat_a_src_data26[7:0]) //|< i
  ,.sc2mac_dat_data27 (sc2mac_dat_a_src_data27[7:0]) //|< i
  ,.sc2mac_dat_data28 (sc2mac_dat_a_src_data28[7:0]) //|< i
  ,.sc2mac_dat_data29 (sc2mac_dat_a_src_data29[7:0]) //|< i
  ,.sc2mac_dat_data30 (sc2mac_dat_a_src_data30[7:0]) //|< i
  ,.sc2mac_dat_data31 (sc2mac_dat_a_src_data31[7:0]) //|< i
  ,.sc2mac_dat_data32 (sc2mac_dat_a_src_data32[7:0]) //|< i
  ,.sc2mac_dat_data33 (sc2mac_dat_a_src_data33[7:0]) //|< i
  ,.sc2mac_dat_data34 (sc2mac_dat_a_src_data34[7:0]) //|< i
  ,.sc2mac_dat_data35 (sc2mac_dat_a_src_data35[7:0]) //|< i
  ,.sc2mac_dat_data36 (sc2mac_dat_a_src_data36[7:0]) //|< i
  ,.sc2mac_dat_data37 (sc2mac_dat_a_src_data37[7:0]) //|< i
  ,.sc2mac_dat_data38 (sc2mac_dat_a_src_data38[7:0]) //|< i
  ,.sc2mac_dat_data39 (sc2mac_dat_a_src_data39[7:0]) //|< i
  ,.sc2mac_dat_data40 (sc2mac_dat_a_src_data40[7:0]) //|< i
  ,.sc2mac_dat_data41 (sc2mac_dat_a_src_data41[7:0]) //|< i
  ,.sc2mac_dat_data42 (sc2mac_dat_a_src_data42[7:0]) //|< i
  ,.sc2mac_dat_data43 (sc2mac_dat_a_src_data43[7:0]) //|< i
  ,.sc2mac_dat_data44 (sc2mac_dat_a_src_data44[7:0]) //|< i
  ,.sc2mac_dat_data45 (sc2mac_dat_a_src_data45[7:0]) //|< i
  ,.sc2mac_dat_data46 (sc2mac_dat_a_src_data46[7:0]) //|< i
  ,.sc2mac_dat_data47 (sc2mac_dat_a_src_data47[7:0]) //|< i
  ,.sc2mac_dat_data48 (sc2mac_dat_a_src_data48[7:0]) //|< i
  ,.sc2mac_dat_data49 (sc2mac_dat_a_src_data49[7:0]) //|< i
  ,.sc2mac_dat_data50 (sc2mac_dat_a_src_data50[7:0]) //|< i
  ,.sc2mac_dat_data51 (sc2mac_dat_a_src_data51[7:0]) //|< i
  ,.sc2mac_dat_data52 (sc2mac_dat_a_src_data52[7:0]) //|< i
  ,.sc2mac_dat_data53 (sc2mac_dat_a_src_data53[7:0]) //|< i
  ,.sc2mac_dat_data54 (sc2mac_dat_a_src_data54[7:0]) //|< i
  ,.sc2mac_dat_data55 (sc2mac_dat_a_src_data55[7:0]) //|< i
  ,.sc2mac_dat_data56 (sc2mac_dat_a_src_data56[7:0]) //|< i
  ,.sc2mac_dat_data57 (sc2mac_dat_a_src_data57[7:0]) //|< i
  ,.sc2mac_dat_data58 (sc2mac_dat_a_src_data58[7:0]) //|< i
  ,.sc2mac_dat_data59 (sc2mac_dat_a_src_data59[7:0]) //|< i
  ,.sc2mac_dat_data60 (sc2mac_dat_a_src_data60[7:0]) //|< i
  ,.sc2mac_dat_data61 (sc2mac_dat_a_src_data61[7:0]) //|< i
  ,.sc2mac_dat_data62 (sc2mac_dat_a_src_data62[7:0]) //|< i
  ,.sc2mac_dat_data63 (sc2mac_dat_a_src_data63[7:0]) //|< i
  ,.sc2mac_dat_data64 (sc2mac_dat_a_src_data64[7:0]) //|< i
  ,.sc2mac_dat_data65 (sc2mac_dat_a_src_data65[7:0]) //|< i
  ,.sc2mac_dat_data66 (sc2mac_dat_a_src_data66[7:0]) //|< i
  ,.sc2mac_dat_data67 (sc2mac_dat_a_src_data67[7:0]) //|< i
  ,.sc2mac_dat_data68 (sc2mac_dat_a_src_data68[7:0]) //|< i
  ,.sc2mac_dat_data69 (sc2mac_dat_a_src_data69[7:0]) //|< i
  ,.sc2mac_dat_data70 (sc2mac_dat_a_src_data70[7:0]) //|< i
  ,.sc2mac_dat_data71 (sc2mac_dat_a_src_data71[7:0]) //|< i
  ,.sc2mac_dat_data72 (sc2mac_dat_a_src_data72[7:0]) //|< i
  ,.sc2mac_dat_data73 (sc2mac_dat_a_src_data73[7:0]) //|< i
  ,.sc2mac_dat_data74 (sc2mac_dat_a_src_data74[7:0]) //|< i
  ,.sc2mac_dat_data75 (sc2mac_dat_a_src_data75[7:0]) //|< i
  ,.sc2mac_dat_data76 (sc2mac_dat_a_src_data76[7:0]) //|< i
  ,.sc2mac_dat_data77 (sc2mac_dat_a_src_data77[7:0]) //|< i
  ,.sc2mac_dat_data78 (sc2mac_dat_a_src_data78[7:0]) //|< i
  ,.sc2mac_dat_data79 (sc2mac_dat_a_src_data79[7:0]) //|< i
  ,.sc2mac_dat_data80 (sc2mac_dat_a_src_data80[7:0]) //|< i
  ,.sc2mac_dat_data81 (sc2mac_dat_a_src_data81[7:0]) //|< i
  ,.sc2mac_dat_data82 (sc2mac_dat_a_src_data82[7:0]) //|< i
  ,.sc2mac_dat_data83 (sc2mac_dat_a_src_data83[7:0]) //|< i
  ,.sc2mac_dat_data84 (sc2mac_dat_a_src_data84[7:0]) //|< i
  ,.sc2mac_dat_data85 (sc2mac_dat_a_src_data85[7:0]) //|< i
  ,.sc2mac_dat_data86 (sc2mac_dat_a_src_data86[7:0]) //|< i
  ,.sc2mac_dat_data87 (sc2mac_dat_a_src_data87[7:0]) //|< i
  ,.sc2mac_dat_data88 (sc2mac_dat_a_src_data88[7:0]) //|< i
  ,.sc2mac_dat_data89 (sc2mac_dat_a_src_data89[7:0]) //|< i
  ,.sc2mac_dat_data90 (sc2mac_dat_a_src_data90[7:0]) //|< i
  ,.sc2mac_dat_data91 (sc2mac_dat_a_src_data91[7:0]) //|< i
  ,.sc2mac_dat_data92 (sc2mac_dat_a_src_data92[7:0]) //|< i
  ,.sc2mac_dat_data93 (sc2mac_dat_a_src_data93[7:0]) //|< i
  ,.sc2mac_dat_data94 (sc2mac_dat_a_src_data94[7:0]) //|< i
  ,.sc2mac_dat_data95 (sc2mac_dat_a_src_data95[7:0]) //|< i
  ,.sc2mac_dat_data96 (sc2mac_dat_a_src_data96[7:0]) //|< i
  ,.sc2mac_dat_data97 (sc2mac_dat_a_src_data97[7:0]) //|< i
  ,.sc2mac_dat_data98 (sc2mac_dat_a_src_data98[7:0]) //|< i
  ,.sc2mac_dat_data99 (sc2mac_dat_a_src_data99[7:0]) //|< i
  ,.sc2mac_dat_data100 (sc2mac_dat_a_src_data100[7:0]) //|< i
  ,.sc2mac_dat_data101 (sc2mac_dat_a_src_data101[7:0]) //|< i
  ,.sc2mac_dat_data102 (sc2mac_dat_a_src_data102[7:0]) //|< i
  ,.sc2mac_dat_data103 (sc2mac_dat_a_src_data103[7:0]) //|< i
  ,.sc2mac_dat_data104 (sc2mac_dat_a_src_data104[7:0]) //|< i
  ,.sc2mac_dat_data105 (sc2mac_dat_a_src_data105[7:0]) //|< i
  ,.sc2mac_dat_data106 (sc2mac_dat_a_src_data106[7:0]) //|< i
  ,.sc2mac_dat_data107 (sc2mac_dat_a_src_data107[7:0]) //|< i
  ,.sc2mac_dat_data108 (sc2mac_dat_a_src_data108[7:0]) //|< i
  ,.sc2mac_dat_data109 (sc2mac_dat_a_src_data109[7:0]) //|< i
  ,.sc2mac_dat_data110 (sc2mac_dat_a_src_data110[7:0]) //|< i
  ,.sc2mac_dat_data111 (sc2mac_dat_a_src_data111[7:0]) //|< i
  ,.sc2mac_dat_data112 (sc2mac_dat_a_src_data112[7:0]) //|< i
  ,.sc2mac_dat_data113 (sc2mac_dat_a_src_data113[7:0]) //|< i
  ,.sc2mac_dat_data114 (sc2mac_dat_a_src_data114[7:0]) //|< i
  ,.sc2mac_dat_data115 (sc2mac_dat_a_src_data115[7:0]) //|< i
  ,.sc2mac_dat_data116 (sc2mac_dat_a_src_data116[7:0]) //|< i
  ,.sc2mac_dat_data117 (sc2mac_dat_a_src_data117[7:0]) //|< i
  ,.sc2mac_dat_data118 (sc2mac_dat_a_src_data118[7:0]) //|< i
  ,.sc2mac_dat_data119 (sc2mac_dat_a_src_data119[7:0]) //|< i
  ,.sc2mac_dat_data120 (sc2mac_dat_a_src_data120[7:0]) //|< i
  ,.sc2mac_dat_data121 (sc2mac_dat_a_src_data121[7:0]) //|< i
  ,.sc2mac_dat_data122 (sc2mac_dat_a_src_data122[7:0]) //|< i
  ,.sc2mac_dat_data123 (sc2mac_dat_a_src_data123[7:0]) //|< i
  ,.sc2mac_dat_data124 (sc2mac_dat_a_src_data124[7:0]) //|< i
  ,.sc2mac_dat_data125 (sc2mac_dat_a_src_data125[7:0]) //|< i
  ,.sc2mac_dat_data126 (sc2mac_dat_a_src_data126[7:0]) //|< i
  ,.sc2mac_dat_data127 (sc2mac_dat_a_src_data127[7:0]) //|< i
  ,.sc2mac_dat_pd (sc2mac_dat_a_src_pd[8:0]) //|< i
// sc2mac_a weight
  ,.sc2mac_wt_pvld (sc2mac_wt_a_src_pvld) //|< i
  ,.sc2mac_wt_mask (sc2mac_wt_a_src_mask[127:0]) //|< i
  ,.sc2mac_wt_data0 (sc2mac_wt_a_src_data0[7:0]) //|< i
  ,.sc2mac_wt_data1 (sc2mac_wt_a_src_data1[7:0]) //|< i
  ,.sc2mac_wt_data2 (sc2mac_wt_a_src_data2[7:0]) //|< i
  ,.sc2mac_wt_data3 (sc2mac_wt_a_src_data3[7:0]) //|< i
  ,.sc2mac_wt_data4 (sc2mac_wt_a_src_data4[7:0]) //|< i
  ,.sc2mac_wt_data5 (sc2mac_wt_a_src_data5[7:0]) //|< i
  ,.sc2mac_wt_data6 (sc2mac_wt_a_src_data6[7:0]) //|< i
  ,.sc2mac_wt_data7 (sc2mac_wt_a_src_data7[7:0]) //|< i
  ,.sc2mac_wt_data8 (sc2mac_wt_a_src_data8[7:0]) //|< i
  ,.sc2mac_wt_data9 (sc2mac_wt_a_src_data9[7:0]) //|< i
  ,.sc2mac_wt_data10 (sc2mac_wt_a_src_data10[7:0]) //|< i
  ,.sc2mac_wt_data11 (sc2mac_wt_a_src_data11[7:0]) //|< i
  ,.sc2mac_wt_data12 (sc2mac_wt_a_src_data12[7:0]) //|< i
  ,.sc2mac_wt_data13 (sc2mac_wt_a_src_data13[7:0]) //|< i
  ,.sc2mac_wt_data14 (sc2mac_wt_a_src_data14[7:0]) //|< i
  ,.sc2mac_wt_data15 (sc2mac_wt_a_src_data15[7:0]) //|< i
  ,.sc2mac_wt_data16 (sc2mac_wt_a_src_data16[7:0]) //|< i
  ,.sc2mac_wt_data17 (sc2mac_wt_a_src_data17[7:0]) //|< i
  ,.sc2mac_wt_data18 (sc2mac_wt_a_src_data18[7:0]) //|< i
  ,.sc2mac_wt_data19 (sc2mac_wt_a_src_data19[7:0]) //|< i
  ,.sc2mac_wt_data20 (sc2mac_wt_a_src_data20[7:0]) //|< i
  ,.sc2mac_wt_data21 (sc2mac_wt_a_src_data21[7:0]) //|< i
  ,.sc2mac_wt_data22 (sc2mac_wt_a_src_data22[7:0]) //|< i
  ,.sc2mac_wt_data23 (sc2mac_wt_a_src_data23[7:0]) //|< i
  ,.sc2mac_wt_data24 (sc2mac_wt_a_src_data24[7:0]) //|< i
  ,.sc2mac_wt_data25 (sc2mac_wt_a_src_data25[7:0]) //|< i
  ,.sc2mac_wt_data26 (sc2mac_wt_a_src_data26[7:0]) //|< i
  ,.sc2mac_wt_data27 (sc2mac_wt_a_src_data27[7:0]) //|< i
  ,.sc2mac_wt_data28 (sc2mac_wt_a_src_data28[7:0]) //|< i
  ,.sc2mac_wt_data29 (sc2mac_wt_a_src_data29[7:0]) //|< i
  ,.sc2mac_wt_data30 (sc2mac_wt_a_src_data30[7:0]) //|< i
  ,.sc2mac_wt_data31 (sc2mac_wt_a_src_data31[7:0]) //|< i
  ,.sc2mac_wt_data32 (sc2mac_wt_a_src_data32[7:0]) //|< i
  ,.sc2mac_wt_data33 (sc2mac_wt_a_src_data33[7:0]) //|< i
  ,.sc2mac_wt_data34 (sc2mac_wt_a_src_data34[7:0]) //|< i
  ,.sc2mac_wt_data35 (sc2mac_wt_a_src_data35[7:0]) //|< i
  ,.sc2mac_wt_data36 (sc2mac_wt_a_src_data36[7:0]) //|< i
  ,.sc2mac_wt_data37 (sc2mac_wt_a_src_data37[7:0]) //|< i
  ,.sc2mac_wt_data38 (sc2mac_wt_a_src_data38[7:0]) //|< i
  ,.sc2mac_wt_data39 (sc2mac_wt_a_src_data39[7:0]) //|< i
  ,.sc2mac_wt_data40 (sc2mac_wt_a_src_data40[7:0]) //|< i
  ,.sc2mac_wt_data41 (sc2mac_wt_a_src_data41[7:0]) //|< i
  ,.sc2mac_wt_data42 (sc2mac_wt_a_src_data42[7:0]) //|< i
  ,.sc2mac_wt_data43 (sc2mac_wt_a_src_data43[7:0]) //|< i
  ,.sc2mac_wt_data44 (sc2mac_wt_a_src_data44[7:0]) //|< i
  ,.sc2mac_wt_data45 (sc2mac_wt_a_src_data45[7:0]) //|< i
  ,.sc2mac_wt_data46 (sc2mac_wt_a_src_data46[7:0]) //|< i
  ,.sc2mac_wt_data47 (sc2mac_wt_a_src_data47[7:0]) //|< i
  ,.sc2mac_wt_data48 (sc2mac_wt_a_src_data48[7:0]) //|< i
  ,.sc2mac_wt_data49 (sc2mac_wt_a_src_data49[7:0]) //|< i
  ,.sc2mac_wt_data50 (sc2mac_wt_a_src_data50[7:0]) //|< i
  ,.sc2mac_wt_data51 (sc2mac_wt_a_src_data51[7:0]) //|< i
  ,.sc2mac_wt_data52 (sc2mac_wt_a_src_data52[7:0]) //|< i
  ,.sc2mac_wt_data53 (sc2mac_wt_a_src_data53[7:0]) //|< i
  ,.sc2mac_wt_data54 (sc2mac_wt_a_src_data54[7:0]) //|< i
  ,.sc2mac_wt_data55 (sc2mac_wt_a_src_data55[7:0]) //|< i
  ,.sc2mac_wt_data56 (sc2mac_wt_a_src_data56[7:0]) //|< i
  ,.sc2mac_wt_data57 (sc2mac_wt_a_src_data57[7:0]) //|< i
  ,.sc2mac_wt_data58 (sc2mac_wt_a_src_data58[7:0]) //|< i
  ,.sc2mac_wt_data59 (sc2mac_wt_a_src_data59[7:0]) //|< i
  ,.sc2mac_wt_data60 (sc2mac_wt_a_src_data60[7:0]) //|< i
  ,.sc2mac_wt_data61 (sc2mac_wt_a_src_data61[7:0]) //|< i
  ,.sc2mac_wt_data62 (sc2mac_wt_a_src_data62[7:0]) //|< i
  ,.sc2mac_wt_data63 (sc2mac_wt_a_src_data63[7:0]) //|< i
  ,.sc2mac_wt_data64 (sc2mac_wt_a_src_data64[7:0]) //|< i
  ,.sc2mac_wt_data65 (sc2mac_wt_a_src_data65[7:0]) //|< i
  ,.sc2mac_wt_data66 (sc2mac_wt_a_src_data66[7:0]) //|< i
  ,.sc2mac_wt_data67 (sc2mac_wt_a_src_data67[7:0]) //|< i
  ,.sc2mac_wt_data68 (sc2mac_wt_a_src_data68[7:0]) //|< i
  ,.sc2mac_wt_data69 (sc2mac_wt_a_src_data69[7:0]) //|< i
  ,.sc2mac_wt_data70 (sc2mac_wt_a_src_data70[7:0]) //|< i
  ,.sc2mac_wt_data71 (sc2mac_wt_a_src_data71[7:0]) //|< i
  ,.sc2mac_wt_data72 (sc2mac_wt_a_src_data72[7:0]) //|< i
  ,.sc2mac_wt_data73 (sc2mac_wt_a_src_data73[7:0]) //|< i
  ,.sc2mac_wt_data74 (sc2mac_wt_a_src_data74[7:0]) //|< i
  ,.sc2mac_wt_data75 (sc2mac_wt_a_src_data75[7:0]) //|< i
  ,.sc2mac_wt_data76 (sc2mac_wt_a_src_data76[7:0]) //|< i
  ,.sc2mac_wt_data77 (sc2mac_wt_a_src_data77[7:0]) //|< i
  ,.sc2mac_wt_data78 (sc2mac_wt_a_src_data78[7:0]) //|< i
  ,.sc2mac_wt_data79 (sc2mac_wt_a_src_data79[7:0]) //|< i
  ,.sc2mac_wt_data80 (sc2mac_wt_a_src_data80[7:0]) //|< i
  ,.sc2mac_wt_data81 (sc2mac_wt_a_src_data81[7:0]) //|< i
  ,.sc2mac_wt_data82 (sc2mac_wt_a_src_data82[7:0]) //|< i
  ,.sc2mac_wt_data83 (sc2mac_wt_a_src_data83[7:0]) //|< i
  ,.sc2mac_wt_data84 (sc2mac_wt_a_src_data84[7:0]) //|< i
  ,.sc2mac_wt_data85 (sc2mac_wt_a_src_data85[7:0]) //|< i
  ,.sc2mac_wt_data86 (sc2mac_wt_a_src_data86[7:0]) //|< i
  ,.sc2mac_wt_data87 (sc2mac_wt_a_src_data87[7:0]) //|< i
  ,.sc2mac_wt_data88 (sc2mac_wt_a_src_data88[7:0]) //|< i
  ,.sc2mac_wt_data89 (sc2mac_wt_a_src_data89[7:0]) //|< i
  ,.sc2mac_wt_data90 (sc2mac_wt_a_src_data90[7:0]) //|< i
  ,.sc2mac_wt_data91 (sc2mac_wt_a_src_data91[7:0]) //|< i
  ,.sc2mac_wt_data92 (sc2mac_wt_a_src_data92[7:0]) //|< i
  ,.sc2mac_wt_data93 (sc2mac_wt_a_src_data93[7:0]) //|< i
  ,.sc2mac_wt_data94 (sc2mac_wt_a_src_data94[7:0]) //|< i
  ,.sc2mac_wt_data95 (sc2mac_wt_a_src_data95[7:0]) //|< i
  ,.sc2mac_wt_data96 (sc2mac_wt_a_src_data96[7:0]) //|< i
  ,.sc2mac_wt_data97 (sc2mac_wt_a_src_data97[7:0]) //|< i
  ,.sc2mac_wt_data98 (sc2mac_wt_a_src_data98[7:0]) //|< i
  ,.sc2mac_wt_data99 (sc2mac_wt_a_src_data99[7:0]) //|< i
  ,.sc2mac_wt_data100 (sc2mac_wt_a_src_data100[7:0]) //|< i
  ,.sc2mac_wt_data101 (sc2mac_wt_a_src_data101[7:0]) //|< i
  ,.sc2mac_wt_data102 (sc2mac_wt_a_src_data102[7:0]) //|< i
  ,.sc2mac_wt_data103 (sc2mac_wt_a_src_data103[7:0]) //|< i
  ,.sc2mac_wt_data104 (sc2mac_wt_a_src_data104[7:0]) //|< i
  ,.sc2mac_wt_data105 (sc2mac_wt_a_src_data105[7:0]) //|< i
  ,.sc2mac_wt_data106 (sc2mac_wt_a_src_data106[7:0]) //|< i
  ,.sc2mac_wt_data107 (sc2mac_wt_a_src_data107[7:0]) //|< i
  ,.sc2mac_wt_data108 (sc2mac_wt_a_src_data108[7:0]) //|< i
  ,.sc2mac_wt_data109 (sc2mac_wt_a_src_data109[7:0]) //|< i
  ,.sc2mac_wt_data110 (sc2mac_wt_a_src_data110[7:0]) //|< i
  ,.sc2mac_wt_data111 (sc2mac_wt_a_src_data111[7:0]) //|< i
  ,.sc2mac_wt_data112 (sc2mac_wt_a_src_data112[7:0]) //|< i
  ,.sc2mac_wt_data113 (sc2mac_wt_a_src_data113[7:0]) //|< i
  ,.sc2mac_wt_data114 (sc2mac_wt_a_src_data114[7:0]) //|< i
  ,.sc2mac_wt_data115 (sc2mac_wt_a_src_data115[7:0]) //|< i
  ,.sc2mac_wt_data116 (sc2mac_wt_a_src_data116[7:0]) //|< i
  ,.sc2mac_wt_data117 (sc2mac_wt_a_src_data117[7:0]) //|< i
  ,.sc2mac_wt_data118 (sc2mac_wt_a_src_data118[7:0]) //|< i
  ,.sc2mac_wt_data119 (sc2mac_wt_a_src_data119[7:0]) //|< i
  ,.sc2mac_wt_data120 (sc2mac_wt_a_src_data120[7:0]) //|< i
  ,.sc2mac_wt_data121 (sc2mac_wt_a_src_data121[7:0]) //|< i
  ,.sc2mac_wt_data122 (sc2mac_wt_a_src_data122[7:0]) //|< i
  ,.sc2mac_wt_data123 (sc2mac_wt_a_src_data123[7:0]) //|< i
  ,.sc2mac_wt_data124 (sc2mac_wt_a_src_data124[7:0]) //|< i
  ,.sc2mac_wt_data125 (sc2mac_wt_a_src_data125[7:0]) //|< i
  ,.sc2mac_wt_data126 (sc2mac_wt_a_src_data126[7:0]) //|< i
  ,.sc2mac_wt_data127 (sc2mac_wt_a_src_data127[7:0]) //|< i
  ,.sc2mac_wt_sel (sc2mac_wt_a_src_sel[7:0]) //|< i
// other clk info
  );

////////////////////////////////////////////////////////////////////////
// NVDLA Partition MB //
////////////////////////////////////////////////////////////////////////
NV_NVDLA_cmac u_NV_NVDLA_cmac_b (
   .nvdla_core_clk (nvdla_core_clk) //|< i
  ,.nvdla_core_rstn (nvdla_core_rstn) //|< w
// csb2mac_b |<> io 
  ,.cmac_a2csb_resp_valid () //|> o
  ,.cmac_a2csb_resp_pd () //|> o
  ,.csb2cmac_a_req_pvld (csb2cmac_b_req_pvld) //|< i
  ,.csb2cmac_a_req_prdy (csb2cmac_b_req_prdy) //|> o
  ,.csb2cmac_a_req_pd (csb2cmac_b_req_pd[62:0]) //|< i

// mac_b2accu
  ,.mac2accu_pvld (mac_b2accu_dst_pvld) //|> o
  ,.mac2accu_mask (mac_b2accu_dst_mask[7:0]) //|> o
  ,.mac2accu_mode (mac_b2accu_dst_mode[7:0]) //|> o
  ,.mac2accu_data0 (mac_b2accu_dst_data0[175:0]) //|> o
  ,.mac2accu_data1 (mac_b2accu_dst_data1[175:0]) //|> o
  ,.mac2accu_data2 (mac_b2accu_dst_data2[175:0]) //|> o
  ,.mac2accu_data3 (mac_b2accu_dst_data3[175:0]) //|> o
  ,.mac2accu_data4 (mac_b2accu_dst_data4[175:0]) //|> o
  ,.mac2accu_data5 (mac_b2accu_dst_data5[175:0]) //|> o
  ,.mac2accu_data6 (mac_b2accu_dst_data6[175:0]) //|> o
  ,.mac2accu_data7 (mac_b2accu_dst_data7[175:0]) //|> o
  ,.mac2accu_pd (mac_b2accu_dst_pd[8:0]) //|> o
// sc2mac_b data
  ,.sc2mac_dat_pvld (sc2mac_dat_b_src_pvld) //|< i
  ,.sc2mac_dat_mask (sc2mac_dat_b_src_mask[127:0]) //|< i
  ,.sc2mac_dat_data0 (sc2mac_dat_b_src_data0[7:0]) //|< i
  ,.sc2mac_dat_data1 (sc2mac_dat_b_src_data1[7:0]) //|< i
  ,.sc2mac_dat_data2 (sc2mac_dat_b_src_data2[7:0]) //|< i
  ,.sc2mac_dat_data3 (sc2mac_dat_b_src_data3[7:0]) //|< i
  ,.sc2mac_dat_data4 (sc2mac_dat_b_src_data4[7:0]) //|< i
  ,.sc2mac_dat_data5 (sc2mac_dat_b_src_data5[7:0]) //|< i
  ,.sc2mac_dat_data6 (sc2mac_dat_b_src_data6[7:0]) //|< i
  ,.sc2mac_dat_data7 (sc2mac_dat_b_src_data7[7:0]) //|< i
  ,.sc2mac_dat_data8 (sc2mac_dat_b_src_data8[7:0]) //|< i
  ,.sc2mac_dat_data9 (sc2mac_dat_b_src_data9[7:0]) //|< i
  ,.sc2mac_dat_data10 (sc2mac_dat_b_src_data10[7:0]) //|< i
  ,.sc2mac_dat_data11 (sc2mac_dat_b_src_data11[7:0]) //|< i
  ,.sc2mac_dat_data12 (sc2mac_dat_b_src_data12[7:0]) //|< i
  ,.sc2mac_dat_data13 (sc2mac_dat_b_src_data13[7:0]) //|< i
  ,.sc2mac_dat_data14 (sc2mac_dat_b_src_data14[7:0]) //|< i
  ,.sc2mac_dat_data15 (sc2mac_dat_b_src_data15[7:0]) //|< i
  ,.sc2mac_dat_data16 (sc2mac_dat_b_src_data16[7:0]) //|< i
  ,.sc2mac_dat_data17 (sc2mac_dat_b_src_data17[7:0]) //|< i
  ,.sc2mac_dat_data18 (sc2mac_dat_b_src_data18[7:0]) //|< i
  ,.sc2mac_dat_data19 (sc2mac_dat_b_src_data19[7:0]) //|< i
  ,.sc2mac_dat_data20 (sc2mac_dat_b_src_data20[7:0]) //|< i
  ,.sc2mac_dat_data21 (sc2mac_dat_b_src_data21[7:0]) //|< i
  ,.sc2mac_dat_data22 (sc2mac_dat_b_src_data22[7:0]) //|< i
  ,.sc2mac_dat_data23 (sc2mac_dat_b_src_data23[7:0]) //|< i
  ,.sc2mac_dat_data24 (sc2mac_dat_b_src_data24[7:0]) //|< i
  ,.sc2mac_dat_data25 (sc2mac_dat_b_src_data25[7:0]) //|< i
  ,.sc2mac_dat_data26 (sc2mac_dat_b_src_data26[7:0]) //|< i
  ,.sc2mac_dat_data27 (sc2mac_dat_b_src_data27[7:0]) //|< i
  ,.sc2mac_dat_data28 (sc2mac_dat_b_src_data28[7:0]) //|< i
  ,.sc2mac_dat_data29 (sc2mac_dat_b_src_data29[7:0]) //|< i
  ,.sc2mac_dat_data30 (sc2mac_dat_b_src_data30[7:0]) //|< i
  ,.sc2mac_dat_data31 (sc2mac_dat_b_src_data31[7:0]) //|< i
  ,.sc2mac_dat_data32 (sc2mac_dat_b_src_data32[7:0]) //|< i
  ,.sc2mac_dat_data33 (sc2mac_dat_b_src_data33[7:0]) //|< i
  ,.sc2mac_dat_data34 (sc2mac_dat_b_src_data34[7:0]) //|< i
  ,.sc2mac_dat_data35 (sc2mac_dat_b_src_data35[7:0]) //|< i
  ,.sc2mac_dat_data36 (sc2mac_dat_b_src_data36[7:0]) //|< i
  ,.sc2mac_dat_data37 (sc2mac_dat_b_src_data37[7:0]) //|< i
  ,.sc2mac_dat_data38 (sc2mac_dat_b_src_data38[7:0]) //|< i
  ,.sc2mac_dat_data39 (sc2mac_dat_b_src_data39[7:0]) //|< i
  ,.sc2mac_dat_data40 (sc2mac_dat_b_src_data40[7:0]) //|< i
  ,.sc2mac_dat_data41 (sc2mac_dat_b_src_data41[7:0]) //|< i
  ,.sc2mac_dat_data42 (sc2mac_dat_b_src_data42[7:0]) //|< i
  ,.sc2mac_dat_data43 (sc2mac_dat_b_src_data43[7:0]) //|< i
  ,.sc2mac_dat_data44 (sc2mac_dat_b_src_data44[7:0]) //|< i
  ,.sc2mac_dat_data45 (sc2mac_dat_b_src_data45[7:0]) //|< i
  ,.sc2mac_dat_data46 (sc2mac_dat_b_src_data46[7:0]) //|< i
  ,.sc2mac_dat_data47 (sc2mac_dat_b_src_data47[7:0]) //|< i
  ,.sc2mac_dat_data48 (sc2mac_dat_b_src_data48[7:0]) //|< i
  ,.sc2mac_dat_data49 (sc2mac_dat_b_src_data49[7:0]) //|< i
  ,.sc2mac_dat_data50 (sc2mac_dat_b_src_data50[7:0]) //|< i
  ,.sc2mac_dat_data51 (sc2mac_dat_b_src_data51[7:0]) //|< i
  ,.sc2mac_dat_data52 (sc2mac_dat_b_src_data52[7:0]) //|< i
  ,.sc2mac_dat_data53 (sc2mac_dat_b_src_data53[7:0]) //|< i
  ,.sc2mac_dat_data54 (sc2mac_dat_b_src_data54[7:0]) //|< i
  ,.sc2mac_dat_data55 (sc2mac_dat_b_src_data55[7:0]) //|< i
  ,.sc2mac_dat_data56 (sc2mac_dat_b_src_data56[7:0]) //|< i
  ,.sc2mac_dat_data57 (sc2mac_dat_b_src_data57[7:0]) //|< i
  ,.sc2mac_dat_data58 (sc2mac_dat_b_src_data58[7:0]) //|< i
  ,.sc2mac_dat_data59 (sc2mac_dat_b_src_data59[7:0]) //|< i
  ,.sc2mac_dat_data60 (sc2mac_dat_b_src_data60[7:0]) //|< i
  ,.sc2mac_dat_data61 (sc2mac_dat_b_src_data61[7:0]) //|< i
  ,.sc2mac_dat_data62 (sc2mac_dat_b_src_data62[7:0]) //|< i
  ,.sc2mac_dat_data63 (sc2mac_dat_b_src_data63[7:0]) //|< i
  ,.sc2mac_dat_data64 (sc2mac_dat_b_src_data64[7:0]) //|< i
  ,.sc2mac_dat_data65 (sc2mac_dat_b_src_data65[7:0]) //|< i
  ,.sc2mac_dat_data66 (sc2mac_dat_b_src_data66[7:0]) //|< i
  ,.sc2mac_dat_data67 (sc2mac_dat_b_src_data67[7:0]) //|< i
  ,.sc2mac_dat_data68 (sc2mac_dat_b_src_data68[7:0]) //|< i
  ,.sc2mac_dat_data69 (sc2mac_dat_b_src_data69[7:0]) //|< i
  ,.sc2mac_dat_data70 (sc2mac_dat_b_src_data70[7:0]) //|< i
  ,.sc2mac_dat_data71 (sc2mac_dat_b_src_data71[7:0]) //|< i
  ,.sc2mac_dat_data72 (sc2mac_dat_b_src_data72[7:0]) //|< i
  ,.sc2mac_dat_data73 (sc2mac_dat_b_src_data73[7:0]) //|< i
  ,.sc2mac_dat_data74 (sc2mac_dat_b_src_data74[7:0]) //|< i
  ,.sc2mac_dat_data75 (sc2mac_dat_b_src_data75[7:0]) //|< i
  ,.sc2mac_dat_data76 (sc2mac_dat_b_src_data76[7:0]) //|< i
  ,.sc2mac_dat_data77 (sc2mac_dat_b_src_data77[7:0]) //|< i
  ,.sc2mac_dat_data78 (sc2mac_dat_b_src_data78[7:0]) //|< i
  ,.sc2mac_dat_data79 (sc2mac_dat_b_src_data79[7:0]) //|< i
  ,.sc2mac_dat_data80 (sc2mac_dat_b_src_data80[7:0]) //|< i
  ,.sc2mac_dat_data81 (sc2mac_dat_b_src_data81[7:0]) //|< i
  ,.sc2mac_dat_data82 (sc2mac_dat_b_src_data82[7:0]) //|< i
  ,.sc2mac_dat_data83 (sc2mac_dat_b_src_data83[7:0]) //|< i
  ,.sc2mac_dat_data84 (sc2mac_dat_b_src_data84[7:0]) //|< i
  ,.sc2mac_dat_data85 (sc2mac_dat_b_src_data85[7:0]) //|< i
  ,.sc2mac_dat_data86 (sc2mac_dat_b_src_data86[7:0]) //|< i
  ,.sc2mac_dat_data87 (sc2mac_dat_b_src_data87[7:0]) //|< i
  ,.sc2mac_dat_data88 (sc2mac_dat_b_src_data88[7:0]) //|< i
  ,.sc2mac_dat_data89 (sc2mac_dat_b_src_data89[7:0]) //|< i
  ,.sc2mac_dat_data90 (sc2mac_dat_b_src_data90[7:0]) //|< i
  ,.sc2mac_dat_data91 (sc2mac_dat_b_src_data91[7:0]) //|< i
  ,.sc2mac_dat_data92 (sc2mac_dat_b_src_data92[7:0]) //|< i
  ,.sc2mac_dat_data93 (sc2mac_dat_b_src_data93[7:0]) //|< i
  ,.sc2mac_dat_data94 (sc2mac_dat_b_src_data94[7:0]) //|< i
  ,.sc2mac_dat_data95 (sc2mac_dat_b_src_data95[7:0]) //|< i
  ,.sc2mac_dat_data96 (sc2mac_dat_b_src_data96[7:0]) //|< i
  ,.sc2mac_dat_data97 (sc2mac_dat_b_src_data97[7:0]) //|< i
  ,.sc2mac_dat_data98 (sc2mac_dat_b_src_data98[7:0]) //|< i
  ,.sc2mac_dat_data99 (sc2mac_dat_b_src_data99[7:0]) //|< i
  ,.sc2mac_dat_data100 (sc2mac_dat_b_src_data100[7:0]) //|< i
  ,.sc2mac_dat_data101 (sc2mac_dat_b_src_data101[7:0]) //|< i
  ,.sc2mac_dat_data102 (sc2mac_dat_b_src_data102[7:0]) //|< i
  ,.sc2mac_dat_data103 (sc2mac_dat_b_src_data103[7:0]) //|< i
  ,.sc2mac_dat_data104 (sc2mac_dat_b_src_data104[7:0]) //|< i
  ,.sc2mac_dat_data105 (sc2mac_dat_b_src_data105[7:0]) //|< i
  ,.sc2mac_dat_data106 (sc2mac_dat_b_src_data106[7:0]) //|< i
  ,.sc2mac_dat_data107 (sc2mac_dat_b_src_data107[7:0]) //|< i
  ,.sc2mac_dat_data108 (sc2mac_dat_b_src_data108[7:0]) //|< i
  ,.sc2mac_dat_data109 (sc2mac_dat_b_src_data109[7:0]) //|< i
  ,.sc2mac_dat_data110 (sc2mac_dat_b_src_data110[7:0]) //|< i
  ,.sc2mac_dat_data111 (sc2mac_dat_b_src_data111[7:0]) //|< i
  ,.sc2mac_dat_data112 (sc2mac_dat_b_src_data112[7:0]) //|< i
  ,.sc2mac_dat_data113 (sc2mac_dat_b_src_data113[7:0]) //|< i
  ,.sc2mac_dat_data114 (sc2mac_dat_b_src_data114[7:0]) //|< i
  ,.sc2mac_dat_data115 (sc2mac_dat_b_src_data115[7:0]) //|< i
  ,.sc2mac_dat_data116 (sc2mac_dat_b_src_data116[7:0]) //|< i
  ,.sc2mac_dat_data117 (sc2mac_dat_b_src_data117[7:0]) //|< i
  ,.sc2mac_dat_data118 (sc2mac_dat_b_src_data118[7:0]) //|< i
  ,.sc2mac_dat_data119 (sc2mac_dat_b_src_data119[7:0]) //|< i
  ,.sc2mac_dat_data120 (sc2mac_dat_b_src_data120[7:0]) //|< i
  ,.sc2mac_dat_data121 (sc2mac_dat_b_src_data121[7:0]) //|< i
  ,.sc2mac_dat_data122 (sc2mac_dat_b_src_data122[7:0]) //|< i
  ,.sc2mac_dat_data123 (sc2mac_dat_b_src_data123[7:0]) //|< i
  ,.sc2mac_dat_data124 (sc2mac_dat_b_src_data124[7:0]) //|< i
  ,.sc2mac_dat_data125 (sc2mac_dat_b_src_data125[7:0]) //|< i
  ,.sc2mac_dat_data126 (sc2mac_dat_b_src_data126[7:0]) //|< i
  ,.sc2mac_dat_data127 (sc2mac_dat_b_src_data127[7:0]) //|< i
  ,.sc2mac_dat_pd (sc2mac_dat_b_src_pd[8:0]) //|< i
// sc2mac_b weight
  ,.sc2mac_wt_pvld (sc2mac_wt_b_src_pvld) //|< i
  ,.sc2mac_wt_mask (sc2mac_wt_b_src_mask[127:0]) //|< i
  ,.sc2mac_wt_data0 (sc2mac_wt_b_src_data0[7:0]) //|< i
  ,.sc2mac_wt_data1 (sc2mac_wt_b_src_data1[7:0]) //|< i
  ,.sc2mac_wt_data2 (sc2mac_wt_b_src_data2[7:0]) //|< i
  ,.sc2mac_wt_data3 (sc2mac_wt_b_src_data3[7:0]) //|< i
  ,.sc2mac_wt_data4 (sc2mac_wt_b_src_data4[7:0]) //|< i
  ,.sc2mac_wt_data5 (sc2mac_wt_b_src_data5[7:0]) //|< i
  ,.sc2mac_wt_data6 (sc2mac_wt_b_src_data6[7:0]) //|< i
  ,.sc2mac_wt_data7 (sc2mac_wt_b_src_data7[7:0]) //|< i
  ,.sc2mac_wt_data8 (sc2mac_wt_b_src_data8[7:0]) //|< i
  ,.sc2mac_wt_data9 (sc2mac_wt_b_src_data9[7:0]) //|< i
  ,.sc2mac_wt_data10 (sc2mac_wt_b_src_data10[7:0]) //|< i
  ,.sc2mac_wt_data11 (sc2mac_wt_b_src_data11[7:0]) //|< i
  ,.sc2mac_wt_data12 (sc2mac_wt_b_src_data12[7:0]) //|< i
  ,.sc2mac_wt_data13 (sc2mac_wt_b_src_data13[7:0]) //|< i
  ,.sc2mac_wt_data14 (sc2mac_wt_b_src_data14[7:0]) //|< i
  ,.sc2mac_wt_data15 (sc2mac_wt_b_src_data15[7:0]) //|< i
  ,.sc2mac_wt_data16 (sc2mac_wt_b_src_data16[7:0]) //|< i
  ,.sc2mac_wt_data17 (sc2mac_wt_b_src_data17[7:0]) //|< i
  ,.sc2mac_wt_data18 (sc2mac_wt_b_src_data18[7:0]) //|< i
  ,.sc2mac_wt_data19 (sc2mac_wt_b_src_data19[7:0]) //|< i
  ,.sc2mac_wt_data20 (sc2mac_wt_b_src_data20[7:0]) //|< i
  ,.sc2mac_wt_data21 (sc2mac_wt_b_src_data21[7:0]) //|< i
  ,.sc2mac_wt_data22 (sc2mac_wt_b_src_data22[7:0]) //|< i
  ,.sc2mac_wt_data23 (sc2mac_wt_b_src_data23[7:0]) //|< i
  ,.sc2mac_wt_data24 (sc2mac_wt_b_src_data24[7:0]) //|< i
  ,.sc2mac_wt_data25 (sc2mac_wt_b_src_data25[7:0]) //|< i
  ,.sc2mac_wt_data26 (sc2mac_wt_b_src_data26[7:0]) //|< i
  ,.sc2mac_wt_data27 (sc2mac_wt_b_src_data27[7:0]) //|< i
  ,.sc2mac_wt_data28 (sc2mac_wt_b_src_data28[7:0]) //|< i
  ,.sc2mac_wt_data29 (sc2mac_wt_b_src_data29[7:0]) //|< i
  ,.sc2mac_wt_data30 (sc2mac_wt_b_src_data30[7:0]) //|< i
  ,.sc2mac_wt_data31 (sc2mac_wt_b_src_data31[7:0]) //|< i
  ,.sc2mac_wt_data32 (sc2mac_wt_b_src_data32[7:0]) //|< i
  ,.sc2mac_wt_data33 (sc2mac_wt_b_src_data33[7:0]) //|< i
  ,.sc2mac_wt_data34 (sc2mac_wt_b_src_data34[7:0]) //|< i
  ,.sc2mac_wt_data35 (sc2mac_wt_b_src_data35[7:0]) //|< i
  ,.sc2mac_wt_data36 (sc2mac_wt_b_src_data36[7:0]) //|< i
  ,.sc2mac_wt_data37 (sc2mac_wt_b_src_data37[7:0]) //|< i
  ,.sc2mac_wt_data38 (sc2mac_wt_b_src_data38[7:0]) //|< i
  ,.sc2mac_wt_data39 (sc2mac_wt_b_src_data39[7:0]) //|< i
  ,.sc2mac_wt_data40 (sc2mac_wt_b_src_data40[7:0]) //|< i
  ,.sc2mac_wt_data41 (sc2mac_wt_b_src_data41[7:0]) //|< i
  ,.sc2mac_wt_data42 (sc2mac_wt_b_src_data42[7:0]) //|< i
  ,.sc2mac_wt_data43 (sc2mac_wt_b_src_data43[7:0]) //|< i
  ,.sc2mac_wt_data44 (sc2mac_wt_b_src_data44[7:0]) //|< i
  ,.sc2mac_wt_data45 (sc2mac_wt_b_src_data45[7:0]) //|< i
  ,.sc2mac_wt_data46 (sc2mac_wt_b_src_data46[7:0]) //|< i
  ,.sc2mac_wt_data47 (sc2mac_wt_b_src_data47[7:0]) //|< i
  ,.sc2mac_wt_data48 (sc2mac_wt_b_src_data48[7:0]) //|< i
  ,.sc2mac_wt_data49 (sc2mac_wt_b_src_data49[7:0]) //|< i
  ,.sc2mac_wt_data50 (sc2mac_wt_b_src_data50[7:0]) //|< i
  ,.sc2mac_wt_data51 (sc2mac_wt_b_src_data51[7:0]) //|< i
  ,.sc2mac_wt_data52 (sc2mac_wt_b_src_data52[7:0]) //|< i
  ,.sc2mac_wt_data53 (sc2mac_wt_b_src_data53[7:0]) //|< i
  ,.sc2mac_wt_data54 (sc2mac_wt_b_src_data54[7:0]) //|< i
  ,.sc2mac_wt_data55 (sc2mac_wt_b_src_data55[7:0]) //|< i
  ,.sc2mac_wt_data56 (sc2mac_wt_b_src_data56[7:0]) //|< i
  ,.sc2mac_wt_data57 (sc2mac_wt_b_src_data57[7:0]) //|< i
  ,.sc2mac_wt_data58 (sc2mac_wt_b_src_data58[7:0]) //|< i
  ,.sc2mac_wt_data59 (sc2mac_wt_b_src_data59[7:0]) //|< i
  ,.sc2mac_wt_data60 (sc2mac_wt_b_src_data60[7:0]) //|< i
  ,.sc2mac_wt_data61 (sc2mac_wt_b_src_data61[7:0]) //|< i
  ,.sc2mac_wt_data62 (sc2mac_wt_b_src_data62[7:0]) //|< i
  ,.sc2mac_wt_data63 (sc2mac_wt_b_src_data63[7:0]) //|< i
  ,.sc2mac_wt_data64 (sc2mac_wt_b_src_data64[7:0]) //|< i
  ,.sc2mac_wt_data65 (sc2mac_wt_b_src_data65[7:0]) //|< i
  ,.sc2mac_wt_data66 (sc2mac_wt_b_src_data66[7:0]) //|< i
  ,.sc2mac_wt_data67 (sc2mac_wt_b_src_data67[7:0]) //|< i
  ,.sc2mac_wt_data68 (sc2mac_wt_b_src_data68[7:0]) //|< i
  ,.sc2mac_wt_data69 (sc2mac_wt_b_src_data69[7:0]) //|< i
  ,.sc2mac_wt_data70 (sc2mac_wt_b_src_data70[7:0]) //|< i
  ,.sc2mac_wt_data71 (sc2mac_wt_b_src_data71[7:0]) //|< i
  ,.sc2mac_wt_data72 (sc2mac_wt_b_src_data72[7:0]) //|< i
  ,.sc2mac_wt_data73 (sc2mac_wt_b_src_data73[7:0]) //|< i
  ,.sc2mac_wt_data74 (sc2mac_wt_b_src_data74[7:0]) //|< i
  ,.sc2mac_wt_data75 (sc2mac_wt_b_src_data75[7:0]) //|< i
  ,.sc2mac_wt_data76 (sc2mac_wt_b_src_data76[7:0]) //|< i
  ,.sc2mac_wt_data77 (sc2mac_wt_b_src_data77[7:0]) //|< i
  ,.sc2mac_wt_data78 (sc2mac_wt_b_src_data78[7:0]) //|< i
  ,.sc2mac_wt_data79 (sc2mac_wt_b_src_data79[7:0]) //|< i
  ,.sc2mac_wt_data80 (sc2mac_wt_b_src_data80[7:0]) //|< i
  ,.sc2mac_wt_data81 (sc2mac_wt_b_src_data81[7:0]) //|< i
  ,.sc2mac_wt_data82 (sc2mac_wt_b_src_data82[7:0]) //|< i
  ,.sc2mac_wt_data83 (sc2mac_wt_b_src_data83[7:0]) //|< i
  ,.sc2mac_wt_data84 (sc2mac_wt_b_src_data84[7:0]) //|< i
  ,.sc2mac_wt_data85 (sc2mac_wt_b_src_data85[7:0]) //|< i
  ,.sc2mac_wt_data86 (sc2mac_wt_b_src_data86[7:0]) //|< i
  ,.sc2mac_wt_data87 (sc2mac_wt_b_src_data87[7:0]) //|< i
  ,.sc2mac_wt_data88 (sc2mac_wt_b_src_data88[7:0]) //|< i
  ,.sc2mac_wt_data89 (sc2mac_wt_b_src_data89[7:0]) //|< i
  ,.sc2mac_wt_data90 (sc2mac_wt_b_src_data90[7:0]) //|< i
  ,.sc2mac_wt_data91 (sc2mac_wt_b_src_data91[7:0]) //|< i
  ,.sc2mac_wt_data92 (sc2mac_wt_b_src_data92[7:0]) //|< i
  ,.sc2mac_wt_data93 (sc2mac_wt_b_src_data93[7:0]) //|< i
  ,.sc2mac_wt_data94 (sc2mac_wt_b_src_data94[7:0]) //|< i
  ,.sc2mac_wt_data95 (sc2mac_wt_b_src_data95[7:0]) //|< i
  ,.sc2mac_wt_data96 (sc2mac_wt_b_src_data96[7:0]) //|< i
  ,.sc2mac_wt_data97 (sc2mac_wt_b_src_data97[7:0]) //|< i
  ,.sc2mac_wt_data98 (sc2mac_wt_b_src_data98[7:0]) //|< i
  ,.sc2mac_wt_data99 (sc2mac_wt_b_src_data99[7:0]) //|< i
  ,.sc2mac_wt_data100 (sc2mac_wt_b_src_data100[7:0]) //|< i
  ,.sc2mac_wt_data101 (sc2mac_wt_b_src_data101[7:0]) //|< i
  ,.sc2mac_wt_data102 (sc2mac_wt_b_src_data102[7:0]) //|< i
  ,.sc2mac_wt_data103 (sc2mac_wt_b_src_data103[7:0]) //|< i
  ,.sc2mac_wt_data104 (sc2mac_wt_b_src_data104[7:0]) //|< i
  ,.sc2mac_wt_data105 (sc2mac_wt_b_src_data105[7:0]) //|< i
  ,.sc2mac_wt_data106 (sc2mac_wt_b_src_data106[7:0]) //|< i
  ,.sc2mac_wt_data107 (sc2mac_wt_b_src_data107[7:0]) //|< i
  ,.sc2mac_wt_data108 (sc2mac_wt_b_src_data108[7:0]) //|< i
  ,.sc2mac_wt_data109 (sc2mac_wt_b_src_data109[7:0]) //|< i
  ,.sc2mac_wt_data110 (sc2mac_wt_b_src_data110[7:0]) //|< i
  ,.sc2mac_wt_data111 (sc2mac_wt_b_src_data111[7:0]) //|< i
  ,.sc2mac_wt_data112 (sc2mac_wt_b_src_data112[7:0]) //|< i
  ,.sc2mac_wt_data113 (sc2mac_wt_b_src_data113[7:0]) //|< i
  ,.sc2mac_wt_data114 (sc2mac_wt_b_src_data114[7:0]) //|< i
  ,.sc2mac_wt_data115 (sc2mac_wt_b_src_data115[7:0]) //|< i
  ,.sc2mac_wt_data116 (sc2mac_wt_b_src_data116[7:0]) //|< i
  ,.sc2mac_wt_data117 (sc2mac_wt_b_src_data117[7:0]) //|< i
  ,.sc2mac_wt_data118 (sc2mac_wt_b_src_data118[7:0]) //|< i
  ,.sc2mac_wt_data119 (sc2mac_wt_b_src_data119[7:0]) //|< i
  ,.sc2mac_wt_data120 (sc2mac_wt_b_src_data120[7:0]) //|< i
  ,.sc2mac_wt_data121 (sc2mac_wt_b_src_data121[7:0]) //|< i
  ,.sc2mac_wt_data122 (sc2mac_wt_b_src_data122[7:0]) //|< i
  ,.sc2mac_wt_data123 (sc2mac_wt_b_src_data123[7:0]) //|< i
  ,.sc2mac_wt_data124 (sc2mac_wt_b_src_data124[7:0]) //|< i
  ,.sc2mac_wt_data125 (sc2mac_wt_b_src_data125[7:0]) //|< i
  ,.sc2mac_wt_data126 (sc2mac_wt_b_src_data126[7:0]) //|< i
  ,.sc2mac_wt_data127 (sc2mac_wt_b_src_data127[7:0]) //|< i
  ,.sc2mac_wt_sel (sc2mac_wt_b_src_sel[7:0]) //|< i
// other clk info
  );

////////////////////////////////////////////////////////////////////////
// NVDLA Partition A: Convolution Accumulator //
////////////////////////////////////////////////////////////////////////
NV_NVDLA_cacc u_NV_NVDLA_cacc (
   .nvdla_core_clk (nvdla_core_clk) //|< i
  ,.nvdla_core_rstn (nvdla_core_rstn) //|< w
  ,.pwrbus_ram_pd () //|< i
// csb2accu |<> io
  ,.csb2cacc_req_pvld (csb2cacc_req_dst_pvld) //|< i
  ,.csb2cacc_req_prdy (csb2cacc_req_dst_prdy) //|> o
  ,.csb2cacc_req_pd (csb2cacc_req_dst_pd[62:0]) //|< i
  ,.cacc2csb_resp_valid () //|> o
  ,.cacc2csb_resp_pd () //|> o

// mac_a2accu
  ,.mac_a2accu_pvld (mac_a2accu_dst_pvld) //|< i
  ,.mac_a2accu_mask (mac_a2accu_dst_mask[7:0]) //|< i
  ,.mac_a2accu_mode (mac_a2accu_dst_mode[7:0]) //|< i
  ,.mac_a2accu_data0 (mac_a2accu_dst_data0[175:0]) //|< i
  ,.mac_a2accu_data1 (mac_a2accu_dst_data1[175:0]) //|< i
  ,.mac_a2accu_data2 (mac_a2accu_dst_data2[175:0]) //|< i
  ,.mac_a2accu_data3 (mac_a2accu_dst_data3[175:0]) //|< i
  ,.mac_a2accu_data4 (mac_a2accu_dst_data4[175:0]) //|< i
  ,.mac_a2accu_data5 (mac_a2accu_dst_data5[175:0]) //|< i
  ,.mac_a2accu_data6 (mac_a2accu_dst_data6[175:0]) //|< i
  ,.mac_a2accu_data7 (mac_a2accu_dst_data7[175:0]) //|< i
  ,.mac_a2accu_pd (mac_a2accu_dst_pd[8:0]) //|< i
// mac_b2accu
  ,.mac_b2accu_pvld (mac_b2accu_dst_pvld) //|< w
  ,.mac_b2accu_mask (mac_b2accu_dst_mask[7:0]) //|< w
  ,.mac_b2accu_mode (mac_b2accu_dst_mode[7:0]) //|< w
  ,.mac_b2accu_data0 (mac_b2accu_dst_data0[175:0]) //|< w
  ,.mac_b2accu_data1 (mac_b2accu_dst_data1[175:0]) //|< w
  ,.mac_b2accu_data2 (mac_b2accu_dst_data2[175:0]) //|< w
  ,.mac_b2accu_data3 (mac_b2accu_dst_data3[175:0]) //|< w
  ,.mac_b2accu_data4 (mac_b2accu_dst_data4[175:0]) //|< w
  ,.mac_b2accu_data5 (mac_b2accu_dst_data5[175:0]) //|< w
  ,.mac_b2accu_data6 (mac_b2accu_dst_data6[175:0]) //|< w
  ,.mac_b2accu_data7 (mac_b2accu_dst_data7[175:0]) //|< w
  ,.mac_b2accu_pd (mac_b2accu_dst_pd[8:0]) //|< w
// accu2sdp |<> io
  ,.cacc2sdp_valid (cacc2sdp_valid) //|> o
  ,.cacc2sdp_ready (cacc2sdp_ready) //|< i
  ,.cacc2sdp_pd (cacc2sdp_pd[513:0]) //|> o
// accu2sc
  ,.accu2sc_credit_vld (accu2sc_credit_vld) //|> o
  ,.accu2sc_credit_size (accu2sc_credit_size[2:0]) //|> o
// other |> o
  ,.cacc2glb_done_intr_pd (cacc2glb_done_intr_src_pd[1:0]) //|> o
// clk info
  );

endmodule