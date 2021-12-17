`timescale 1ns / 1ps

module PLL(
    input bit clk_in,
    input bit resetn,
    output bit clk_out
  );

  bit fb_i, fb_o;
  bit ob_i;

  BUFG FB_CLK_BUFFER (.O(fb_i), .I(fb_o) );
  BUFG OUTPUT_CLK_BUFFER (.O(clk_out), .I(ob_i));

  PLLE2_BASE #(
               .BANDWIDTH("OPTIMIZED"),  // OPTIMIZED, HIGH, LOW
               .CLKFBOUT_MULT(42),        // Multiply value for all CLKOUT, (2-64)
               .CLKFBOUT_PHASE(0.0),     // Phase offset in degrees of CLKFB, (-360.000-360.000).
               .CLKIN1_PERIOD(10.0),      // Input clock period in ns to ps resolution (i.e. 33.333 is 30 MHz).
               // CLKOUT0_DIVIDE - CLKOUT5_DIVIDE: Divide amount for each CLKOUT (1-128)
               .CLKOUT0_DIVIDE(5),
               .CLKOUT1_DIVIDE(1),
               .CLKOUT2_DIVIDE(1),
               .CLKOUT3_DIVIDE(1),
               .CLKOUT4_DIVIDE(1),
               .CLKOUT5_DIVIDE(1),
               // CLKOUT0_DUTY_CYCLE - CLKOUT5_DUTY_CYCLE: Duty cycle for each CLKOUT (0.001-0.999).
               .CLKOUT0_DUTY_CYCLE(0.5),
               .CLKOUT1_DUTY_CYCLE(0.5),
               .CLKOUT2_DUTY_CYCLE(0.5),
               .CLKOUT3_DUTY_CYCLE(0.5),
               .CLKOUT4_DUTY_CYCLE(0.5),
               .CLKOUT5_DUTY_CYCLE(0.5),
               // CLKOUT0_PHASE - CLKOUT5_PHASE: Phase offset for each CLKOUT (-360.000-360.000).
               .CLKOUT0_PHASE(0.0),
               .CLKOUT1_PHASE(0.0),
               .CLKOUT2_PHASE(0.0),
               .CLKOUT3_PHASE(0.0),
               .CLKOUT4_PHASE(0.0),
               .CLKOUT5_PHASE(0.0),
               .DIVCLK_DIVIDE(1),        // Master division value, (1-56)
               .REF_JITTER1(0.0),        // Reference input jitter in UI, (0.000-0.999).
               .STARTUP_WAIT("FALSE")    // Delay DONE until PLL Locks, ("TRUE"/"FALSE")
             )
             PLLE2_BASE_inst (
               // Clock Outputs: 1-bit (each) output: User configurable clock outputs
               .CLKOUT0(ob_i),   // 1-bit output: CLKOUT0
               .CLKOUT1(),   // 1-bit output: CLKOUT1
               .CLKOUT2(),   // 1-bit output: CLKOUT2
               .CLKOUT3(),   // 1-bit output: CLKOUT3
               .CLKOUT4(),   // 1-bit output: CLKOUT4
               .CLKOUT5(),   // 1-bit output: CLKOUT5
               // Feedback Clocks: 1-bit (each) output: Clock feedback ports
               .CLKFBOUT(fb_o), // 1-bit output: Feedback clock
               .LOCKED(),     // 1-bit output: LOCK
               .CLKIN1(clk_in),     // 1-bit input: Input clock
               // Control Ports: 1-bit (each) input: PLL control ports
               .PWRDWN(1'b0),     // 1-bit input: Power-down
               .RST((resetn == 1'b0)),           // 1-bit input: Reset
               // Feedback Clocks: 1-bit (each) input: Clock feedback ports
               .CLKFBIN(fb_i)    // 1-bit input: Feedback clock
             );
endmodule
