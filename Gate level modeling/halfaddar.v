module half_adder(input A,B,C, output Y);
    wire a,b,c,D;
    and(a,A,B);
    not(b,C);
    or(b,a,D);
    not(Y,D);
endmodule

module testbench;
reg A,B,C;
wire Y;

half_adder inst_half_adder(.A(A), .B(B), .C(C), .Y(Y));

initial begin
$monitor("Time = %t  A = %b  B = %b   C = %b  Y = %b",$time,A,B,C,Y);

#5 A = 0; B = 0; C = 0;
#5 A = 0; B = 0; C = 1;
#5 A = 0; B = 1; C = 0;
#5 A = 0; B = 1; C = 1;
#5 A = 1; B = 0; C = 0;
#5 A = 1; B = 0; C = 1;
#5 A = 1; B = 1; C = 0;
#5 A = 1; B = 1; C = 1;

$finish;
end 
endmodule


module logic(input A,B,C, output Q);
    wire x,y,z;

    nand(x,A,B);
    or(y,A,B);
    not(z,y);
    and(Q,C,x,z);

endmodule

module testbench;

reg A,B,C;
wire Q;

logic inst_logic(.A(A), .B(B), .C(C), .Q(Q));

initial begin
$monitor("Time = %t   A = %b   B = %b   C = %b   Q = %b",$time, A,B,C,Q);

#5 A = 0; B = 0; C = 0;
#5 A = 0; B = 0; C = 1;
#5 A = 0; B = 1; C = 0;
#5 A = 0; B = 1; C = 1;
#5 A = 1; B = 0; C = 0;
#5 A = 1; B = 0; C = 1;
#5 A = 1; B = 1; C = 0;
#5 A = 1; B = 1; C = 1;

$finish;
end 
endmodule

