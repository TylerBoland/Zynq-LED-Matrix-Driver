`timescale 1ns / 1ps

//LED CONTROLLER MODULE
module led_controller(
    input logic clk,
    input logic resetn,

    input logic [1:0] buffer_sel,

    output logic [5:0] data,
    output logic [4:0] row_sel,
    output logic sclk,
    output logic lat,
    output logic oe,

    input logic [31:0] din,
    input logic [11:0] wraddr,
    input logic  [3:0] wea,
    input logic wr
  );

  parameter INIT = 0, LOAD = 1, INCR_RAM = 2, INCR_ROW = 3, LATCH = 4;

  logic [1:0] state, next_state;
  logic s_sclk, s_lat, s_oe;
  logic [6:0] s_col, s_next_col;
  logic [7:0] s_bpp, s_next_bpp;
  logic [4:0] s_row, s_next_row;
  logic [10:0] s_ram, s_next_ram;
  logic [5:0] s_data, s_next_data;
  logic [5:0] s_data_reg;
  logic [23:0] tbo_a, tbo_g_a;
  logic [23:0] tbo_b, tbo_g_b;

  logic clk60;
  //PLL 100MHZ -> 60MHZ
  PLL PLL_60MHZ(.clk_in(clk), .resetn(resetn), .clk_out(clk60));

  //TRIPLE BUFFER
  triple_buffer triple_buffer(
                  .resetn(resetn),
                  .buffer_sel(buffer_sel),
                  .clka(clk),
                  .dina(din),
                  .addra(wraddr),
                  .wea(wea),
                  .wr(wr),

                  .clkb(clk60),
                  .douta(tbo_a),
                  .doutb(tbo_b),
                  .addrb(s_ram)
                );

  //GAMMA CORRECTION LUT
  gamma_correction upper_gamma_correction(.din(tbo_a), .dout(tbo_g_a));
  gamma_correction lower_gamma_correction(.din(tbo_b), .dout(tbo_g_b));

  //Top Level Assignment
  always_comb begin
    sclk = s_sclk;
    lat = s_lat;
    oe = s_oe;
    row_sel = s_row;
    data = s_data;
  end

  //MidLevel Assignment
  always_ff @(posedge clk60, resetn) begin
    if(resetn == 0) begin
      state <= INIT;
      s_col <= 0;
      s_row <= 5'b11111;
      s_ram <= 10'b1111111111;
      s_bpp <= 0;
      s_data <= 0;
    end
    else begin
      state <= next_state;
      s_col <= s_next_col;
      s_bpp <= s_next_bpp;
      s_row <= s_next_row;
      s_ram <= s_next_ram;
      s_data <= s_next_data;
    end
  end

  //State Machine
  always_ff @(s_col, s_bpp, s_row, s_ram, s_data, state) begin

    s_next_col <= s_col;
    s_next_bpp <= s_bpp;
    s_next_row <= s_row;
    s_next_ram <= s_ram;
    s_next_data <= s_data;

    s_data_reg <= 0;
    s_sclk <= 0;
    s_lat <= 0;
    s_oe <= 1;

    case(state)
      INIT: begin
        if(s_row == 5'b11111) begin
          if(s_bpp == 8'b11111110)
            s_next_bpp <= 0;
          else
            s_next_bpp <= s_bpp + 8'b00000001;
        end
        next_state <= LOAD;
      end
      //LOAD IN DATA FROM BUFFER, COMPARE IT TO BPP TO GENERATE ON-TIME PER PIXEL
      LOAD: begin
        s_oe <= 1;
        if(tbo_g_a[23:16] > s_bpp)
          s_data_reg[5] <= 1;
        if(tbo_g_a[15:8] > s_bpp)
          s_data_reg[4] <= 1;
        if(tbo_g_a[7:0] > s_bpp)
          s_data_reg[3] <= 1;
        if(tbo_g_a[23:16] > s_bpp)
          s_data_reg[2] <= 1;
        if(tbo_g_b[15:8] > s_bpp)
          s_data_reg[1] <= 1;
        if(tbo_g_b[7:0] > s_bpp)
          s_data_reg[0] <= 1;
        s_next_col <= s_col + 7'b0000001;
        //IF THE ROW ADDRESS REACHES THE END, INCREMENT THE PANEL ADDRESS
        if(s_col < 127)
          next_state <= INCR_RAM;
        else
          next_state <= INCR_ROW;
      end
      //INCREMENT BRAM ADDRESS
      INCR_RAM: begin
        s_sclk <= 1;
        s_oe <= 0;
        s_next_ram <= s_ram + 10'b0000000001;
        next_state <= LOAD;
      end
      //INCREMENT THE ROW ADDRESS
      INCR_ROW: begin
        s_next_col <= 0;
        s_next_row <= s_row + 5'b00001;
        next_state <= LATCH;
      end
      //LATCH THE OUTPUT
      LATCH: begin
        s_lat <= 1;
        next_state <= INIT;
      end
    endcase
    s_next_data <= s_data_reg;
  end
endmodule
