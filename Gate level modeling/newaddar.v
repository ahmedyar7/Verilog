module newaddar(input A,B,C,D,E,F, output W);

    wire R,S,T,U,V;

    and(R,A,B);
    not(S,C);
    and(T,S,D);
    or(U,R,T);
    xor(V,E,F);
    and(W,U,V);

endmodule

module testbench;

reg A,B,C,D,E,F;

wire W;

newaddar inst_newaddar(.A(A), .B(B), .C(C), .D(D), .E(E), .F(F), .W(W));

initial 
begin
  
  $monitor("Time = %t   A = %b   B = %b   C = %b   D = %d   E = %b   F = %b   W = %b" , $time, A,B,C,D,E,F,W);

  #5 A = 0; B = 0; C = 0; D = 0; E = 0; F = 0;
  #5 A = 0; B = 0; C = 0; D = 0; E = 0; F = 1;
  #5 A = 0; B = 0; C = 0; D = 0; E = 1; F = 0;
  #5 A = 0; B = 0; C = 0; D = 0; E = 1; F = 1;
  #5 A = 0; B = 0; C = 0; D = 1; E = 0; F = 0;
  #5 A = 0; B = 0; C = 0; D = 1; E = 0; F = 1;
  #5 A = 0; B = 0; C = 0; D = 1; E = 1; F = 0;
  #5 A = 0; B = 0; C = 0; D = 1; E = 1; F = 1;
  #5 A = 0; B = 0; C = 1; D = 0; E = 0; F = 0;
  #5 A = 0; B = 0; C = 1; D = 0; E = 0; F = 1;
  #5 A = 0; B = 0; C = 1; D = 0; E = 1; F = 0;
  #5 A = 0; B = 0; C = 1; D = 0; E = 1; F = 1;
  #5 A = 0; B = 0; C = 1; D = 1; E = 0; F = 0;
  #5 A = 0; B = 0; C = 1; D = 1; E = 0; F = 1;
  #5 A = 0; B = 0; C = 1; D = 1; E = 1; F = 0;
  #5 A = 0; B = 0; C = 1; D = 1; E = 1; F = 1;
  #5 A = 0; B = 1; C = 0; D = 0; E = 0; F = 0;
  #5 A = 0; B = 1; C = 0; D = 0; E = 0; F = 1;
  #5 A = 0; B = 1; C = 0; D = 0; E = 1; F = 0;
  #5 A = 0; B = 1; C = 0; D = 0; E = 1; F = 1;
  #5 A = 0; B = 1; C = 0; D = 1; E = 0; F = 0;
  #5 A = 0; B = 1; C = 0; D = 1; E = 0; F = 1;
  #5 A = 0; B = 1; C = 0; D = 1; E = 1; F = 0;
  #5 A = 0; B = 1; C = 0; D = 1; E = 1; F = 1;
  #5 A = 0; B = 1; C = 1; D = 0; E = 0; F = 0;
  #5 A = 0; B = 1; C = 1; D = 0; E = 0; F = 1;
  #5 A = 0; B = 1; C = 1; D = 0; E = 1; F = 0;
  #5 A = 0; B = 1; C = 1; D = 0; E = 1; F = 1;
  #5 A = 0; B = 1; C = 1; D = 1; E = 0; F = 0;
  #5 A = 0; B = 1; C = 1; D = 1; E = 0; F = 1;
  #5 A = 0; B = 1; C = 1; D = 1; E = 1; F = 0;
  #5 A = 0; B = 1; C = 1; D = 1; E = 1; F = 1;
  #5 A = 1; B = 0; C = 0; D = 0; E = 0; F = 0;
  #5 A = 1; B = 0; C = 0; D = 0; E = 0; F = 1;
  #5 A = 1; B = 0; C = 0; D = 0; E = 1; F = 0;
  #5 A = 1; B = 0; C = 0; D = 0; E = 1; F = 1;
  #5 A = 1; B = 0; C = 0; D = 1; E = 0; F = 0;
  #5 A = 1; B = 0; C = 0; D = 1; E = 0; F = 1;
  #5 A = 1; B = 0; C = 0; D = 1; E = 1; F = 0;
  #5 A = 1; B = 0; C = 0; D = 1; E = 1; F = 1;
  #5 A = 1; B = 0; C = 1; D = 0; E = 0; F = 0;
  #5 A = 1; B = 0; C = 1; D = 0; E = 0; F = 1;
  #5 A = 1; B = 0; C = 1; D = 0; E = 1; F = 0;
  #5 A = 1; B = 0; C = 1; D = 0; E = 1; F = 1;
  #5 A = 1; B = 0; C = 1; D = 1; E = 0; F = 0;
  #5 A = 1; B = 0; C = 1; D = 1; E = 0; F = 1;
  #5 A = 1; B = 0; C = 1; D = 1; E = 1; F = 0;
  #5 A = 1; B = 0; C = 1; D = 1; E = 1; F = 1;
  #5 A = 1; B = 1; C = 0; D = 0; E = 0; F = 0;
  #5 A = 1; B = 1; C = 0; D = 0; E = 0; F = 1;
  #5 A = 1; B = 1; C = 0; D = 0; E = 1; F = 0;
  #5 A = 1; B = 1; C = 0; D = 0; E = 1; F = 1;
  #5 A = 1; B = 1; C = 0; D = 1; E = 0; F = 0;
  #5 A = 1; B = 1; C = 0; D = 1; E = 0; F = 1;
  #5 A = 1; B = 1; C = 0; D = 1; E = 1; F = 0;
  #5 A = 1; B = 1; C = 0; D = 1; E = 1; F = 1;
  #5 A = 1; B = 1; C = 1; D = 0; E = 0; F = 0;
  #5 A = 1; B = 1; C = 1; D = 0; E = 0; F = 1;
  #5 A = 1; B = 1; C = 1; D = 0; E = 1; F = 0;
  #5 A = 1; B = 1; C = 1; D = 0; E = 1; F = 1;
  #5 A = 1; B = 1; C = 1; D = 1; E = 0; F = 0;
  #5 A = 1; B = 1; C = 1; D = 1; E = 0; F = 1;
  #5 A = 1; B = 1; C = 1; D = 1; E = 1; F = 0;
  #5 A = 1; B = 1; C = 1; D = 1; E = 1; F = 1;

$finish;

end
endmodule
