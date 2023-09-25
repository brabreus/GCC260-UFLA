// The `timescale directive specifies that
// the simulation time unit is 1ns and
// the simulation timestep is 10ps
`timescale 1ns/10ps

module DE10_LITE_Golden_Top_tb;
  // signal declaration
  reg [3:0] test_in;
  wire test_out;

  // instantiate the circuit under test
  DE10_LITE_Golden_Top uut (.SW(test_in), .LEDR(test_out));

  // test vector generator
  initial
  begin
    // test vector 1
    test_in = 4'b0000;
    #200;
    
    // test vector 2
    test_in = 4'b0001;
    #200;
    
    // test vector 3
    test_in = 4'b0010;
    #200;
    
    // test vector 4
    test_in = 4'b0011;
    #200;
    
    // test vector 5
    test_in = 4'b0100;
    #200;
    
    // test vector 6
    test_in = 4'b0101;
    #200;
    
    // test vector 7
    test_in = 4'b0110;
    #200;
    
    // test vector 8
    test_in = 4'b0111;
    #200;
    
    // test vector 9
    test_in = 4'b1000;
    #200;
    
    // test vector 10
    test_in = 4'b1001;
    #200;
    
    // test vector 11
    test_in = 4'b1010;
    #200;
    
    // test vector 12
    test_in = 4'b1011;
    #200;
    
    // test vector 13
    test_in = 4'b1100;
    #200;
    
    // test vector 14
    test_in = 4'b1101;
    #200;
    
    // test vector 15
    test_in = 4'b1110;
    #200;
    
    // test vector 16
    test_in = 4'b1111;
    #200;
    
    // stop simulation
    $stop;
  end
endmodule
