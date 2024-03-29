module half_adder(input A,B,C, output Y);
    wire a,b,c,D;
    and(a,A,B);
    not(b,C);
    or(b,a,D);
    not(Y,D);
endmodule