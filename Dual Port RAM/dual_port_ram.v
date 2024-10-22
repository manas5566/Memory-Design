module dual_port_ram (
    input [2:0] addr_a, addr_b,
    input [7:0] data_in_a, data_in_b,
    input we_a, we_b, clk,
    output reg [7:0] data_out_a, data_out_b
);
    reg [7:0] ram [7:0];

    always @(posedge clk) begin
        if (we_a)
            ram[addr_a] <= data_in_a;
        else
            data_out_a <= ram[addr_a];

        if (we_b)
            ram[addr_b] <= data_in_b;
        else
            data_out_b <= ram[addr_b];
    end
endmodule
