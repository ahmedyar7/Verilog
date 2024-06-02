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