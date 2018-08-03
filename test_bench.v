`timescale 1ns/1ps
`define CYCLE 100
module test_bench ();

//**************************** wire & reg**********************//
initial begin
    $display("//***************************************");
    $display("//==top input : in_1,in_2");
    $display("//==top output :  out_1");
    $display("//***************************************");
    end
reg [13:0]in_1,in_2;
reg [13:0]index_2;
wire [13:0]out_1;
//**************************** module **********************//
initial begin
    $display("===module : add");
    end
add add(.in_1(in_1),
		.in_2(in_2),
		.out_1(out_1)
);

//**************************** clock gen **********************//
/*initial begin
	$display("===starting generating clk");
	force clk = 1'b0;
	forever #(`CYCLE/2) force clk = ~clk;
    end
*/
//**************************** initial and wavegen **********************//
initial begin
	$display("===starting dump waveform");
	$dumpfile("add.vcd");
	$dumpvars(0,add);
end

initial begin
    in_1 = 0;
    in_2 = 0;
    end

//**************************** main **********************//
initial begin
	for(index_2 = 14'd0; index_2 < 14'd4; index_2 = index_2 + 14'd1) begin 
        #1000;
        $display("send : 0x%h, 0x%h" , index_2, index_2 + 14'd1);
        in_1 = index_2;
        in_2 = index_2 + 1;
        end


	$display("===all done");
	#100000 $finish;
    end

endmodule