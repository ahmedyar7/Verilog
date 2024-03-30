module circut(input A,B,C,D, output W);

    wire E, F, G, H, I;

    // cicut # 1
    not(E, A);
    and(F, E, B, D);
    and(G, E, B, C);
    not(H, B);
    and(I, H, C, B);
    or(W, F, G, I);
    

endmodule

module testbench;

    reg A, B, C, D;

    wire W;

    circut inst_circut(.A(A), .B(B), .C(C), .D(D), .W(W));

    initial begin

    $monitor("Time = %t  A = %b    B = %b    C = %b   D = %b   W = %b", $time, A, B ,C ,D ,W);

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
