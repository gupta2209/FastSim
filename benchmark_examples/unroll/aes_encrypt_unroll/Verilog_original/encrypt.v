// ==============================================================
// RTL generated by Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC
// Version: 2017.2
// Copyright (C) 1986-2017 Xilinx, Inc. All Rights Reserved.
// 
// ===========================================================

`timescale 1 ns / 1 ps 

(* CORE_GENERATION_INFO="encrypt,hls_ip_2017_2,{HLS_INPUT_TYPE=c,HLS_INPUT_FLOAT=0,HLS_INPUT_FIXED=0,HLS_INPUT_PART=xc7z020clg484-1,HLS_INPUT_CLOCK=10.000000,HLS_INPUT_ARCH=others,HLS_SYN_CLOCK=8.588000,HLS_SYN_LAT=-1,HLS_SYN_TPT=none,HLS_SYN_MEM=12,HLS_SYN_DSP=0,HLS_SYN_FF=4401,HLS_SYN_LUT=5271}" *)

module encrypt (
        ap_clk,
        ap_rst,
        ap_start,
        ap_done,
        ap_idle,
        ap_ready,
        statemt_address0,
        statemt_ce0,
        statemt_we0,
        statemt_d0,
        statemt_q0,
        key_address0,
        key_ce0,
        key_q0,
        type_r,
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
output  [4:0] statemt_address0;
output   statemt_ce0;
output   statemt_we0;
output  [31:0] statemt_d0;
input  [31:0] statemt_q0;
output  [4:0] key_address0;
output   key_ce0;
input  [31:0] key_q0;
input  [31:0] type_r;
output  [31:0] ap_return;

reg ap_done;
reg ap_idle;
reg ap_ready;

(* fsm_encoding = "none" *) reg   [3:0] ap_CS_fsm;
wire    ap_CS_fsm_state1;
reg   [31:0] round_val;
wire   [31:0] type_read_read_fu_60_p2;
wire    grp_KeySchedule_fu_66_ap_start;
wire    grp_KeySchedule_fu_66_ap_done;
wire    grp_KeySchedule_fu_66_ap_idle;
wire    grp_KeySchedule_fu_66_ap_ready;
wire   [4:0] grp_KeySchedule_fu_66_key_address0;
wire    grp_KeySchedule_fu_66_key_ce0;
wire    grp_aes_func_call_fu_80_ap_start;
wire    grp_aes_func_call_fu_80_ap_done;
wire    grp_aes_func_call_fu_80_ap_idle;
wire    grp_aes_func_call_fu_80_ap_ready;
wire   [4:0] grp_aes_func_call_fu_80_statemt1_address0;
wire    grp_aes_func_call_fu_80_statemt1_ce0;
wire    grp_aes_func_call_fu_80_statemt1_we0;
wire   [31:0] grp_aes_func_call_fu_80_statemt1_d0;
reg    ap_reg_grp_KeySchedule_fu_66_ap_start;
wire    ap_CS_fsm_state2;
reg    ap_reg_grp_aes_func_call_fu_80_ap_start;
wire    ap_CS_fsm_state3;
wire    ap_CS_fsm_state4;
reg   [3:0] ap_NS_fsm;

// power-on initialization
initial begin
#0 ap_CS_fsm = 4'd1;
#0 round_val = 32'd0;
#0 ap_reg_grp_KeySchedule_fu_66_ap_start = 1'b0;
#0 ap_reg_grp_aes_func_call_fu_80_ap_start = 1'b0;
end

KeySchedule grp_KeySchedule_fu_66(
    .ap_clk(ap_clk),
    .ap_rst(ap_rst),
    .ap_start(grp_KeySchedule_fu_66_ap_start),
    .ap_done(grp_KeySchedule_fu_66_ap_done),
    .ap_idle(grp_KeySchedule_fu_66_ap_idle),
    .ap_ready(grp_KeySchedule_fu_66_ap_ready),
    .type_r(type_r),
    .key_address0(grp_KeySchedule_fu_66_key_address0),
    .key_ce0(grp_KeySchedule_fu_66_key_ce0),
    .key_q0(key_q0)
);

aes_func_call grp_aes_func_call_fu_80(
    .ap_clk(ap_clk),
    .ap_rst(ap_rst),
    .ap_start(grp_aes_func_call_fu_80_ap_start),
    .ap_done(grp_aes_func_call_fu_80_ap_done),
    .ap_idle(grp_aes_func_call_fu_80_ap_idle),
    .ap_ready(grp_aes_func_call_fu_80_ap_ready),
    .statemt1_address0(grp_aes_func_call_fu_80_statemt1_address0),
    .statemt1_ce0(grp_aes_func_call_fu_80_statemt1_ce0),
    .statemt1_we0(grp_aes_func_call_fu_80_statemt1_we0),
    .statemt1_d0(grp_aes_func_call_fu_80_statemt1_d0),
    .statemt1_q0(statemt_q0),
    .round_val(round_val)
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
        ap_reg_grp_KeySchedule_fu_66_ap_start <= 1'b0;
    end else begin
        if (((1'b1 == ap_CS_fsm_state1) & (ap_start == 1'b1))) begin
            ap_reg_grp_KeySchedule_fu_66_ap_start <= 1'b1;
        end else if ((1'b1 == grp_KeySchedule_fu_66_ap_ready)) begin
            ap_reg_grp_KeySchedule_fu_66_ap_start <= 1'b0;
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_reg_grp_aes_func_call_fu_80_ap_start <= 1'b0;
    end else begin
        if ((1'b1 == ap_CS_fsm_state3)) begin
            ap_reg_grp_aes_func_call_fu_80_ap_start <= 1'b1;
        end else if ((1'b1 == grp_aes_func_call_fu_80_ap_ready)) begin
            ap_reg_grp_aes_func_call_fu_80_ap_start <= 1'b0;
        end
    end
end

always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_state2) & (grp_KeySchedule_fu_66_ap_done == 1'b1) & (type_read_read_fu_60_p2 == 32'd128128))) begin
                round_val[1] <= 1'b0;
        round_val[2] <= 1'b0;
    end else if ((((1'b1 == ap_CS_fsm_state2) & (grp_KeySchedule_fu_66_ap_done == 1'b1) & ((type_read_read_fu_60_p2 == 32'd128192) | (type_read_read_fu_60_p2 == 32'd192192))) | ((1'b1 == ap_CS_fsm_state2) & (grp_KeySchedule_fu_66_ap_done == 1'b1) & (type_read_read_fu_60_p2 == 32'd192128)))) begin
                round_val[1] <= 1'b1;
        round_val[2] <= 1'b0;
    end else if ((((1'b1 == ap_CS_fsm_state2) & (grp_KeySchedule_fu_66_ap_done == 1'b1) & ((type_read_read_fu_60_p2 == 32'd128256) | (type_read_read_fu_60_p2 == 32'd192256) | (type_read_read_fu_60_p2 == 32'd256256))) | ((1'b1 == ap_CS_fsm_state2) & (grp_KeySchedule_fu_66_ap_done == 1'b1) & (type_read_read_fu_60_p2 == 32'd256192)) | ((1'b1 == ap_CS_fsm_state2) & (grp_KeySchedule_fu_66_ap_done == 1'b1) & (type_read_read_fu_60_p2 == 32'd256128)))) begin
                round_val[1] <= 1'b0;
        round_val[2] <= 1'b1;
    end
end

always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state4) & (grp_aes_func_call_fu_80_ap_done == 1'b1))) begin
        ap_done = 1'b1;
    end else begin
        ap_done = 1'b0;
    end
end

always @ (*) begin
    if (((1'b0 == ap_start) & (1'b1 == ap_CS_fsm_state1))) begin
        ap_idle = 1'b1;
    end else begin
        ap_idle = 1'b0;
    end
end

always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state4) & (grp_aes_func_call_fu_80_ap_done == 1'b1))) begin
        ap_ready = 1'b1;
    end else begin
        ap_ready = 1'b0;
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
            if (((1'b1 == ap_CS_fsm_state2) & (grp_KeySchedule_fu_66_ap_done == 1'b1))) begin
                ap_NS_fsm = ap_ST_fsm_state3;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state2;
            end
        end
        ap_ST_fsm_state3 : begin
            ap_NS_fsm = ap_ST_fsm_state4;
        end
        ap_ST_fsm_state4 : begin
            if (((1'b1 == ap_CS_fsm_state4) & (grp_aes_func_call_fu_80_ap_done == 1'b1))) begin
                ap_NS_fsm = ap_ST_fsm_state1;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state4;
            end
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

assign ap_return = 32'd0;

assign grp_KeySchedule_fu_66_ap_start = ap_reg_grp_KeySchedule_fu_66_ap_start;

assign grp_aes_func_call_fu_80_ap_start = ap_reg_grp_aes_func_call_fu_80_ap_start;

assign key_address0 = grp_KeySchedule_fu_66_key_address0;

assign key_ce0 = grp_KeySchedule_fu_66_key_ce0;

assign statemt_address0 = grp_aes_func_call_fu_80_statemt1_address0;

assign statemt_ce0 = grp_aes_func_call_fu_80_statemt1_ce0;

assign statemt_d0 = grp_aes_func_call_fu_80_statemt1_d0;

assign statemt_we0 = grp_aes_func_call_fu_80_statemt1_we0;

assign type_read_read_fu_60_p2 = type_r;

always @ (posedge ap_clk) begin
    round_val[0] <= 1'b0;
    round_val[31:3] <= 29'b00000000000000000000000000000;
end

endmodule //encrypt
