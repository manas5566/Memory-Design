module tb_single_port_rom;
    reg [2:0] addr;
    wire [7:0] data_out;

    single_port_rom uut (
        .addr(addr),
        .data_out(data_out)
    );

    initial begin
        addr = 3'b000; #10;
        addr = 3'b001; #10;
        addr = 3'b010; #10;
        addr = 3'b011; #10;
        addr = 3'b100; #10;
        addr = 3'b101; #10;
        addr = 3'b110; #10;
        addr = 3'b111; #10;
        $finish;
    end

    initial begin
        $monitor("Time: %0t | addr: %b | data_out: %h", $time, addr, data_out);
    end
endmodule
