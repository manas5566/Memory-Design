module fifo (
    input clk,
    input rst,
    input wr_en,
    input rd_en,
    input [7:0] data_in,
    output reg [7:0] data_out,
    output reg empty,
    output reg full
);
    parameter DEPTH = 8;
    reg [2:0] write_pointer, read_pointer;
    reg [7:0] fifo_mem [0:DEPTH-1];
    
    always @(posedge clk or posedge rst) begin
        if (rst) begin
            write_pointer <= 0;
            read_pointer <= 0;
            empty <= 1;
            full <= 0;
        end else begin
            if (wr_en && !full) begin
                fifo_mem[write_pointer] <= data_in;
                write_pointer <= write_pointer + 1;
            end
            if (rd_en && !empty) begin
                data_out <= fifo_mem[read_pointer];
                read_pointer <= read_pointer + 1;
            end
            
            empty <= (write_pointer == read_pointer);
            full <= (write_pointer == DEPTH);
        end
    end
endmodule
