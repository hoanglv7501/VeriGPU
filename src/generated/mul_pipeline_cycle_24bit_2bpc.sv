// This is a GENERATED file. Do not modify by hand.
// Created by verigpu/generation/mul_pipeline_cycle.py
package mul_pipeline_24;
task mul_pipeline_cycle_24bit_2bpc(
    input [5:0] pos,
    input [23:0] a,
    input [23:0] b,
    input [4:0] cin,
    output reg [1:0] sum,
    output reg [4:0] cout
);
    reg rst;
    reg [47:0] a_;

    reg carry_0;
    reg sum_1;
    reg carry_2;
    reg sum_3;
    reg carry_4;
    reg sum_5;
    reg carry_6;
    reg sum_7;
    reg carry_8;
    reg sum_9;
    reg carry_10;
    reg sum_11;
    reg carry_12;
    reg sum_13;
    reg carry_14;
    reg sum_15;
    reg carry_16;
    reg sum_17;
    reg carry_18;
    reg sum_19;
    reg carry_20;
    reg sum_21;
    reg carry_22;
    reg sum_23;
    reg carry_24;
    reg sum_25;
    reg carry_26;
    reg sum_27;
    reg carry_28;
    reg sum_29;
    reg carry_30;
    reg sum_31;
    reg carry_32;
    reg sum_33;
    reg carry_34;
    reg sum_35;
    reg carry_36;
    reg sum_37;
    reg carry_38;
    reg sum_39;
    reg carry_40;
    reg sum_41;
    reg carry_42;
    reg sum_43;
    reg carry_44;
    reg sum_45;
    reg carry_46;
    reg sum_47;
    reg carry_48;
    reg sum_49;
    reg carry_50;
    reg sum_51;
    reg carry_52;
    reg sum_53;
    reg carry_54;
    reg sum_55;
    reg carry_56;
    reg sum_57;
    reg carry_58;
    reg sum_59;
    reg carry_60;
    reg sum_61;
    reg carry_62;
    reg sum_63;
    reg carry_64;
    reg sum_65;
    reg carry_66;
    reg sum_67;
    reg carry_68;
    reg sum_69;
    reg carry_70;
    reg sum_71;
    reg carry_72;
    reg sum_73;
    reg carry_74;
    reg sum_75;
    reg carry_76;
    reg sum_77;
    reg carry_78;
    reg sum_79;
    reg carry_80;
    reg sum_81;
    reg carry_82;
    reg sum_83;
    reg carry_84;
    reg sum_85;
    reg carry_86;
    reg sum_87;
    reg carry_88;
    reg sum_89;
    reg carry_90;
    reg sum_91;
    reg carry_92;
    reg sum_93;
    reg carry_94;
    reg sum_95;
    reg carry_96;
    reg sum_97;
    reg carry_98;
    reg sum_99;
    reg carry_100;
    reg sum_101;
    reg carry_102;
    reg sum_103;
    reg carry_104;
    reg sum_105;
    reg carry_106;
    reg sum_107;
    rst = 0;

        a_ = { a, { 24 {1'b0} } };
        a_ = a_ >> pos;
    
    { carry_0, sum_1 } = { 1'b0, (b[23] & a_[1]) } + { 1'b0, (b[22] & a_[2]) } + { 1'b0, (b[21] & a_[3]) };
    { carry_2, sum_3 } = { 1'b0, (b[20] & a_[4]) } + { 1'b0, (b[19] & a_[5]) } + { 1'b0, (b[18] & a_[6]) };
    { carry_4, sum_5 } = { 1'b0, (b[17] & a_[7]) } + { 1'b0, (b[16] & a_[8]) } + { 1'b0, (b[15] & a_[9]) };
    { carry_6, sum_7 } = { 1'b0, (b[14] & a_[10]) } + { 1'b0, (b[13] & a_[11]) } + { 1'b0, (b[12] & a_[12]) };
    { carry_8, sum_9 } = { 1'b0, (b[11] & a_[13]) } + { 1'b0, (b[10] & a_[14]) } + { 1'b0, (b[9] & a_[15]) };
    { carry_10, sum_11 } = { 1'b0, (b[8] & a_[16]) } + { 1'b0, (b[7] & a_[17]) } + { 1'b0, (b[6] & a_[18]) };
    { carry_12, sum_13 } = { 1'b0, (b[5] & a_[19]) } + { 1'b0, (b[4] & a_[20]) } + { 1'b0, (b[3] & a_[21]) };
    { carry_14, sum_15 } = { 1'b0, (b[2] & a_[22]) } + { 1'b0, (b[1] & a_[23]) } + { 1'b0, (b[0] & a_[24]) };
    { carry_16, sum_17 } = { 1'b0, (b[23] & a_[2]) } + { 1'b0, (b[22] & a_[3]) } + { 1'b0, (b[21] & a_[4]) };
    { carry_18, sum_19 } = { 1'b0, (b[20] & a_[5]) } + { 1'b0, (b[19] & a_[6]) } + { 1'b0, (b[18] & a_[7]) };
    { carry_20, sum_21 } = { 1'b0, (b[17] & a_[8]) } + { 1'b0, (b[16] & a_[9]) } + { 1'b0, (b[15] & a_[10]) };
    { carry_22, sum_23 } = { 1'b0, (b[14] & a_[11]) } + { 1'b0, (b[13] & a_[12]) } + { 1'b0, (b[12] & a_[13]) };
    { carry_24, sum_25 } = { 1'b0, (b[11] & a_[14]) } + { 1'b0, (b[10] & a_[15]) } + { 1'b0, (b[9] & a_[16]) };
    { carry_26, sum_27 } = { 1'b0, (b[8] & a_[17]) } + { 1'b0, (b[7] & a_[18]) } + { 1'b0, (b[6] & a_[19]) };
    { carry_28, sum_29 } = { 1'b0, (b[5] & a_[20]) } + { 1'b0, (b[4] & a_[21]) } + { 1'b0, (b[3] & a_[22]) };
    { carry_30, sum_31 } = { 1'b0, (b[2] & a_[23]) } + { 1'b0, (b[1] & a_[24]) } + { 1'b0, (b[0] & a_[25]) };
    { carry_32, sum_33 } = { 1'b0, cin[0] } + { 1'b0, sum_1 } + { 1'b0, sum_3 };
    { carry_34, sum_35 } = { 1'b0, sum_5 } + { 1'b0, sum_7 } + { 1'b0, sum_9 };
    { carry_36, sum_37 } = { 1'b0, sum_11 } + { 1'b0, sum_13 } + { 1'b0, sum_15 };
    { carry_38, sum_39 } = { 1'b0, cin[1] } + { 1'b0, carry_0 } + { 1'b0, carry_2 };
    { carry_40, sum_41 } = { 1'b0, carry_4 } + { 1'b0, carry_6 } + { 1'b0, carry_8 };
    { carry_42, sum_43 } = { 1'b0, carry_10 } + { 1'b0, carry_12 } + { 1'b0, carry_14 };
    { carry_44, sum_45 } = { 1'b0, sum_17 } + { 1'b0, sum_19 } + { 1'b0, sum_21 };
    { carry_46, sum_47 } = { 1'b0, sum_23 } + { 1'b0, sum_25 } + { 1'b0, sum_27 };
    { carry_48, sum_49 } = sum_29 + sum_31;
    { carry_50, sum_51 } = { 1'b0, cin[2] } + { 1'b0, carry_16 } + { 1'b0, carry_18 };
    { carry_52, sum_53 } = { 1'b0, carry_20 } + { 1'b0, carry_22 } + { 1'b0, carry_24 };
    { carry_54, sum_55 } = { 1'b0, carry_26 } + { 1'b0, carry_28 } + { 1'b0, carry_30 };
    { carry_56, sum_57 } = { 1'b0, sum_33 } + { 1'b0, sum_35 } + { 1'b0, sum_37 };
    { carry_58, sum_59 } = { 1'b0, carry_32 } + { 1'b0, carry_34 } + { 1'b0, carry_36 };
    { carry_60, sum_61 } = { 1'b0, sum_39 } + { 1'b0, sum_41 } + { 1'b0, sum_43 };
    { carry_62, sum_63 } = { 1'b0, sum_45 } + { 1'b0, sum_47 } + { 1'b0, sum_49 };
    { carry_64, sum_65 } = { 1'b0, carry_38 } + { 1'b0, carry_40 } + { 1'b0, carry_42 };
    { carry_66, sum_67 } = { 1'b0, carry_44 } + { 1'b0, carry_46 } + { 1'b0, carry_48 };
    { carry_68, sum_69 } = { 1'b0, sum_51 } + { 1'b0, sum_53 } + { 1'b0, sum_55 };
    { carry_70, sum_71 } = { 1'b0, cin[3] } + { 1'b0, carry_50 } + { 1'b0, carry_52 };
    { carry_72, sum_73 } = { 1'b0, carry_56 } + { 1'b0, sum_59 } + { 1'b0, sum_61 };
    { carry_74, sum_75 } = { 1'b0, carry_58 } + { 1'b0, carry_60 } + { 1'b0, carry_62 };
    { carry_76, sum_77 } = { 1'b0, sum_65 } + { 1'b0, sum_67 } + { 1'b0, sum_69 };
    { carry_78, sum_79 } = { 1'b0, carry_54 } + { 1'b0, carry_64 } + { 1'b0, carry_66 };
    { carry_80, sum_81 } = carry_68 + sum_71;
    { carry_82, sum_83 } = cin[4] + carry_70;
    { carry_84, sum_85 } = sum_63 + sum_73;
    { carry_86, sum_87 } = { 1'b0, carry_72 } + { 1'b0, sum_75 } + { 1'b0, sum_77 };
    { carry_88, sum_89 } = { 1'b0, carry_74 } + { 1'b0, carry_76 } + { 1'b0, sum_79 };
    { carry_90, sum_91 } = { 1'b0, carry_78 } + { 1'b0, carry_80 } + { 1'b0, sum_83 };
    { carry_92, sum_93 } = carry_84 + sum_87;
    { carry_94, sum_95 } = { 1'b0, sum_81 } + { 1'b0, carry_86 } + { 1'b0, sum_89 };
    { carry_96, sum_97 } = carry_88 + sum_91;
    { carry_98, sum_99 } = carry_82 + carry_90;
    { carry_100, sum_101 } = carry_92 + sum_95;
    { carry_102, sum_103 } = { 1'b0, carry_94 } + { 1'b0, sum_97 } + { 1'b0, carry_100 };
    { carry_104, sum_105 } = { 1'b0, carry_96 } + { 1'b0, sum_99 } + { 1'b0, carry_102 };
    { carry_106, sum_107 } = carry_98 + carry_104;
    { cout, sum } = {sum_107, sum_105, sum_103, sum_101, sum_93, sum_85, sum_57};
endtask
endpackage 