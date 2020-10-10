/*
   This file was generated automatically by Alchitry Labs version 1.2.1.
   Do not edit this file directly. Instead edit the original Lucid source.
   This is a temporary file and any changes made to it will be destroyed.
*/

module checker_9 (
    input [2:0] teststep,
    input [1:0] testresult,
    output reg [2:0] testvect,
    output reg result
  );
  
  
  
  wire [3-1:0] M_test_out;
  reg [3-1:0] M_test_in;
  testtable_13 test (
    .in(M_test_in),
    .out(M_test_out)
  );
  
  wire [1-1:0] M_adder_s;
  wire [1-1:0] M_adder_cout;
  reg [1-1:0] M_adder_a;
  reg [1-1:0] M_adder_b;
  reg [1-1:0] M_adder_cin;
  full_adder_6 adder (
    .a(M_adder_a),
    .b(M_adder_b),
    .cin(M_adder_cin),
    .s(M_adder_s),
    .cout(M_adder_cout)
  );
  
  always @* begin
    M_test_in = teststep;
    testvect = M_test_out;
    M_adder_a = M_test_out[2+0-:1];
    M_adder_b = M_test_out[1+0-:1];
    M_adder_cin = M_test_out[0+0-:1];
    result = ~(testresult[1+0-:1] ^ M_adder_s) & ~(testresult[0+0-:1] ^ M_adder_cout);
  end
endmodule
