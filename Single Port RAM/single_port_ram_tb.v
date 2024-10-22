module tb_single_port_ram;
    reg [2:0] addr;
    reg [7:0] data_in;
    reg we, clk;
    wire [7:0] data_out;

    single_port_ram uut (
        .addr(addr),
        .data_in(data_in),
        .we(we),
        .clk(clk),
        .data_out(data_out)
    );

    initial begin
        clk = 0;
        forever #5 clk = ~clk;
    end

    initial begin
        we = 1; addr = 3'b000; data_in = 8'hA1; #10;
        we = 1; addr = 3'b001; data_in = 8'hB2; #10;
        we = 0; addr = 3'b000; #10; // Read
        we = 0; addr = 3'b001; #10; // Read
        we = 1; addr = 3'b010; data_in = 8'hC3; #10;
        we = 0; addr = 3'b010; #10; // Read
        $finish;
    end

    initial begin
        $monitor("Time: %0d, Addr: %b, Data Out: %h", $time, addr, data_out);
    end
endmodule
