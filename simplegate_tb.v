module inverter_test;

reg a;
reg b;
wire y;

nand_gate uut(a,b,y);

initial begin
    $dumpfile("inverter.vcd");
    $dumpvars(0,inverter_test);

    a = 0;
    b = 0;
    #10
    a = 1;
    b = 1;
    #10 
    a = 1;
    b = 0;
    #10
    a = 0;
    b = 1;
    #10
    $finish();
end


endmodule



