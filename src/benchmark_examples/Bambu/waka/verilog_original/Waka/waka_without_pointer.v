// ==============================================================
// RTL generated by Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC
// Version: 2018.3
// Copyright (C) 1986-2018 Xilinx, Inc. All Rights Reserved.
// 
// ===========================================================

`timescale 1 ns / 1 ps 

(* CORE_GENERATION_INFO="hls_macc,hls_ip_2018_3,{HLS_INPUT_TYPE=c,HLS_INPUT_FLOAT=0,HLS_INPUT_FIXED=0,HLS_INPUT_PART=xa7a12tcsg325-1q,HLS_INPUT_CLOCK=10.000000,HLS_INPUT_ARCH=others,HLS_SYN_CLOCK=8.577000,HLS_SYN_LAT=3,HLS_SYN_TPT=none,HLS_SYN_MEM=0,HLS_SYN_DSP=0,HLS_SYN_FF=197,HLS_SYN_LUT=713,HLS_VERSION=2018_3}" *)

module hls_macc (
        ap_clk,
        ap_rst,
        ap_start,
        ap_done,
        ap_idle,
        ap_ready,
        in1,
        in2,
        in3,
        in4,
        in7,
        in8,
        in9,
        in10,
        in14,
        in12,
        in15,
        in17,
        in19,
        in20,
        in22,
        in24,
        in27,
        in28,
        in29,
        in32,
        out13,
        out30,
        out31,
        ap_return
);

parameter    ap_ST_fsm_state1 = 4'd1;
parameter    ap_ST_fsm_state2 = 4'd2;
parameter    ap_ST_fsm_state3 = 4'd4;
parameter    ap_ST_fsm_state4 = 4'd8;

input   ap_clk;
input   ap_rst;
input   ap_start;
output   ap_done;
output   ap_idle;
output   ap_ready;
input  [31:0] in1;
input  [31:0] in2;
input  [31:0] in3;
input  [31:0] in4;
input  [31:0] in7;
input  [31:0] in8;
input  [31:0] in9;
input  [31:0] in10;
input  [31:0] in14;
input  [31:0] in12;
input  [31:0] in15;
input  [31:0] in17;
input  [31:0] in19;
input  [31:0] in20;
input  [31:0] in22;
input  [31:0] in24;
input  [31:0] in27;
input  [31:0] in28;
input  [31:0] in29;
input  [31:0] in32;
input  [31:0] out13;
input  [31:0] out30;
input  [31:0] out31;
output  [31:0] ap_return;

reg ap_done;
reg ap_idle;
reg ap_ready;

(* fsm_encoding = "none" *) reg   [3:0] ap_CS_fsm;
wire    ap_CS_fsm_state1;
wire   [31:0] t11_fu_188_p2;
reg   [31:0] t11_reg_305;
wire   [31:0] t5_fu_194_p2;
reg   [31:0] t5_reg_311;
wire    ap_CS_fsm_state2;
wire   [31:0] t23_fu_206_p2;
reg   [31:0] t23_reg_316;
wire   [0:0] tmp_fu_211_p2;
reg   [0:0] tmp_reg_321;
wire    ap_CS_fsm_state3;
wire   [31:0] t16_fu_217_p2;
reg   [31:0] t16_reg_327;
wire   [31:0] t16_1_fu_258_p2;
reg   [31:0] t16_1_reg_332;
wire   [31:0] out30_assign_fu_264_p2;
reg   [31:0] out30_assign_reg_337;
wire    ap_CS_fsm_state4;
wire   [31:0] tmp1_fu_182_p2;
wire   [31:0] tmp2_fu_200_p2;
wire   [31:0] t25_fu_228_p2;
wire   [31:0] tmp3_fu_239_p2;
wire   [0:0] tmp_2_fu_222_p2;
wire   [31:0] t26_fu_233_p2;
wire   [31:0] t26_1_fu_245_p2;
wire   [31:0] t26_2_fu_250_p3;
wire   [31:0] out13_assign_fu_281_p2;
wire   [31:0] out30_assign_1_fu_270_p3;
wire   [31:0] t16_2_fu_276_p3;
wire   [31:0] tmp5_fu_293_p2;
wire   [31:0] tmp4_fu_287_p2;
reg   [3:0] ap_NS_fsm;

// power-on initialization
initial begin
#0 ap_CS_fsm = 4'd1;
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_CS_fsm <= ap_ST_fsm_state1;
    end else begin
        ap_CS_fsm <= ap_NS_fsm;
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state3)) begin
        out30_assign_reg_337 <= out30_assign_fu_264_p2;
        t16_1_reg_332 <= t16_1_fu_258_p2;
        t16_reg_327 <= t16_fu_217_p2;
        tmp_reg_321 <= tmp_fu_211_p2;
    end
end

always @ (posedge ap_clk) begin
    if (((ap_start == 1'b1) & (1'b1 == ap_CS_fsm_state1))) begin
        t11_reg_305 <= t11_fu_188_p2;
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state2)) begin
        t23_reg_316 <= t23_fu_206_p2;
        t5_reg_311 <= t5_fu_194_p2;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        ap_done = 1'b1;
    end else begin
        ap_done = 1'b0;
    end
end

always @ (*) begin
    if (((ap_start == 1'b0) & (1'b1 == ap_CS_fsm_state1))) begin
        ap_idle = 1'b1;
    end else begin
        ap_idle = 1'b0;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        ap_ready = 1'b1;
    end else begin
        ap_ready = 1'b0;
    end
end

always @ (*) begin
    case (ap_CS_fsm)
        ap_ST_fsm_state1 : begin
            if (((ap_start == 1'b1) & (1'b1 == ap_CS_fsm_state1))) begin
                ap_NS_fsm = ap_ST_fsm_state2;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state1;
            end
        end
        ap_ST_fsm_state2 : begin
            ap_NS_fsm = ap_ST_fsm_state3;
        end
        ap_ST_fsm_state3 : begin
            ap_NS_fsm = ap_ST_fsm_state4;
        end
        ap_ST_fsm_state4 : begin
            ap_NS_fsm = ap_ST_fsm_state1;
        end
        default : begin
            ap_NS_fsm = 'bx;
        end
    endcase
end

assign ap_CS_fsm_state1 = ap_CS_fsm[32'd0];

assign ap_CS_fsm_state2 = ap_CS_fsm[32'd1];

assign ap_CS_fsm_state3 = ap_CS_fsm[32'd2];

assign ap_CS_fsm_state4 = ap_CS_fsm[32'd3];

assign ap_return = (tmp5_fu_293_p2 + tmp4_fu_287_p2);

assign out13_assign_fu_281_p2 = (in14 - in15);

assign out30_assign_1_fu_270_p3 = ((tmp_reg_321_temp === 1'b1) ? out30 : out30_assign_reg_337);

assign tmp_reg_321_temp = tmp_reg_321 & 1'b1;

assign out30_assign_fu_264_p2 = (t26_2_fu_250_p3 + in29);

assign t11_fu_188_p2 = (tmp1_fu_182_p2 + in8);

assign t16_1_fu_258_p2 = (t26_2_fu_250_p3 - in28);

assign t16_2_fu_276_p3 = ((tmp_reg_321_temp === 1'b1) ? t16_reg_327 : t16_1_reg_332);

assign tmp_reg_321_temp = tmp_reg_321 & 1'b1;

assign t16_fu_217_p2 = (t11_reg_305 - in17);

assign t23_fu_206_p2 = (tmp2_fu_200_p2 + t11_reg_305);

assign t25_fu_228_p2 = (t23_reg_316 - in24);

assign t26_1_fu_245_p2 = (tmp3_fu_239_p2 + t5_reg_311);

assign t26_2_fu_250_p3 = ((tmp_2_fu_222_p2_temp === 1'b1) ? t26_fu_233_p2 : t26_1_fu_245_p2);

assign tmp_2_fu_222_p2_temp = tmp_2_fu_222_p2 & 1'b1;

assign t26_fu_233_p2 = (t25_fu_228_p2 + in27);

assign t5_fu_194_p2 = (in3 - in4);

assign tmp1_fu_182_p2 = (in7 + in12);

assign tmp2_fu_200_p2 = (t5_fu_194_p2 + in22);

assign tmp3_fu_239_p2 = (in19 + in20);

assign tmp4_fu_287_p2 = (out13_assign_fu_281_p2 + in32);

assign tmp5_fu_293_p2 = (out30_assign_1_fu_270_p3 + t16_2_fu_276_p3);

assign tmp_2_fu_222_p2 = (($signed(in9) < $signed(in10)) ? 1'b1 : 1'b0);

assign tmp_fu_211_p2 = ((in2 == in1) ? 1'b1 : 1'b0);

endmodule //hls_macc