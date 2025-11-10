`timescale 1ns/1ps

module and_tb;
    reg a, b;
    wire y;
	
and_gate u0
 (
.a(a),
.b(b),
.y(y)
);

initial begin;
	$dumpfile("and_gate.vcd");
	 $dumpvars(0, and_tb);
a = 0; b = 0;
#5 a = 0; b = 1;
#5 a = 1; b = 0;
#5 a = 1; b = 1;
#5 $finish;
end
endmodule

