module halfAdder(input A,B,output C,D);

    xor(C,A,B);
    and(D,A,B);

endmodule

module tb 
    reg A,B;
    wire C,D

    halfAdder inst_halfAdder(.A(A),.B(B),.C(C),.D(D));

    initial begin
        $monitor("Time = $t A = %b B = %b", $time , A,B,C,D);

        #5 A = 0; B = 0;
        #5 A = 0; B = 1;
        #5 A = 1; B = 0;
        #5 A = 1; B = 1;
        $finish;
    end
endmodule
    

module halfAdder(input A,B,output C,D);
    xor(C,A,B);
    and(D,A,B);

endmodule

module testbench 
    reg A,B;
    wire C,D;

    halfAdder inst_halfAdder  (.A(A),.B(B),.C(C),.D(D),);

    initial begin
        $monitor("Time = $t, A = %b, B = %b C = %b, D = %b",$time,A,B,C,D);
        #5 A = 0; B = 0;
        #5 A = 0; B = 1;
        #5 A = 1; B = 0;
        #5 A = 1; B = 1;
        $finish;
    end
endmodule

module halfadder(input A,B,output W,P);
    wire Z,Y,C,D;
    not(C,B);
    and(Z,C,A);
    not(D,A);
    and(Y,D,B);
    or(W,Z,Y);
    and(A,B,P);
endmodule

module testbench
    reg A,B;
    wire W,P;
    halfadder inst_halfadder(.A(A),.B(B),.W(W),.P(P));
    initial begin
        $monitor("Time = %t A = %b B = %b W = %b P = %b",$time,A,B,W,P);
        #5 A = 0;B=0;
        #5 A = 0;B=1;
        #5 A = 1;B=0;
        #5 A = 1;B=1;
    $finish;
    end
endmodule

// Gate level modeling in Verilog.

module fullAdder(input A,B,C,output SUM,CARRY);
    assign SUM = (A^B^C);
    assign CARRY = (A&B) | (A&C) | (B&C);
endmodule

module tb
    reg A,B,C;
    wire SUM,CARRY;
    fullAdder inst_fullAdder (.A(A),.B(B),.C(C),.SUM(SUM),.CARRY(CARRY));
    initial begin
        $monitor("Time = %t, A = %b B = %b C = %b SUM = %b CARRY = %b",$time,A,B,C,SUM,CARRY);
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