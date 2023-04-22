module rip_counter_test;
integer i;
reg clk;
reg reset;
wire clk_div2;
wire clk_div4;
wire clk_div8;
wire clk_div16;



clock_divider uut(clk,reset,clk_div2,clk_div4,clk_div8,clk_div16);


initial begin
    $dumpfile("rip_counter.vcd");
    $dumpvars(0,rip_counter_test);
    for (i=0; i < 100; i = i + 1) begin
        #1
        clk = 1;
        #1 
        clk = 0;
        #1
        clk = -1;
    end
    $finish();
end


endmodule



