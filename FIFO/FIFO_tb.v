module tb_fifo;
    reg clk;
    reg rst;
    reg wr_en;
    reg rd_en;
    reg [7:0] data_in;
    wire [7:0] data_out;
    wire empty;
    wire full;

    fifo uut (
        .clk(clk),
        .rst(rst),
        .wr_en(wr_en),
        .rd_en(rd_en),
        .data_in(data_in),
        .data_out(data_out),
        .empty(empty),
        .full(full)
    );

    initial begin
        clk = 0;
        forever #5 clk = ~clk;
    end

    initial begin
        rst = 1; wr_en = 0; rd_en = 0; data_in = 0;
        #10;
        rst = 0;

        wr_en = 1; data_in = 8'h01; #10;
        wr_en = 1; data_in = 8'h02; #10;
        wr_en = 1; data_in = 8'h03; #10;
        wr_en = 1; data_in = 8'h04; #10;
        wr_en = 1; data_in = 8'h05; #10;
        wr_en = 1; data_in = 8'h06; #10;
        wr_en = 1; data_in = 8'h07; #10;
        wr_en = 1; data_in = 8'h08; #10;

        wr_en = 1; data_in = 8'h09; #10;

        wr_en = 0; #10;

        rd_en = 1; #10;
        rd_en = 1; #10;
        rd_en = 1; #10;
        rd_en = 1; #10;
        rd_en = 1; #10;
        rd_en = 1; #10;
        rd_en = 1; #10;
        rd_en = 1; #10;
        
        rd_en = 1; #10;

        rd_en = 0;

        #10; $finish;
    end

    initial begin
        $monitor("Time: %0t | data_in: %h | data_out: %h | empty: %b | full: %b", 
                 $time, data_in, data_out, empty, full);
    end
endmodule
