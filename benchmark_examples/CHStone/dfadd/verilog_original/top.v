// ==============================================================
// RTL generated by Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC
// Version: 2018.3
// Copyright (C) 1986-2018 Xilinx, Inc. All Rights Reserved.
// 
// ===========================================================

`timescale 1 ns / 1 ps 

(* CORE_GENERATION_INFO="top,hls_ip_2018_3,{HLS_INPUT_TYPE=c,HLS_INPUT_FLOAT=0,HLS_INPUT_FIXED=0,HLS_INPUT_PART=xa7a12tcsg325-1q,HLS_INPUT_CLOCK=10.000000,HLS_INPUT_ARCH=others,HLS_SYN_CLOCK=8.009143,HLS_SYN_LAT=145,HLS_SYN_TPT=none,HLS_SYN_MEM=6,HLS_SYN_DSP=0,HLS_SYN_FF=1222,HLS_SYN_LUT=4596,HLS_VERSION=2018_3}" *)

module top (
        ap_clk,
        ap_rst,
        ap_start,
        ap_done,
        ap_idle,
        ap_ready,
        ap_return
);

parameter    ap_ST_fsm_state1 = 5'd1;
parameter    ap_ST_fsm_state2 = 5'd2;
parameter    ap_ST_fsm_state3 = 5'd4;
parameter    ap_ST_fsm_state4 = 5'd8;
parameter    ap_ST_fsm_state5 = 5'd16;

input   ap_clk;
input   ap_rst;
input   ap_start;
output   ap_done;
output   ap_idle;
output   ap_ready;
output  [31:0] ap_return;

reg ap_done;
reg ap_idle;
reg ap_ready;

(* fsm_encoding = "none" *) reg   [4:0] ap_CS_fsm;
wire    ap_CS_fsm_state1;
wire   [4:0] a_input_address0;
reg    a_input_ce0;
wire   [63:0] a_input_q0;
wire   [4:0] b_input_address0;
reg    b_input_ce0;
wire   [63:0] b_input_q0;
wire   [4:0] z_output_address0;
reg    z_output_ce0;
wire   [63:0] z_output_q0;
wire   [4:0] i_1_fu_111_p2;
reg   [4:0] i_1_reg_154;
wire    ap_CS_fsm_state2;
wire   [63:0] tmp_fu_117_p1;
reg   [63:0] tmp_reg_159;
wire   [0:0] exitcond_fu_105_p2;
reg   [63:0] x1_reg_174;
wire    ap_CS_fsm_state3;
reg   [63:0] x2_reg_179;
reg   [0:0] tmp_2_reg_184;
wire    ap_CS_fsm_state4;
wire   [4:0] main_result_1_fu_145_p2;
wire    ap_CS_fsm_state5;
wire    grp_addFloat64Sigs_fu_96_ap_ready;
wire    grp_addFloat64Sigs_fu_96_ap_done;
wire    grp_addFloat64Sigs_fu_96_ap_start;
wire    grp_addFloat64Sigs_fu_96_ap_idle;
wire   [63:0] grp_addFloat64Sigs_fu_96_ap_return;
reg   [4:0] i_reg_73;
reg   [4:0] main_result_reg_84;
reg    grp_addFloat64Sigs_fu_96_ap_start_reg;
wire   [0:0] tmp_1_fu_135_p2;
wire   [4:0] tmp_2_cast_fu_141_p1;
reg   [4:0] ap_NS_fsm;

// power-on initialization
initial begin
#0 ap_CS_fsm = 5'd1;
#0 grp_addFloat64Sigs_fu_96_ap_start_reg = 1'b0;
end

top_a_input #(
    .DataWidth( 64 ),
    .AddressRange( 24 ),
    .AddressWidth( 5 ))
a_input_U(
    .clk(ap_clk),
    .reset(ap_rst),
    .address0(a_input_address0),
    .ce0(a_input_ce0),
    .q0(a_input_q0)
);

top_b_input #(
    .DataWidth( 64 ),
    .AddressRange( 24 ),
    .AddressWidth( 5 ))
b_input_U(
    .clk(ap_clk),
    .reset(ap_rst),
    .address0(b_input_address0),
    .ce0(b_input_ce0),
    .q0(b_input_q0)
);

top_z_output #(
    .DataWidth( 64 ),
    .AddressRange( 24 ),
    .AddressWidth( 5 ))
z_output_U(
    .clk(ap_clk),
    .reset(ap_rst),
    .address0(z_output_address0),
    .ce0(z_output_ce0),
    .q0(z_output_q0)
);

addFloat64Sigs grp_addFloat64Sigs_fu_96(
    .ap_clk(ap_clk),
    .ap_rst(ap_rst),
    .ap_start(grp_addFloat64Sigs_fu_96_ap_start),
    .ap_done(grp_addFloat64Sigs_fu_96_ap_done),
    .ap_idle(grp_addFloat64Sigs_fu_96_ap_idle),
    .ap_ready(grp_addFloat64Sigs_fu_96_ap_ready),
    .a(x1_reg_174),
    .b(x2_reg_179),
    .zSign(tmp_2_reg_184),
    .ap_return(grp_addFloat64Sigs_fu_96_ap_return)
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
        grp_addFloat64Sigs_fu_96_ap_start_reg <= 1'b0;
    end else begin
        if ((1'b1 == ap_CS_fsm_state4)) begin
            grp_addFloat64Sigs_fu_96_ap_start_reg <= 1'b1;
        end else if ((grp_addFloat64Sigs_fu_96_ap_ready == 1'b1)) begin
            grp_addFloat64Sigs_fu_96_ap_start_reg <= 1'b0;
        end
    end
end

always @ (posedge ap_clk) begin
    if (((grp_addFloat64Sigs_fu_96_ap_done == 1'b1) & (1'b1 == ap_CS_fsm_state5))) begin
        i_reg_73 <= i_1_reg_154;
    end else if (((1'b1 == ap_CS_fsm_state1) & (ap_start == 1'b1))) begin
        i_reg_73 <= 5'd0;
    end
end

always @ (posedge ap_clk) begin
    if (((grp_addFloat64Sigs_fu_96_ap_done == 1'b1) & (1'b1 == ap_CS_fsm_state5))) begin
        main_result_reg_84 <= main_result_1_fu_145_p2;
    end else if (((1'b1 == ap_CS_fsm_state1) & (ap_start == 1'b1))) begin
        main_result_reg_84 <= 5'd0;
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state2)) begin
        i_1_reg_154 <= i_1_fu_111_p2;
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state3)) begin
        tmp_2_reg_184 <= a_input_q0[32'd63];
        x1_reg_174 <= a_input_q0;
        x2_reg_179 <= b_input_q0;
    end
end

always @ (posedge ap_clk) begin
    if (((exitcond_fu_105_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state2))) begin
        tmp_reg_159[4 : 0] <= tmp_fu_117_p1[4 : 0];
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state2)) begin
        a_input_ce0 = 1'b1;
    end else begin
        a_input_ce0 = 1'b0;
    end
end

always @ (*) begin
    if (((exitcond_fu_105_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state2))) begin
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
    if (((exitcond_fu_105_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state2))) begin
        ap_ready = 1'b1;
    end else begin
        ap_ready = 1'b0;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state2)) begin
        b_input_ce0 = 1'b1;
    end else begin
        b_input_ce0 = 1'b0;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        z_output_ce0 = 1'b1;
    end else begin
        z_output_ce0 = 1'b0;
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
            if (((exitcond_fu_105_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state2))) begin
                ap_NS_fsm = ap_ST_fsm_state1;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state3;
            end
        end
        ap_ST_fsm_state3 : begin
            ap_NS_fsm = ap_ST_fsm_state4;
        end
        ap_ST_fsm_state4 : begin
            ap_NS_fsm = ap_ST_fsm_state5;
        end
        ap_ST_fsm_state5 : begin
            if (((grp_addFloat64Sigs_fu_96_ap_done == 1'b1) & (1'b1 == ap_CS_fsm_state5))) begin
                ap_NS_fsm = ap_ST_fsm_state2;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state5;
            end
        end
        default : begin
            ap_NS_fsm = 'bx;
        end
    endcase
end

assign a_input_address0 = tmp_fu_117_p1;

assign ap_CS_fsm_state1 = ap_CS_fsm[32'd0];

assign ap_CS_fsm_state2 = ap_CS_fsm[32'd1];

assign ap_CS_fsm_state3 = ap_CS_fsm[32'd2];

assign ap_CS_fsm_state4 = ap_CS_fsm[32'd3];

assign ap_CS_fsm_state5 = ap_CS_fsm[32'd4];

assign ap_return = main_result_reg_84;

assign b_input_address0 = tmp_fu_117_p1;

assign exitcond_fu_105_p2 = ((i_reg_73 == 5'd24) ? 1'b1 : 1'b0);

assign grp_addFloat64Sigs_fu_96_ap_start = grp_addFloat64Sigs_fu_96_ap_start_reg;

assign i_1_fu_111_p2 = (i_reg_73 + 5'd1);

assign main_result_1_fu_145_p2 = (main_result_reg_84 + tmp_2_cast_fu_141_p1);

assign tmp_1_fu_135_p2 = ((grp_addFloat64Sigs_fu_96_ap_return != z_output_q0) ? 1'b1 : 1'b0);

assign tmp_2_cast_fu_141_p1 = tmp_1_fu_135_p2;

assign tmp_fu_117_p1 = i_reg_73;

assign z_output_address0 = tmp_reg_159;

always @ (posedge ap_clk) begin
    tmp_reg_159[63:5] <= 59'b00000000000000000000000000000000000000000000000000000000000;
end

endmodule //top
