module circut(input A, B, C, D, E, F, output W);
    assign W = (A & ~ B | C) & (~ D | E & ~F);
endmodule