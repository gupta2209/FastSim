
module top_function
(
  ap_clk,
  ap_rst,
  ap_start,
  ap_done,
  ap_idle,
  ap_ready,
  inputdata,
  ap_return
);

  parameter ap_ST_fsm_state1 = 9'd1;
  parameter ap_ST_fsm_state2 = 9'd2;
  parameter ap_ST_fsm_state3 = 9'd4;
  parameter ap_ST_fsm_state4 = 9'd8;
  parameter ap_ST_fsm_state5 = 9'd16;
  parameter ap_ST_fsm_state6 = 9'd32;
  parameter ap_ST_fsm_state7 = 9'd64;
  parameter ap_ST_fsm_state8 = 9'd128;
  parameter ap_ST_fsm_state9 = 9'd256;
  input ap_clk;
  input ap_rst;
  input ap_start;
  output ap_done;
  output ap_idle;
  output ap_ready;
  input [31:0] inputdata;
  output [63:0] ap_return;
  reg ap_done;
  reg ap_idle;
  reg ap_ready;
  reg [8:0] ap_CS_fsm;
  wire ap_CS_fsm_state1;
  wire [5:0] IP_address0;
  reg IP_ce0;
  wire [6:0] IP_q0;
  wire [5:0] PC1_address0;
  reg PC1_ce0;
  wire [5:0] PC1_q0;
  wire signed [63:0] sext_ln321_fu_187_p1;
  wire [4:0] i_1_fu_197_p2;
  reg [4:0] i_1_reg_339;
  wire ap_CS_fsm_state2;
  wire [6:0] i_fu_209_p2;
  reg [6:0] i_reg_347;
  wire ap_CS_fsm_state3;
  wire [0:0] icmp_ln35_fu_203_p2;
  wire [62:0] trunc_ln39_1_fu_220_p1;
  reg [62:0] trunc_ln39_1_reg_357;
  reg [31:0] L1_reg_362;
  wire [31:0] R1_fu_234_p1;
  reg [31:0] R1_reg_367;
  reg [6:0] IP_load_reg_372;
  wire ap_CS_fsm_state4;
  wire [63:0] init_perm_res_fu_257_p3;
  wire ap_CS_fsm_state5;
  wire [5:0] i_2_fu_270_p2;
  reg [5:0] i_2_reg_385;
  wire ap_CS_fsm_state6;
  wire [0:0] icmp_ln66_fu_264_p2;
  wire [62:0] trunc_ln70_1_fu_281_p1;
  reg [62:0] trunc_ln70_1_reg_395;
  reg [27:0] C_assign_reg_400;
  wire [27:0] trunc_ln74_fu_296_p1;
  reg [27:0] trunc_ln74_reg_405;
  reg [5:0] PC1_load_reg_410;
  wire ap_CS_fsm_state7;
  wire [63:0] permuted_choice_1_fu_324_p3;
  wire ap_CS_fsm_state8;
  wire [63:0] grp_shiftingcidi_fu_167_ap_return;
  wire ap_CS_fsm_state9;
  wire grp_shiftingcidi_fu_167_ap_ready;
  wire grp_shiftingcidi_fu_167_ap_done;
  wire grp_shiftingcidi_fu_167_ap_start;
  wire grp_shiftingcidi_fu_167_ap_idle;
  reg [63:0] input_assign_reg_102;
  reg [4:0] i_0_reg_112;
  reg [6:0] i_0_i_reg_123;
  wire [0:0] icmp_ln329_fu_191_p2;
  reg [63:0] init_perm_res_0_i_reg_134;
  reg [5:0] i_0_i_i_reg_145;
  reg [63:0] permuted_choice_1_0_s_reg_156;
  reg grp_shiftingcidi_fu_167_ap_start_reg;
  wire [63:0] zext_ln39_fu_215_p1;
  wire [63:0] zext_ln70_fu_276_p1;
  wire [6:0] sub_ln39_fu_238_p2;
  wire [63:0] zext_ln39_1_fu_243_p1;
  wire [63:0] lshr_ln39_fu_247_p2;
  wire [0:0] trunc_ln39_fu_253_p1;
  wire [6:0] zext_ln70_1_fu_301_p1;
  wire [6:0] sub_ln70_fu_304_p2;
  wire [63:0] zext_ln70_2_fu_310_p1;
  wire [63:0] lshr_ln70_fu_314_p2;
  wire [0:0] trunc_ln70_fu_320_p1;
  reg [8:0] ap_NS_fsm;

  initial begin
    #0 ap_CS_fsm = 9'd1;
    #0 grp_shiftingcidi_fu_167_ap_start_reg = 1'b0;
  end


  top_function_IP
  #(
    .DataWidth(7),
    .AddressRange(64),
    .AddressWidth(6)
  )
  IP_U
  (
    .clk(ap_clk),
    .reset(ap_rst),
    .address0(IP_address0),
    .ce0(IP_ce0),
    .q0(IP_q0)
  );


  top_function_PC1
  #(
    .DataWidth(6),
    .AddressRange(56),
    .AddressWidth(6)
  )
  PC1_U
  (
    .clk(ap_clk),
    .reset(ap_rst),
    .address0(PC1_address0),
    .ce0(PC1_ce0),
    .q0(PC1_q0)
  );


  shiftingcidi
  grp_shiftingcidi_fu_167
  (
    .ap_clk(ap_clk),
    .ap_rst(ap_rst),
    .ap_start(grp_shiftingcidi_fu_167_ap_start),
    .ap_done(grp_shiftingcidi_fu_167_ap_done),
    .ap_idle(grp_shiftingcidi_fu_167_ap_idle),
    .ap_ready(grp_shiftingcidi_fu_167_ap_ready),
    .C(C_assign_reg_400),
    .D(trunc_ln74_reg_405),
    .L(L1_reg_362),
    .R(R1_reg_367),
    .ap_return(grp_shiftingcidi_fu_167_ap_return)
  );


  always @(posedge ap_clk) begin
    if(ap_rst == 1'b1) begin
      ap_CS_fsm <= ap_ST_fsm_state1;
    end else begin
      ap_CS_fsm <= ap_NS_fsm;
    end
  end


  always @(posedge ap_clk) begin
    if(ap_rst == 1'b1) begin
      grp_shiftingcidi_fu_167_ap_start_reg <= 1'b0;
    end else
      if((icmp_ln66_fu_264_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state6)) begin
        grp_shiftingcidi_fu_167_ap_start_reg <= 1'b1;
      end else if(grp_shiftingcidi_fu_167_ap_ready == 1'b1) begin
        grp_shiftingcidi_fu_167_ap_start_reg <= 1'b0;
      end 
  end


  always @(posedge ap_clk) begin
    if(1'b1 == ap_CS_fsm_state8) begin
      i_0_i_i_reg_145 <= i_2_reg_385;
    end else if((icmp_ln35_fu_203_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state3)) begin
      i_0_i_i_reg_145 <= 6'd0;
    end 
  end


  always @(posedge ap_clk) begin
    if((icmp_ln329_fu_191_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state2)) begin
      i_0_i_reg_123 <= 7'd0;
    end else if(1'b1 == ap_CS_fsm_state5) begin
      i_0_i_reg_123 <= i_reg_347;
    end 
  end


  always @(posedge ap_clk) begin
    if((1'b1 == ap_CS_fsm_state9) & (grp_shiftingcidi_fu_167_ap_done == 1'b1)) begin
      i_0_reg_112 <= i_1_reg_339;
    end else if((1'b1 == ap_CS_fsm_state1) & (ap_start == 1'b1)) begin
      i_0_reg_112 <= 5'd0;
    end 
  end


  always @(posedge ap_clk) begin
    if((icmp_ln329_fu_191_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state2)) begin
      init_perm_res_0_i_reg_134 <= 64'd0;
    end else if(1'b1 == ap_CS_fsm_state5) begin
      init_perm_res_0_i_reg_134 <= init_perm_res_fu_257_p3;
    end 
  end


  always @(posedge ap_clk) begin
    if((1'b1 == ap_CS_fsm_state9) & (grp_shiftingcidi_fu_167_ap_done == 1'b1)) begin
      input_assign_reg_102 <= grp_shiftingcidi_fu_167_ap_return;
    end else if((1'b1 == ap_CS_fsm_state1) & (ap_start == 1'b1)) begin
      input_assign_reg_102 <= sext_ln321_fu_187_p1;
    end 
  end


  always @(posedge ap_clk) begin
    if(1'b1 == ap_CS_fsm_state8) begin
      permuted_choice_1_0_s_reg_156 <= permuted_choice_1_fu_324_p3;
    end else if((icmp_ln35_fu_203_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state3)) begin
      permuted_choice_1_0_s_reg_156 <= 64'd0;
    end 
  end

  assign permuted_choice_1_0_s_reg_156_temp_0 = permuted_choice_1_0_s_reg_156 >> 1'd28;
  assign permuted_choice_1_0_s_reg_156_temp_1 = permuted_choice_1_0_s_reg_156_temp_0 & 28'd268435455;

  always @(posedge ap_clk) begin
    if((icmp_ln66_fu_264_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state6)) begin
      C_assign_reg_400 <= permuted_choice_1_0_s_reg_156_temp_1;
      trunc_ln74_reg_405 <= trunc_ln74_fu_296_p1;
    end 
  end


  always @(posedge ap_clk) begin
    if(1'b1 == ap_CS_fsm_state4) begin
      IP_load_reg_372 <= IP_q0;
    end 
  end

  assign init_perm_res_0_i_reg_134_temp_2 = init_perm_res_0_i_reg_134 >> 1'd32;
  assign init_perm_res_0_i_reg_134_temp_3 = init_perm_res_0_i_reg_134_temp_2 & 32'd4294967295;

  always @(posedge ap_clk) begin
    if((icmp_ln35_fu_203_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state3)) begin
      L1_reg_362 <= init_perm_res_0_i_reg_134_temp_3;
      R1_reg_367 <= R1_fu_234_p1;
    end 
  end


  always @(posedge ap_clk) begin
    if(1'b1 == ap_CS_fsm_state7) begin
      PC1_load_reg_410 <= PC1_q0;
    end 
  end


  always @(posedge ap_clk) begin
    if(1'b1 == ap_CS_fsm_state2) begin
      i_1_reg_339 <= i_1_fu_197_p2;
    end 
  end


  always @(posedge ap_clk) begin
    if(1'b1 == ap_CS_fsm_state6) begin
      i_2_reg_385 <= i_2_fu_270_p2;
    end 
  end


  always @(posedge ap_clk) begin
    if(1'b1 == ap_CS_fsm_state3) begin
      i_reg_347 <= i_fu_209_p2;
    end 
  end


  always @(posedge ap_clk) begin
    if((icmp_ln35_fu_203_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state3)) begin
      trunc_ln39_1_reg_357 <= trunc_ln39_1_fu_220_p1;
    end 
  end


  always @(posedge ap_clk) begin
    if((icmp_ln66_fu_264_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state6)) begin
      trunc_ln70_1_reg_395 <= trunc_ln70_1_fu_281_p1;
    end 
  end


  always @(*) begin
    if(1'b1 == ap_CS_fsm_state3) begin
      IP_ce0 = 1'b1;
    end else begin
      IP_ce0 = 1'b0;
    end
  end


  always @(*) begin
    if(1'b1 == ap_CS_fsm_state6) begin
      PC1_ce0 = 1'b1;
    end else begin
      PC1_ce0 = 1'b0;
    end
  end


  always @(*) begin
    if((icmp_ln329_fu_191_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state2)) begin
      ap_done = 1'b1;
    end else begin
      ap_done = 1'b0;
    end
  end


  always @(*) begin
    if((ap_start == 1'b0) & (1'b1 == ap_CS_fsm_state1)) begin
      ap_idle = 1'b1;
    end else begin
      ap_idle = 1'b0;
    end
  end


  always @(*) begin
    if((icmp_ln329_fu_191_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state2)) begin
      ap_ready = 1'b1;
    end else begin
      ap_ready = 1'b0;
    end
  end


  always @(*) begin
    case(ap_CS_fsm)
      ap_ST_fsm_state1: begin
        if((1'b1 == ap_CS_fsm_state1) & (ap_start == 1'b1)) begin
          ap_NS_fsm = ap_ST_fsm_state2;
        end else begin
          ap_NS_fsm = ap_ST_fsm_state1;
        end
      end
      ap_ST_fsm_state2: begin
        if((icmp_ln329_fu_191_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state2)) begin
          ap_NS_fsm = ap_ST_fsm_state1;
        end else begin
          ap_NS_fsm = ap_ST_fsm_state3;
        end
      end
      ap_ST_fsm_state3: begin
        if((icmp_ln35_fu_203_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state3)) begin
          ap_NS_fsm = ap_ST_fsm_state6;
        end else begin
          ap_NS_fsm = ap_ST_fsm_state4;
        end
      end
      ap_ST_fsm_state4: begin
        ap_NS_fsm = ap_ST_fsm_state5;
      end
      ap_ST_fsm_state5: begin
        ap_NS_fsm = ap_ST_fsm_state3;
      end
      ap_ST_fsm_state6: begin
        if((icmp_ln66_fu_264_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state6)) begin
          ap_NS_fsm = ap_ST_fsm_state9;
        end else begin
          ap_NS_fsm = ap_ST_fsm_state7;
        end
      end
      ap_ST_fsm_state7: begin
        ap_NS_fsm = ap_ST_fsm_state8;
      end
      ap_ST_fsm_state8: begin
        ap_NS_fsm = ap_ST_fsm_state6;
      end
      ap_ST_fsm_state9: begin
        if((1'b1 == ap_CS_fsm_state9) & (grp_shiftingcidi_fu_167_ap_done == 1'b1)) begin
          ap_NS_fsm = ap_ST_fsm_state2;
        end else begin
          ap_NS_fsm = ap_ST_fsm_state9;
        end
      end
      default: begin
        ap_NS_fsm = 'bx;
      end
    endcase
  end

  assign IP_address0 = zext_ln39_fu_215_p1;
  assign PC1_address0 = zext_ln70_fu_276_p1;
  assign R1_fu_234_p1 = (init_perm_res_0_i_reg_134 & 32'd4294967295);
  assign ap_CS_fsm_state1 = ap_CS_fsm[32'd0];
  assign ap_CS_fsm_state2 = ap_CS_fsm[32'd1];
  assign ap_CS_fsm_state3 = ap_CS_fsm[32'd2];
  assign ap_CS_fsm_state4 = ap_CS_fsm[32'd3];
  assign ap_CS_fsm_state5 = ap_CS_fsm[32'd4];
  assign ap_CS_fsm_state6 = ap_CS_fsm[32'd5];
  assign ap_CS_fsm_state7 = ap_CS_fsm[32'd6];
  assign ap_CS_fsm_state8 = ap_CS_fsm[32'd7];
  assign ap_CS_fsm_state9 = ap_CS_fsm[32'd8];
  assign ap_return = input_assign_reg_102;
  assign grp_shiftingcidi_fu_167_ap_start = grp_shiftingcidi_fu_167_ap_start_reg;
  assign i_1_fu_197_p2 = i_0_reg_112 + 5'd1;
  assign i_2_fu_270_p2 = i_0_i_i_reg_145 + 6'd1;
  assign i_fu_209_p2 = i_0_i_reg_123 + 7'd1;
  assign icmp_ln329_fu_191_p2 = (i_0_reg_112 == 5'd16)? 1'b1 : 1'b0;
  assign icmp_ln35_fu_203_p2 = (i_0_i_reg_123 == 7'd64)? 1'b1 : 1'b0;
  assign icmp_ln66_fu_264_p2 = (i_0_i_i_reg_145 == 6'd56)? 1'b1 : 1'b0;
  assign trunc_ln39_1_reg_357_temp_4 = trunc_ln39_1_reg_357 << 1'd1;
  assign trunc_ln39_1_reg_357_temp_5 = trunc_ln39_1_reg_357_temp_4 | trunc_ln39_fu_253_p1;
  assign init_perm_res_fu_257_p3 = trunc_ln39_1_reg_357_temp_5;
  assign lshr_ln39_fu_247_p2 = input_assign_reg_102 >> zext_ln39_1_fu_243_p1;
  assign lshr_ln70_fu_314_p2 = input_assign_reg_102 >> zext_ln70_2_fu_310_p1;
  assign trunc_ln70_1_reg_395_temp_6 = trunc_ln70_1_reg_395 << 1'd1;
  assign trunc_ln70_1_reg_395_temp_7 = trunc_ln70_1_reg_395_temp_6 | trunc_ln70_fu_320_p1;
  assign permuted_choice_1_fu_324_p3 = trunc_ln70_1_reg_395_temp_7;
  assign sext_ln321_fu_187_p1 = $signed(inputdata);
  assign sub_ln39_fu_238_p2 = $signed(7'd64) - $signed(IP_load_reg_372);
  assign sub_ln70_fu_304_p2 = $signed(7'd64) - $signed(zext_ln70_1_fu_301_p1);
  assign trunc_ln39_1_fu_220_p1 = (init_perm_res_0_i_reg_134 & 63'd9223372036854775807);
  assign trunc_ln39_fu_253_p1 = (lshr_ln39_fu_247_p2 & 1'd1);
  assign trunc_ln70_1_fu_281_p1 = (permuted_choice_1_0_s_reg_156 & 63'd9223372036854775807);
  assign trunc_ln70_fu_320_p1 = (lshr_ln70_fu_314_p2 & 1'd1);
  assign trunc_ln74_fu_296_p1 = (permuted_choice_1_0_s_reg_156 & 28'd268435455);
  assign zext_ln39_1_fu_243_p1 = sub_ln39_fu_238_p2;
  assign zext_ln39_fu_215_p1 = i_0_i_reg_123;
  assign zext_ln70_1_fu_301_p1 = PC1_load_reg_410;
  assign zext_ln70_2_fu_310_p1 = sub_ln70_fu_304_p2;
  assign zext_ln70_fu_276_p1 = i_0_i_i_reg_145;

endmodule

