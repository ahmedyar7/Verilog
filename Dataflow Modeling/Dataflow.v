module bool(input A,B,C, output F);
	assign F = (~A & ~B & ~C) | (A & ~B & ~C) | (~A & B & C) | (A & B & C);
endmodule

module tb;
reg A,B,C;
wire F;

bool inst_bool (.A(A), .B(B), .C(C), .F(F));

initial begin

$monitor("Time = %t  A = %b  B = %b C = %b F = %b ", $time, A,B,C,F);

#5 A = 0; B = 0; C = 0;
#5 A = 0; B = 0; C = 1;
#5 A = 0; B = 1; C = 0;
#5 A = 0; B = 1; C = 1;
#5 A = 1; B = 0; C = 0;
#5 A = 1; B = 0; C = 1;
#5 A = 1; B = 1; C = 0;
#5 A = 1; B = 1; C = 1;

$finish
end 
endmodule



module bool(input A,B,C, output F);
	assign F = (A & B & C) | (~A & ~B & ~C) | (A & ~B & ~C) | (~A & B & ~C);
end module

module tb;
reg A,B,C;
wire F;

bool inst_bool(.A(A), .B(B), .C(C), .F(F));

initial begin

$monitor("Time = %t  A = %b B = %b C = %b F = %b", $time, A,B,C,F);

#5 A = 0; B = 0; C = 0;
#5 A = 0; B = 0; C = 1;
#5 A = 0; B = 1; C = 0;
#5 A = 0; B = 1; C = 1;
#5 A = 1; B = 0; C = 0;
#5 A = 1; B = 0; C = 1;
#5 A = 1; B = 1; C = 0;
#5 A = 1; B = 1; C = 1;

$finish
end 
endmodule
