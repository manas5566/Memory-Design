module single_port_ram (
    input [2:0] addr,
    input [7:0] data_in,
    input we, clk,
    output reg [7:0] data_out
);
    reg [7:0] ram [7:0];

    always @(posedge clk) begin
        if (we)
            ram[addr] <= data_in;
        else
            data_out <= ram[addr];
    end
endmodule
