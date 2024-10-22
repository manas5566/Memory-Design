module single_port_rom (
    input [2:0] addr,
    output reg [7:0] data_out
);
    reg [7:0] rom [7:0];

    initial begin
        rom[0] = 8'h00;
        rom[1] = 8'h01;
        rom[2] = 8'h02;
        rom[3] = 8'h03;
        rom[4] = 8'h04;
        rom[5] = 8'h05;
        rom[6] = 8'h06;
        rom[7] = 8'h07;
    end

    always @(addr) begin
        data_out <= rom[addr];
    end
endmodule
