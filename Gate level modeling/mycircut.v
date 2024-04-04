module mycircut(input A, B, C, D, E, F, output M);
    wire I, H, G, J, K, L;

    not(G, C);
    or(H, G, B);
    and(I, A, H);

    not(J, D);
    xor(K, E, F);
    and(L, J, K);
    or(M, I, L);

endmodule   