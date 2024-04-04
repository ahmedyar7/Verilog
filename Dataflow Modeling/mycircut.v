module mycircut(input A, B, C, D, E, E, F, output M);
    assign W = (A & (B | ~C)) & (~D & (E ^ F));
endmodule