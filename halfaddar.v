// (A∧B)∨(¬C∧(D⊕E))

module halfaddar(input A,B,C,D,E, output F);
    assign F = (A & B) | ( ~C | ( D ^ E ) );
endmodule

module testbench;
reg A, B, C, D, E;
wire F;

halfaddar inst_halfaddar(.A(A), .B(B), .C(C), .D(D), .E(E));

initial begin
$monitor("Time = %t  A = %b  B = %b  C = %C  D = %D  E = %b  F = %b" , $time, A, B, C, D, E, F);

#5 A = 0; B = 0; C = 0; D = 0; E = 0;
#5 A = 0; B = 0; C = 0; D = 0; E = 1;
#5 A = 0; B = 0; C = 0; D = 1; E = 0;
#5 A = 0; B = 0; C = 0; D = 1; E = 1;
#5 A = 0; B = 0; C = 1; D = 0; E = 0;
#5 A = 0; B = 0; C = 1; D = 0; E = 1;
#5 A = 0; B = 0; C = 1; D = 1; E = 0;
#5 A = 0; B = 0; C = 1; D = 1; E = 1;
#5 A = 0; B = 1; C = 0; D = 0; E = 0;
#5 A = 0; B = 1; C = 0; D = 0; E = 1;
#5 A = 0; B = 1; C = 0; D = 1; E = 0;
#5 A = 0; B = 1; C = 0; D = 1; E = 1;
#5 A = 0; B = 1; C = 1; D = 0; E = 0;
#5 A = 0; B = 1; C = 1; D = 0; E = 1;
#5 A = 0; B = 1; C = 1; D = 1; E = 0;
#5 A = 0; B = 1; C = 1; D = 1; E = 1;

#5 A = 1; B = 0; C = 0; D = 0; E = 0;
#5 A = 1; B = 0; C = 0; D = 0; E = 1;
#5 A = 1; B = 0; C = 0; D = 1; E = 0;
#5 A = 1; B = 0; C = 0; D = 1; E = 1;
#5 A = 1; B = 0; C = 1; D = 0; E = 0;
#5 A = 1; B = 0; C = 1; D = 0; E = 1;
#5 A = 1; B = 0; C = 1; D = 1; E = 0;
#5 A = 1; B = 0; C = 1; D = 1; E = 1;
#5 A = 1; B = 1; C = 0; D = 0; E = 0;
#5 A = 1; B = 1; C = 0; D = 0; E = 1;
#5 A = 1; B = 1; C = 0; D = 1; E = 0;
#5 A = 1; B = 1; C = 0; D = 1; E = 1;
#5 A = 1; B = 1; C = 1; D = 0; E = 0;
#5 A = 1; B = 1; C = 1; D = 0; E = 1;
#5 A = 1; B = 1; C = 1; D = 1; E = 0;
#5 A = 1; B = 1; C = 1; D = 1; E = 1;


$finish ;
end 
endmodule


// F=(A⊕B)∧(¬C∨D)

module bool(input A,B,C,D, output F);
    assign F = (A^B) & (~C|D);
endmodule


module testbench;
reg A,B,C,D;
wire F;

bool inst_bool(.A(A), .B(B), .C(C), .D(D), .F(F));

initial begin

$monitor("Time = %t  A = %b  B = %b  C = %b  D = %b  F = %b", $time, A,B,C,D,F);

#5 A = 0; B = 0; C = 0; D = 0;
#5 A = 0; B = 0; C = 0; D = 1;
#5 A = 0; B = 0; C = 1; D = 0;
#5 A = 0; B = 0; C = 1; D = 1;
#5 A = 0; B = 1; C = 0; D = 0;
#5 A = 0; B = 1; C = 0; D = 1;
#5 A = 0; B = 1; C = 1; D = 0;
#5 A = 0; B = 1; C = 1; D = 1;
#5 A = 1; B = 0; C = 0; D = 0;
#5 A = 1; B = 0; C = 0; D = 1;
#5 A = 1; B = 0; C = 1; D = 0;
#5 A = 1; B = 0; C = 1; D = 1;
#5 A = 1; B = 1; C = 0; D = 0;
#5 A = 1; B = 1; C = 0; D = 1;
#5 A = 1; B = 1; C = 1; D = 0;
#5 A = 1; B = 1; C = 1; D = 1;

$finish;
end
endmodule