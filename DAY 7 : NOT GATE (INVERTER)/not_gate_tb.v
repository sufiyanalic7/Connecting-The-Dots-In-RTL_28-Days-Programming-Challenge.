	     `timescale 1ns/1ps 

module not_gate_tb;

	reg a;
	wire y;

	not_gate dUT(.a(a),.y(y));
	 
	 
	 initial begin
	 
	        $dumpfile("test_not_gate.vcd");
		$dumpvars(0,not_gate_tb);

		#10 a = 1'b0;
		#10 a = 1'b1;
		#10 a = 1'b0;
		
		$finish;
	  end


endmodule
