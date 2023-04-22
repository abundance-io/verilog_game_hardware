module clock_divider(
    input  clk,
    input reset,
    //using reg because we want to make non blocking assignments
    output reg clk_div2,
    output reg clk_div4,
    output reg clk_div8,
    output reg clk_div16
);

initial begin
    clk_div2 = 0;
    clk_div4 = 0;
    clk_div8 = 0;
    clk_div16 = 0;
end
always @(posedge clk)
    clk_div2 <= ~clk_div2;


always @(posedge clk_div2)
    clk_div4 <= ~clk_div4;

always @(posedge clk_div4)
    clk_div8 <= ~clk_div8;


always @(posedge clk_div8)
    clk_div16 <= ~clk_div16;


endmodule
