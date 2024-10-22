module tb_dual_port_ram;
    reg [2:0] addr_a, addr_b;
    reg [7:0] data_in_a, data_in_b;
    reg we_a, we_b, clk;
    wire [7:0] data_out_a, data_out_b;

    dual_port_ram uut (
        .addr_a(addr_a),
        .addr_b(addr_b),
        .data_in_a(data_in_a),
        .data_in_b(data_in_b),
        .we_a(we_a),
        .we_b(we_b),
        .clk(clk),
        .data_out_a(data_out_a),
        .data_out_b(data_out_b)
    );

    initial begin
        clk = 0;
        forever #5 clk = ~clk;
    end

    initial begin
        we_a = 1; addr_a = 3'b000; data_in_a = 8'hAA; #10;
        we_b = 1; addr_b = 3'b001; data_in_b = 8'hBB; #10;
        we_a = 0; addr_a = 3'b000; #10;
        we_b = 0; addr_b = 3'b001; #10;
        $finish;
    end

    initial begin
        $monitor("Time: %0t | addr_a: %b | data_out_a: %h | addr_b: %b | data_out_b: %h", 
                 $time, addr_a, data_out_a, addr_b, data_out_b);
    end
endmodule
