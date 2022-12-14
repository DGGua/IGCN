// ==============================================================
// RTL generated by Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2022.1 (64-bit)
// Version: 2022.1
// Copyright (C) Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// 
// ===========================================================

`timescale 1 ns / 1 ps 

(* CORE_GENERATION_INFO="IGCN_IGCN,hls_ip_2022_1,{HLS_INPUT_TYPE=cxx,HLS_INPUT_FLOAT=0,HLS_INPUT_FIXED=0,HLS_INPUT_PART=xc7z045-ffv900-3,HLS_INPUT_CLOCK=10.000000,HLS_INPUT_ARCH=others,HLS_SYN_CLOCK=6.751000,HLS_SYN_LAT=-1,HLS_SYN_TPT=none,HLS_SYN_MEM=2,HLS_SYN_DSP=0,HLS_SYN_FF=96,HLS_SYN_LUT=320,HLS_VERSION=2022_1}" *)

module IGCN (
        ap_clk,
        ap_rst,
        ap_start,
        ap_done,
        ap_idle,
        ap_ready,
        test,
        size,
        output_r,
        output_r_ap_vld
);

parameter    ap_ST_fsm_state1 = 6'd1;
parameter    ap_ST_fsm_state2 = 6'd2;
parameter    ap_ST_fsm_state3 = 6'd4;
parameter    ap_ST_fsm_state4 = 6'd8;
parameter    ap_ST_fsm_state5 = 6'd16;
parameter    ap_ST_fsm_state6 = 6'd32;

input   ap_clk;
input   ap_rst;
input   ap_start;
output   ap_done;
output   ap_idle;
output   ap_ready;
input  [31:0] test;
input  [31:0] size;
output  [31:0] output_r;
output   output_r_ap_vld;

reg ap_done;
reg ap_idle;
reg ap_ready;

(* fsm_encoding = "none" *) reg   [5:0] ap_CS_fsm;
wire    ap_CS_fsm_state1;
wire   [30:0] trunc_ln12_fu_150_p1;
reg   [30:0] trunc_ln12_reg_270;
wire   [3:0] add_ln17_fu_174_p2;
reg   [3:0] add_ln17_reg_278;
wire    ap_CS_fsm_state3;
wire   [5:0] zext_ln16_fu_180_p1;
reg   [5:0] zext_ln16_reg_283;
wire   [0:0] icmp_ln16_fu_168_p2;
wire   [5:0] shl_ln_fu_184_p3;
reg   [5:0] shl_ln_reg_288;
wire   [63:0] zext_ln5_fu_195_p1;
reg   [63:0] zext_ln5_reg_293;
wire    ap_CS_fsm_state4;
wire   [5:0] add_ln5_fu_205_p2;
reg   [5:0] add_ln5_reg_301;
wire   [0:0] icmp_ln5_fu_199_p2;
reg   [5:0] testarr_address0;
reg    testarr_ce0;
reg    testarr_we0;
wire   [30:0] testarr_q0;
reg   [5:0] outputarr_address0;
reg    outputarr_ce0;
reg    outputarr_we0;
wire   [31:0] outputarr_d0;
wire   [31:0] outputarr_q0;
wire    grp_IGCN_Pipeline_VITIS_LOOP_12_1_fu_133_ap_start;
wire    grp_IGCN_Pipeline_VITIS_LOOP_12_1_fu_133_ap_done;
wire    grp_IGCN_Pipeline_VITIS_LOOP_12_1_fu_133_ap_idle;
wire    grp_IGCN_Pipeline_VITIS_LOOP_12_1_fu_133_ap_ready;
wire   [5:0] grp_IGCN_Pipeline_VITIS_LOOP_12_1_fu_133_testarr_address0;
wire    grp_IGCN_Pipeline_VITIS_LOOP_12_1_fu_133_testarr_ce0;
wire    grp_IGCN_Pipeline_VITIS_LOOP_12_1_fu_133_testarr_we0;
wire   [30:0] grp_IGCN_Pipeline_VITIS_LOOP_12_1_fu_133_testarr_d0;
wire    grp_IGCN_Pipeline_VITIS_LOOP_19_2_fu_142_ap_start;
wire    grp_IGCN_Pipeline_VITIS_LOOP_19_2_fu_142_ap_done;
wire    grp_IGCN_Pipeline_VITIS_LOOP_19_2_fu_142_ap_idle;
wire    grp_IGCN_Pipeline_VITIS_LOOP_19_2_fu_142_ap_ready;
wire   [5:0] grp_IGCN_Pipeline_VITIS_LOOP_19_2_fu_142_outputarr_address0;
wire    grp_IGCN_Pipeline_VITIS_LOOP_19_2_fu_142_outputarr_ce0;
wire   [31:0] grp_IGCN_Pipeline_VITIS_LOOP_19_2_fu_142_output_r;
wire    grp_IGCN_Pipeline_VITIS_LOOP_19_2_fu_142_output_r_ap_vld;
reg   [5:0] i_3_reg_122;
wire    ap_CS_fsm_state5;
reg    grp_IGCN_Pipeline_VITIS_LOOP_12_1_fu_133_ap_start_reg;
wire    ap_CS_fsm_state2;
reg    grp_IGCN_Pipeline_VITIS_LOOP_19_2_fu_142_ap_start_reg;
wire    ap_CS_fsm_state6;
wire   [63:0] zext_ln6_fu_221_p1;
reg   [5:0] indvars_iv16_fu_70;
wire   [5:0] add_ln16_fu_226_p2;
reg   [3:0] i_1_fu_74;
wire   [5:0] add_ln6_1_fu_211_p2;
wire   [5:0] add_ln6_fu_216_p2;
reg   [5:0] ap_NS_fsm;
reg    ap_ST_fsm_state1_blk;
reg    ap_ST_fsm_state2_blk;
wire    ap_ST_fsm_state3_blk;
wire    ap_ST_fsm_state4_blk;
wire    ap_ST_fsm_state5_blk;
reg    ap_ST_fsm_state6_blk;
wire    ap_ce_reg;

// power-on initialization
initial begin
#0 ap_CS_fsm = 6'd1;
#0 grp_IGCN_Pipeline_VITIS_LOOP_12_1_fu_133_ap_start_reg = 1'b0;
#0 grp_IGCN_Pipeline_VITIS_LOOP_19_2_fu_142_ap_start_reg = 1'b0;
end

IGCN_testarr_RAM_AUTO_1R1W #(
    .DataWidth( 31 ),
    .AddressRange( 50 ),
    .AddressWidth( 6 ))
testarr_U(
    .clk(ap_clk),
    .reset(ap_rst),
    .address0(testarr_address0),
    .ce0(testarr_ce0),
    .we0(testarr_we0),
    .d0(grp_IGCN_Pipeline_VITIS_LOOP_12_1_fu_133_testarr_d0),
    .q0(testarr_q0)
);

IGCN_outputarr_RAM_AUTO_1R1W #(
    .DataWidth( 32 ),
    .AddressRange( 50 ),
    .AddressWidth( 6 ))
outputarr_U(
    .clk(ap_clk),
    .reset(ap_rst),
    .address0(outputarr_address0),
    .ce0(outputarr_ce0),
    .we0(outputarr_we0),
    .d0(outputarr_d0),
    .q0(outputarr_q0)
);

IGCN_IGCN_Pipeline_VITIS_LOOP_12_1 grp_IGCN_Pipeline_VITIS_LOOP_12_1_fu_133(
    .ap_clk(ap_clk),
    .ap_rst(ap_rst),
    .ap_start(grp_IGCN_Pipeline_VITIS_LOOP_12_1_fu_133_ap_start),
    .ap_done(grp_IGCN_Pipeline_VITIS_LOOP_12_1_fu_133_ap_done),
    .ap_idle(grp_IGCN_Pipeline_VITIS_LOOP_12_1_fu_133_ap_idle),
    .ap_ready(grp_IGCN_Pipeline_VITIS_LOOP_12_1_fu_133_ap_ready),
    .size(size),
    .testarr_address0(grp_IGCN_Pipeline_VITIS_LOOP_12_1_fu_133_testarr_address0),
    .testarr_ce0(grp_IGCN_Pipeline_VITIS_LOOP_12_1_fu_133_testarr_ce0),
    .testarr_we0(grp_IGCN_Pipeline_VITIS_LOOP_12_1_fu_133_testarr_we0),
    .testarr_d0(grp_IGCN_Pipeline_VITIS_LOOP_12_1_fu_133_testarr_d0),
    .trunc_ln(trunc_ln12_reg_270)
);

IGCN_IGCN_Pipeline_VITIS_LOOP_19_2 grp_IGCN_Pipeline_VITIS_LOOP_19_2_fu_142(
    .ap_clk(ap_clk),
    .ap_rst(ap_rst),
    .ap_start(grp_IGCN_Pipeline_VITIS_LOOP_19_2_fu_142_ap_start),
    .ap_done(grp_IGCN_Pipeline_VITIS_LOOP_19_2_fu_142_ap_done),
    .ap_idle(grp_IGCN_Pipeline_VITIS_LOOP_19_2_fu_142_ap_idle),
    .ap_ready(grp_IGCN_Pipeline_VITIS_LOOP_19_2_fu_142_ap_ready),
    .size(size),
    .outputarr_address0(grp_IGCN_Pipeline_VITIS_LOOP_19_2_fu_142_outputarr_address0),
    .outputarr_ce0(grp_IGCN_Pipeline_VITIS_LOOP_19_2_fu_142_outputarr_ce0),
    .outputarr_q0(outputarr_q0),
    .output_r(grp_IGCN_Pipeline_VITIS_LOOP_19_2_fu_142_output_r),
    .output_r_ap_vld(grp_IGCN_Pipeline_VITIS_LOOP_19_2_fu_142_output_r_ap_vld)
);

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_CS_fsm <= ap_ST_fsm_state1;
    end else begin
        ap_CS_fsm <= ap_NS_fsm;
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        grp_IGCN_Pipeline_VITIS_LOOP_12_1_fu_133_ap_start_reg <= 1'b0;
    end else begin
        if (((1'b1 == ap_CS_fsm_state1) & (ap_start == 1'b1))) begin
            grp_IGCN_Pipeline_VITIS_LOOP_12_1_fu_133_ap_start_reg <= 1'b1;
        end else if ((grp_IGCN_Pipeline_VITIS_LOOP_12_1_fu_133_ap_ready == 1'b1)) begin
            grp_IGCN_Pipeline_VITIS_LOOP_12_1_fu_133_ap_start_reg <= 1'b0;
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        grp_IGCN_Pipeline_VITIS_LOOP_19_2_fu_142_ap_start_reg <= 1'b0;
    end else begin
        if (((icmp_ln16_fu_168_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state3))) begin
            grp_IGCN_Pipeline_VITIS_LOOP_19_2_fu_142_ap_start_reg <= 1'b1;
        end else if ((grp_IGCN_Pipeline_VITIS_LOOP_19_2_fu_142_ap_ready == 1'b1)) begin
            grp_IGCN_Pipeline_VITIS_LOOP_19_2_fu_142_ap_start_reg <= 1'b0;
        end
    end
end

always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_state1) & (ap_start == 1'b1))) begin
        i_1_fu_74 <= 4'd0;
    end else if (((icmp_ln5_fu_199_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state4))) begin
        i_1_fu_74 <= add_ln17_reg_278;
    end
end

always @ (posedge ap_clk) begin
    if (((icmp_ln16_fu_168_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state3))) begin
        i_3_reg_122 <= 6'd0;
    end else if ((1'b1 == ap_CS_fsm_state5)) begin
        i_3_reg_122 <= add_ln5_reg_301;
    end
end

always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_state1) & (ap_start == 1'b1))) begin
        indvars_iv16_fu_70 <= 6'd5;
    end else if (((icmp_ln5_fu_199_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state4))) begin
        indvars_iv16_fu_70 <= add_ln16_fu_226_p2;
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state3)) begin
        add_ln17_reg_278 <= add_ln17_fu_174_p2;
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        add_ln5_reg_301 <= add_ln5_fu_205_p2;
        zext_ln5_reg_293[5 : 0] <= zext_ln5_fu_195_p1[5 : 0];
    end
end

always @ (posedge ap_clk) begin
    if (((icmp_ln16_fu_168_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state3))) begin
        shl_ln_reg_288[5 : 2] <= shl_ln_fu_184_p3[5 : 2];
        zext_ln16_reg_283[3 : 0] <= zext_ln16_fu_180_p1[3 : 0];
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state1)) begin
        trunc_ln12_reg_270 <= trunc_ln12_fu_150_p1;
    end
end

always @ (*) begin
    if ((ap_start == 1'b0)) begin
        ap_ST_fsm_state1_blk = 1'b1;
    end else begin
        ap_ST_fsm_state1_blk = 1'b0;
    end
end

always @ (*) begin
    if ((grp_IGCN_Pipeline_VITIS_LOOP_12_1_fu_133_ap_done == 1'b0)) begin
        ap_ST_fsm_state2_blk = 1'b1;
    end else begin
        ap_ST_fsm_state2_blk = 1'b0;
    end
end

assign ap_ST_fsm_state3_blk = 1'b0;

assign ap_ST_fsm_state4_blk = 1'b0;

assign ap_ST_fsm_state5_blk = 1'b0;

always @ (*) begin
    if ((grp_IGCN_Pipeline_VITIS_LOOP_19_2_fu_142_ap_done == 1'b0)) begin
        ap_ST_fsm_state6_blk = 1'b1;
    end else begin
        ap_ST_fsm_state6_blk = 1'b0;
    end
end

always @ (*) begin
    if (((grp_IGCN_Pipeline_VITIS_LOOP_19_2_fu_142_ap_done == 1'b1) & (1'b1 == ap_CS_fsm_state6))) begin
        ap_done = 1'b1;
    end else begin
        ap_done = 1'b0;
    end
end

always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state1) & (ap_start == 1'b0))) begin
        ap_idle = 1'b1;
    end else begin
        ap_idle = 1'b0;
    end
end

always @ (*) begin
    if (((grp_IGCN_Pipeline_VITIS_LOOP_19_2_fu_142_ap_done == 1'b1) & (1'b1 == ap_CS_fsm_state6))) begin
        ap_ready = 1'b1;
    end else begin
        ap_ready = 1'b0;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state5)) begin
        outputarr_address0 = zext_ln5_reg_293;
    end else if ((1'b1 == ap_CS_fsm_state6)) begin
        outputarr_address0 = grp_IGCN_Pipeline_VITIS_LOOP_19_2_fu_142_outputarr_address0;
    end else begin
        outputarr_address0 = 'bx;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state5)) begin
        outputarr_ce0 = 1'b1;
    end else if ((1'b1 == ap_CS_fsm_state6)) begin
        outputarr_ce0 = grp_IGCN_Pipeline_VITIS_LOOP_19_2_fu_142_outputarr_ce0;
    end else begin
        outputarr_ce0 = 1'b0;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state5)) begin
        outputarr_we0 = 1'b1;
    end else begin
        outputarr_we0 = 1'b0;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        testarr_address0 = zext_ln6_fu_221_p1;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        testarr_address0 = grp_IGCN_Pipeline_VITIS_LOOP_12_1_fu_133_testarr_address0;
    end else begin
        testarr_address0 = 'bx;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        testarr_ce0 = 1'b1;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        testarr_ce0 = grp_IGCN_Pipeline_VITIS_LOOP_12_1_fu_133_testarr_ce0;
    end else begin
        testarr_ce0 = 1'b0;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state2)) begin
        testarr_we0 = grp_IGCN_Pipeline_VITIS_LOOP_12_1_fu_133_testarr_we0;
    end else begin
        testarr_we0 = 1'b0;
    end
end

always @ (*) begin
    case (ap_CS_fsm)
        ap_ST_fsm_state1 : begin
            if (((1'b1 == ap_CS_fsm_state1) & (ap_start == 1'b1))) begin
                ap_NS_fsm = ap_ST_fsm_state2;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state1;
            end
        end
        ap_ST_fsm_state2 : begin
            if (((grp_IGCN_Pipeline_VITIS_LOOP_12_1_fu_133_ap_done == 1'b1) & (1'b1 == ap_CS_fsm_state2))) begin
                ap_NS_fsm = ap_ST_fsm_state3;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state2;
            end
        end
        ap_ST_fsm_state3 : begin
            if (((icmp_ln16_fu_168_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state3))) begin
                ap_NS_fsm = ap_ST_fsm_state4;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state6;
            end
        end
        ap_ST_fsm_state4 : begin
            if (((icmp_ln5_fu_199_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state4))) begin
                ap_NS_fsm = ap_ST_fsm_state3;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state5;
            end
        end
        ap_ST_fsm_state5 : begin
            ap_NS_fsm = ap_ST_fsm_state4;
        end
        ap_ST_fsm_state6 : begin
            if (((grp_IGCN_Pipeline_VITIS_LOOP_19_2_fu_142_ap_done == 1'b1) & (1'b1 == ap_CS_fsm_state6))) begin
                ap_NS_fsm = ap_ST_fsm_state1;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state6;
            end
        end
        default : begin
            ap_NS_fsm = 'bx;
        end
    endcase
end

assign add_ln16_fu_226_p2 = (indvars_iv16_fu_70 + 6'd5);

assign add_ln17_fu_174_p2 = (i_1_fu_74 + 4'd1);

assign add_ln5_fu_205_p2 = (i_3_reg_122 + 6'd1);

assign add_ln6_1_fu_211_p2 = (zext_ln16_reg_283 + i_3_reg_122);

assign add_ln6_fu_216_p2 = (add_ln6_1_fu_211_p2 + shl_ln_reg_288);

assign ap_CS_fsm_state1 = ap_CS_fsm[32'd0];

assign ap_CS_fsm_state2 = ap_CS_fsm[32'd1];

assign ap_CS_fsm_state3 = ap_CS_fsm[32'd2];

assign ap_CS_fsm_state4 = ap_CS_fsm[32'd3];

assign ap_CS_fsm_state5 = ap_CS_fsm[32'd4];

assign ap_CS_fsm_state6 = ap_CS_fsm[32'd5];

assign grp_IGCN_Pipeline_VITIS_LOOP_12_1_fu_133_ap_start = grp_IGCN_Pipeline_VITIS_LOOP_12_1_fu_133_ap_start_reg;

assign grp_IGCN_Pipeline_VITIS_LOOP_19_2_fu_142_ap_start = grp_IGCN_Pipeline_VITIS_LOOP_19_2_fu_142_ap_start_reg;

assign icmp_ln16_fu_168_p2 = ((i_1_fu_74 == 4'd10) ? 1'b1 : 1'b0);

assign icmp_ln5_fu_199_p2 = ((i_3_reg_122 == indvars_iv16_fu_70) ? 1'b1 : 1'b0);

assign output_r = grp_IGCN_Pipeline_VITIS_LOOP_19_2_fu_142_output_r;

assign output_r_ap_vld = grp_IGCN_Pipeline_VITIS_LOOP_19_2_fu_142_output_r_ap_vld;

assign outputarr_d0 = {{testarr_q0}, {1'd0}};

assign shl_ln_fu_184_p3 = {{i_1_fu_74}, {2'd0}};

assign trunc_ln12_fu_150_p1 = test[30:0];

assign zext_ln16_fu_180_p1 = i_1_fu_74;

assign zext_ln5_fu_195_p1 = i_3_reg_122;

assign zext_ln6_fu_221_p1 = add_ln6_fu_216_p2;

always @ (posedge ap_clk) begin
    zext_ln16_reg_283[5:4] <= 2'b00;
    shl_ln_reg_288[1:0] <= 2'b00;
    zext_ln5_reg_293[63:6] <= 58'b0000000000000000000000000000000000000000000000000000000000;
end

endmodule //IGCN
