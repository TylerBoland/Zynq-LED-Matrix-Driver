`timescale 1ns / 1ps

module triple_buffer(
    input wire resetn,
    
    input wire [1:0] buffer_sel,

    input wire clka,
    input wire [31:0] dina,
    input wire [11:0] addra,
    input wire [3:0] wea,
    input wire wr,

    input wire clkb,
    output  reg [23:0] douta,
    output  reg [23:0] doutb,
    input wire [10:0] addrb
  );

  reg [1:0] buffer_sel;
  wire [23:0] b0_d0, b0_d1, b1_d0, b1_d1, b2_d0, b2_d1;

  //BUFFERS
  dp_ram buffer_0 (
           .resetn(resetn),
           .clka(clka),
           .dina(dina),
           .addra(addra),
           .wea(wea),
           .wr(wr & (buffer_sel==2'b00 ? 1'b1 : 1'b0)),
           .clkb(clkb),
           .douta(b0_d0),
           .doutb(b0_d1),
           .addrb(addrb)
         );

  dp_ram buffer_1 (
           .resetn(resetn),
           .clka(clka),
           .dina(dina),
           .addra(addra),
           .wea(wea),
           .wr(wr & (buffer_sel==2'b01 ? 1'b1 : 1'b0)),
           .clkb(clkb),
           .douta(b1_d0),
           .doutb(b1_d1),
           .addrb(addrb)
         );

  dp_ram buffer_2 (
           .resetn(resetn),
           .clka(clka),
           .dina(dina),
           .addra(addra),
           .wea(wea),
           .wr(wr & (buffer_sel==2'b10 ? 1'b1 : 1'b0)),
           .clkb(clkb),
           .douta(b2_d0),
           .doutb(b2_d1),
           .addrb(addrb)
         );

  //BUFFER MUX
  always_ff @(b2_d0, b2_d1, b0_d0, b0_d1, b1_d0, b1_d1, buffer_sel) begin
    case(buffer_sel)
      2'b00: begin
        douta <= b2_d0;
        doutb <= b2_d1;
      end
      2'b01: begin
        douta <= b0_d0;
        doutb <= b0_d1;
      end
      2'b10: begin
        douta <= b1_d0;
        doutb <= b1_d1;
      end
    endcase
  end
endmodule


//MEMORY IS BYTE WRITE ENABLED, WIDTH MUST A MULTIPLY OF A BYTE
module dp_ram (
    input wire resetn,

    input wire clka,
    input wire [31:0] dina,
    input wire [11:0] addra,
    input wire [3:0] wea,
    input wire wr,

    input wire clkb,
    output reg [23:0] douta,
    output reg [23:0] doutb,
    input wire [10:0] addrb
  );

  reg [31:0] mem [4095:0];
  reg [23:0] s_data_a = {(24){1'b0}};
  reg [23:0] s_data_b = {(24){1'b0}};

  integer j;
  initial
    for(j = 0; j < 4096; j = j+1)
      mem[j] = {23{1'b1}};

  //WRITE TO MEMORY
  generate
    genvar i;
    for (i = 0; i < 4; i = i+1) begin: byte_write
      always_ff @(posedge clka) begin
        if(wr) begin
          if (wea[i])
            mem[addra][(i+1)*7:i*7] <= dina[(i+1)*7:i*7];
        end
      end
    end
  endgenerate

  //MEMORY -> OUTPUT REGISTER, READ TWO VALUES IN PARALLEL
  always_ff @(posedge clkb) begin
    s_data_a <= mem[{1'b0, addrb}][23:0];
    s_data_b <= mem[{1'b1, addrb}][23:0];
  end

  //ASSIGN THE OUTPUT REGISTER TO THE MODULES READ PORTS
  assign douta = s_data_a;
  assign doutb = s_data_b;

endmodule
