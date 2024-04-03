module circut(input A,B,C,D,E,F, output W);
    wire G,H,I,J,K,L,M;
    not(G,B);
    and(H,A,G);
    or(I,H,C);
    not(J,D);
    and(K,J,E);
    not(L,F);
    and(M,K,L);
    and(W,I,M);
endmodule
