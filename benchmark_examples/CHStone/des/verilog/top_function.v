// ==============================================================
// RTL generated by Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC
// Version: 2018.3
// Copyright (C) 1986-2018 Xilinx, Inc. All Rights Reserved.
// 
// ===========================================================

`timescale 1 ns / 1 ps 

(* CORE_GENERATION_INFO="top_function,hls_ip_2018_3,{HLS_INPUT_TYPE=c,HLS_INPUT_FLOAT=0,HLS_INPUT_FIXED=0,HLS_INPUT_PART=xa7a12tcsg325-1q,HLS_INPUT_CLOCK=10.000000,HLS_INPUT_ARCH=others,HLS_SYN_CLOCK=8.583500,HLS_SYN_LAT=-1,HLS_SYN_TPT=none,HLS_SYN_MEM=3,HLS_SYN_DSP=0,HLS_SYN_FF=1644,HLS_SYN_LUT=2747,HLS_VERSION=2018_3}" *)

module top_function (
        ap_clk,
        ap_rst,
        ap_start,
        ap_done,
        ap_idle,
        ap_ready
);

parameter    ap_ST_fsm_state1 = 9'd1;
parameter    ap_ST_fsm_state2 = 9'd2;
parameter    ap_ST_fsm_state3 = 9'd4;
parameter    ap_ST_fsm_state4 = 9'd8;
parameter    ap_ST_fsm_state5 = 9'd16;
parameter    ap_ST_fsm_state6 = 9'd32;
parameter    ap_ST_fsm_state7 = 9'd64;
parameter    ap_ST_fsm_state8 = 9'd128;
parameter    ap_ST_fsm_state9 = 9'd256;

input   ap_clk;
input   ap_rst;
input   ap_start;
output   ap_done;
output   ap_idle;
output   ap_ready;

reg ap_done;
reg ap_idle;
reg ap_ready;

(* fsm_encoding = "none" *) reg   [8:0] ap_CS_fsm;
wire    ap_CS_fsm_state1;
wire   [5:0] IP_address0;
reg    IP_ce0;
wire   [6:0] IP_q0;
wire   [5:0] PC1_address0;
reg    PC1_ce0;
wire   [5:0] PC1_q0;
wire   [4:0] i_1_fu_189_p2;
reg   [4:0] i_1_reg_326;
wire    ap_CS_fsm_state2;
wire   [6:0] i_2_fu_201_p2;
reg   [6:0] i_2_reg_334;
wire    ap_CS_fsm_state3;
wire   [0:0] exitcond_i_fu_195_p2;
wire   [62:0] tmp_1_fu_212_p1;
reg   [62:0] tmp_1_reg_344;
reg   [31:0] L1_reg_349;
wire   [31:0] R1_fu_226_p1;
reg   [31:0] R1_reg_354;
reg   [6:0] IP_load_reg_359;
wire    ap_CS_fsm_state4;
wire   [63:0] init_perm_res_fu_249_p3;
wire    ap_CS_fsm_state5;
wire   [5:0] i_3_fu_262_p2;
reg   [5:0] i_3_reg_372;
wire    ap_CS_fsm_state6;
wire   [0:0] exitcond_i_i_fu_256_p2;
wire   [62:0] tmp_4_fu_273_p1;
reg   [62:0] tmp_4_reg_382;
reg   [27:0] C_assign_reg_387;
wire   [27:0] tmp_2_fu_288_p1;
reg   [27:0] tmp_2_reg_392;
reg   [5:0] PC1_load_reg_397;
wire    ap_CS_fsm_state7;
wire   [63:0] permuted_choice_1_fu_316_p3;
wire    ap_CS_fsm_state8;
wire   [63:0] grp_shiftingcidi_fu_161_ap_return;
wire    ap_CS_fsm_state9;
wire    grp_shiftingcidi_fu_161_ap_ready;
wire    grp_shiftingcidi_fu_161_ap_done;
wire    grp_shiftingcidi_fu_161_ap_start;
wire    grp_shiftingcidi_fu_161_ap_idle;
reg   [63:0] input_assign_reg_94;
reg   [4:0] i_reg_106;
reg   [6:0] i_i_reg_117;
wire   [0:0] exitcond_fu_183_p2;
reg   [63:0] init_perm_res_i_reg_128;
reg   [5:0] i_i_i_reg_139;
reg   [63:0] permuted_choice_1_i_s_reg_150;
reg    grp_shiftingcidi_fu_161_ap_start_reg;
wire   [63:0] tmp_34_i_fu_207_p1;
wire   [63:0] tmp_24_i_i_fu_268_p1;
wire   [6:0] tmp_36_i_fu_230_p2;
wire   [63:0] tmp_37_i_fu_235_p1;
wire   [63:0] tmp_38_i_fu_239_p2;
wire   [0:0] tmp_fu_245_p1;
wire   [6:0] tmp_25_i_i_cast_fu_293_p1;
wire   [6:0] tmp_26_i_i_fu_296_p2;
wire   [63:0] tmp_27_i_i_fu_302_p1;
wire   [63:0] tmp_28_i_i_fu_306_p2;
wire   [0:0] tmp_3_fu_312_p1;
reg   [8:0] ap_NS_fsm;

// power-on initialization
initial begin
#0 ap_CS_fsm = 9'd1;
#0 grp_shiftingcidi_fu_161_ap_start_reg = 1'b0;
end

top_function_IP #(
    .DataWidth( 7 ),
    .AddressRange( 64 ),
    .AddressWidth( 6 ))
IP_U(
    .clk(ap_clk),
    .reset(ap_rst),
    .address0(IP_address0),
    .ce0(IP_ce0),
    .q0(IP_q0)
);

top_function_PC1 #(
    .DataWidth( 6 ),
    .AddressRange( 56 ),
    .AddressWidth( 6 ))
PC1_U(
    .clk(ap_clk),
    .reset(ap_rst),
    .address0(PC1_address0),
    .ce0(PC1_ce0),
    .q0(PC1_q0)
);

shiftingcidi grp_shiftingcidi_fu_161(
    .ap_clk(ap_clk),
    .ap_rst(ap_rst),
    .ap_start(grp_shiftingcidi_fu_161_ap_start),
    .ap_done(grp_shiftingcidi_fu_161_ap_done),
    .ap_idle(grp_shiftingcidi_fu_161_ap_idle),
    .ap_ready(grp_shiftingcidi_fu_161_ap_ready),
    .C(C_assign_reg_387),
    .D(tmp_2_reg_392),
    .L(L1_reg_349),
    .R(R1_reg_354),
    .ap_return(grp_shiftingcidi_fu_161_ap_return)
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
        grp_shiftingcidi_fu_161_ap_start_reg <= 1'b0;
    end else if (((exitcond_i_i_fu_256_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state6))) begin
            grp_shiftingcidi_fu_161_ap_start_reg <= 1'b1;
        end else if ((grp_shiftingcidi_fu_161_ap_ready == 1'b1)) begin
            grp_shiftingcidi_fu_161_ap_start_reg <= 1'b0;
        end
    
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state8)) begin
        i_i_i_reg_139 <= i_3_reg_372;
    end else if (((exitcond_i_fu_195_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state3))) begin
        i_i_i_reg_139 <= 6'd0;
    end
end

always @ (posedge ap_clk) begin
    if (((exitcond_fu_183_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state2))) begin
        i_i_reg_117 <= 7'd0;
    end else if ((1'b1 == ap_CS_fsm_state5)) begin
        i_i_reg_117 <= i_2_reg_334;
    end
end

always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_state9) & (grp_shiftingcidi_fu_161_ap_done == 1'b1))) begin
        i_reg_106 <= i_1_reg_326;
    end else if (((1'b1 == ap_CS_fsm_state1) & (ap_start == 1'b1))) begin
        i_reg_106 <= 5'd0;
    end
end

always @ (posedge ap_clk) begin
    if (((exitcond_fu_183_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state2))) begin
        init_perm_res_i_reg_128 <= 64'd0;
    end else if ((1'b1 == ap_CS_fsm_state5)) begin
        init_perm_res_i_reg_128 <= init_perm_res_fu_249_p3;
    end
end

always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_state9) & (grp_shiftingcidi_fu_161_ap_done == 1'b1))) begin
        input_assign_reg_94 <= grp_shiftingcidi_fu_161_ap_return;
    end else if (((1'b1 == ap_CS_fsm_state1) & (ap_start == 1'b1))) begin
        input_assign_reg_94 <= 64'd10697378324826278525;
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state8)) begin
        permuted_choice_1_i_s_reg_150 <= permuted_choice_1_fu_316_p3;
    end else if (((exitcond_i_fu_195_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state3))) begin
        permuted_choice_1_i_s_reg_150 <= 64'd0;
    end
end

always @ (posedge ap_clk) begin
    if (((exitcond_i_i_fu_256_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state6))) begin
        //C_assign_reg_387 <= {{permuted_choice_1_i_s_reg_150[55:28]}};
	C_assign_reg_387 <= permuted_choice_1_i_s_reg_150_temp;
        tmp_2_reg_392 <= tmp_2_fu_288_p1;
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        IP_load_reg_359 <= IP_q0;
    end
end

always @ (posedge ap_clk) begin
    if (((exitcond_i_fu_195_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state3))) begin
        //L1_reg_349 <= {{init_perm_res_i_reg_128[63:32]}};
	L1_reg_349 <= init_perm_res_i_reg_128_temp12;
        R1_reg_354 <= R1_fu_226_p1;
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state7)) begin
        PC1_load_reg_397 <= PC1_q0;
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state2)) begin
        i_1_reg_326 <= i_1_fu_189_p2;
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state3)) begin
        i_2_reg_334 <= i_2_fu_201_p2;
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        i_3_reg_372 <= i_3_fu_262_p2;
    end
end

always @ (posedge ap_clk) begin
    if (((exitcond_i_fu_195_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state3))) begin
        tmp_1_reg_344 <= tmp_1_fu_212_p1;
    end
end

always @ (posedge ap_clk) begin
    if (((exitcond_i_i_fu_256_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state6))) begin
        tmp_4_reg_382 <= tmp_4_fu_273_p1;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state3)) begin
        IP_ce0 = 1'b1;
    end else begin
        IP_ce0 = 1'b0;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        PC1_ce0 = 1'b1;
    end else begin
        PC1_ce0 = 1'b0;
    end
end

always @ (*) begin
    if (((exitcond_fu_183_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state2))) begin
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
    if (((exitcond_fu_183_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state2))) begin
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
            if (((exitcond_fu_183_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state2))) begin
                ap_NS_fsm = ap_ST_fsm_state1;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state3;
            end
        end
        ap_ST_fsm_state3 : begin
            if (((exitcond_i_fu_195_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state3))) begin
                ap_NS_fsm = ap_ST_fsm_state6;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state4;
            end
        end
        ap_ST_fsm_state4 : begin
            ap_NS_fsm = ap_ST_fsm_state5;
        end
        ap_ST_fsm_state5 : begin
            ap_NS_fsm = ap_ST_fsm_state3;
        end
        ap_ST_fsm_state6 : begin
            if (((exitcond_i_i_fu_256_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state6))) begin
                ap_NS_fsm = ap_ST_fsm_state9;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state7;
            end
        end
        ap_ST_fsm_state7 : begin
            ap_NS_fsm = ap_ST_fsm_state8;
        end
        ap_ST_fsm_state8 : begin
            ap_NS_fsm = ap_ST_fsm_state6;
        end
        ap_ST_fsm_state9 : begin
            if (((1'b1 == ap_CS_fsm_state9) & (grp_shiftingcidi_fu_161_ap_done == 1'b1))) begin
                ap_NS_fsm = ap_ST_fsm_state2;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state9;
            end
        end
        default : begin
            ap_NS_fsm = 'bx;
        end
    endcase
end

assign init_perm_res_i_reg_128_temp12 = init_perm_res_i_reg_128_temp1 & 1'd4294967295;

assign init_perm_res_i_reg_128_temp1 = init_perm_res_i_reg_128 >> 1'd32; 

assign permuted_choice_1_i_s_reg_150_temp = permuted_choice_1_i_s_reg_150_temp1 >> 1'd28;

assign permuted_choice_1_i_s_reg_150_temp1 = permuted_choice_1_i_s_reg_150 & 1'd72057593769492480;

assign IP_address0 = tmp_34_i_fu_207_p1;

assign PC1_address0 = tmp_24_i_i_fu_268_p1;

assign R1_fu_226_p1 = init_perm_res_i_reg_128_temp;

assign init_perm_res_i_reg_128_temp = init_perm_res_i_reg_128 & 1'd4294967295;

assign ap_CS_fsm_state1 = ap_CS_fsm[32'd0];

assign ap_CS_fsm_state2 = ap_CS_fsm[32'd1];

assign ap_CS_fsm_state3 = ap_CS_fsm[32'd2];

assign ap_CS_fsm_state4 = ap_CS_fsm[32'd3];

assign ap_CS_fsm_state5 = ap_CS_fsm[32'd4];

assign ap_CS_fsm_state6 = ap_CS_fsm[32'd5];

assign ap_CS_fsm_state7 = ap_CS_fsm[32'd6];

assign ap_CS_fsm_state8 = ap_CS_fsm[32'd7];

assign ap_CS_fsm_state9 = ap_CS_fsm[32'd8];

assign exitcond_fu_183_p2 = ((i_reg_106 == 5'd16) ? 1'b1 : 1'b0);

assign exitcond_i_fu_195_p2 = ((i_i_reg_117 == 7'd64) ? 1'b1 : 1'b0);

assign exitcond_i_i_fu_256_p2 = ((i_i_i_reg_139 == 6'd56) ? 1'b1 : 1'b0);

assign grp_shiftingcidi_fu_161_ap_start = grp_shiftingcidi_fu_161_ap_start_reg;

assign i_1_fu_189_p2 = (i_reg_106 + 5'd1);

assign i_2_fu_201_p2 = (i_i_reg_117 + 7'd1);

assign i_3_fu_262_p2 = (i_i_i_reg_139 + 6'd1);

assign init_perm_res_fu_249_p3 = tmp_1_reg_344_temp | tmp_fu_245_p1_temp;

assign tmp_1_reg_344_temp = tmp_1_reg_344_temp11 << 1'd1;

assign tmp_1_reg_344_temp11 = tmp_1_reg_344 & 1'd9223372036854775807;

assign tmp_fu_245_p1_temp = tmp_fu_245_p1 & 1'd1;

assign permuted_choice_1_fu_316_p3 = tmp_4_reg_382_temp | tmp_3_fu_312_p1_temp;

assign tmp_4_reg_382_temp = tmp_4_reg_382_temp11 << 1'd1;

assign tmp_4_reg_382_temp11 = tmp_4_reg_382 & 1'd9223372036854775807;

assign tmp_3_fu_312_p1_temp = tmp_3_fu_312_p1 & 1'd1;

assign tmp_1_fu_212_p1 = init_perm_res_i_reg_128_temp101;

assign init_perm_res_i_reg_128_temp101 = init_perm_res_i_reg_128 & 1'd9223372036854775807;

assign tmp_24_i_i_fu_268_p1 = i_i_i_reg_139;

assign tmp_25_i_i_cast_fu_293_p1 = PC1_load_reg_397;

assign tmp_26_i_i_fu_296_p2 = ($signed(7'd64) - $signed(tmp_25_i_i_cast_fu_293_p1));

assign tmp_27_i_i_fu_302_p1 = tmp_26_i_i_fu_296_p2;

assign tmp_28_i_i_fu_306_p2 = input_assign_reg_94 >> tmp_27_i_i_fu_302_p1;

assign tmp_2_fu_288_p1 = permuted_choice_1_i_s_reg_150_temp102;

assign permuted_choice_1_i_s_reg_150_temp102 = permuted_choice_1_i_s_reg_150 & 1'd268435455;

assign tmp_34_i_fu_207_p1 = i_i_reg_117;

assign tmp_36_i_fu_230_p2 = ($signed(7'd64) - $signed(IP_load_reg_359));

assign tmp_37_i_fu_235_p1 = tmp_36_i_fu_230_p2;

assign tmp_38_i_fu_239_p2 = input_assign_reg_94 >> tmp_37_i_fu_235_p1;

assign tmp_3_fu_312_p1 = tmp_28_i_i_fu_306_p2_temp;

assign tmp_28_i_i_fu_306_p2_temp = tmp_28_i_i_fu_306_p2 & 1'd1;

assign tmp_4_fu_273_p1 = permuted_choice_1_i_s_reg_150_temp101 ;

assign permuted_choice_1_i_s_reg_150_temp101 = permuted_choice_1_i_s_reg_150 & 1'd9223372036854775807;

assign tmp_fu_245_p1 = tmp_38_i_fu_239_p2_temp;

assign tmp_38_i_fu_239_p2_temp = tmp_38_i_fu_239_p2 & 1'd1;

endmodule //top_function
