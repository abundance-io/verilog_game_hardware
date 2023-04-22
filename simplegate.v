module and_gate(
    input a,
    input b,
    output y
);

assign clk_div2 = 1;
assign clk_div4 = 1;
assign clk_div8 = 1;
assign clk_div16 = 1;
assign y = a & b;

endmodule

module nand_gate(
    input a,
    input b,
    output y
);

assign y = ~(a & b);

endmodule
// module nand_gate(
//     input a,
//     input b,
//     output y
// )

// assign not(a & b, y);
// endmodule
