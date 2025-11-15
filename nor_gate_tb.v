module nor_tb;

	reg a,b;
	wire y;

        nor_gate u0_Dut(.a(a),.b(b),.y(y) );


        initial begin
        
	$dumpfile("nor_gate.vcd");
  	$dumpvars(0,nor_tb);


	a = 1'b0; b = 1'b0;
	#10 a = 1'b0; b = 1'b1;
	#10 a = 1'b1; b = 1'b0;
	#10 a = 1'b1; b = 1'b1;
	#10 $finish;


        end
endmodule
