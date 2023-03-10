/*
 * Generated by Digital. Don't modify this file!
 * Any changes will be lost if this file is regenerated.
 */

module two_bit_mux (
  input a,
  input b,
  input s,
  output y
);
  assign y = ((a & ~ s) | (b & s));
endmodule

module four_bit_mux (
  input [3:0] a,
  input [3:0] b,
  input sel,
  output [3:0] y
);
  wire a3;
  wire b3;
  wire s0;
  wire a2;
  wire b2;
  wire s1;
  wire a1;
  wire b1;
  wire s2;
  wire a0;
  wire b0;
  wire s3;
  assign a3 = a[3];
  assign a2 = a[2];
  assign a1 = a[1];
  assign a0 = a[0];
  assign b3 = b[3];
  assign b2 = b[2];
  assign b1 = b[1];
  assign b0 = b[0];
  two_bit_mux two_bit_mux_i0 (
    .a( a3 ),
    .b( b3 ),
    .s( sel ),
    .y( s0 )
  );
  two_bit_mux two_bit_mux_i1 (
    .a( a2 ),
    .b( b2 ),
    .s( sel ),
    .y( s1 )
  );
  two_bit_mux two_bit_mux_i2 (
    .a( a1 ),
    .b( b1 ),
    .s( sel ),
    .y( s2 )
  );
  two_bit_mux two_bit_mux_i3 (
    .a( a0 ),
    .b( b0 ),
    .s( sel ),
    .y( s3 )
  );
  assign y[3] = s0;
  assign y[2] = s1;
  assign y[1] = s2;
  assign y[0] = s3;
endmodule
