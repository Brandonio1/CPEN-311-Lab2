module FLASH_Rd_Ctrl_tb;

    logic  sampling_clk;
    logic  [22:0] flash_mem_address;
    logic  count_up;
    logic  read_flash_en;

    logic  flash_mem_waitrequest;
    logic  [31:0] flash_mem_readdata;
    logic flash_mem_readdatavalid;

    logic [7:0] audio_data;
    logic get_new_address;

    FLASH_Rd_Ctrl dut (
        .sampling_clk(sampling_clk),
        .flash_mem_address(flash_mem_address),
        .count_up(count_up),
        .read_flash_en(read_flash_en),

        .flash_mem_waitrequest(flash_mem_waitrequest),
        .flash_mem_readdata(flash_mem_readdata),
        .flash_mem_readdatavalid(flash_mem_readdatavalid),

        .audio_data(audio_data),
        .get_new_address(get_new_address)
    );

    initial forever begin
        sampling_clk = 0; #5;
        sampling_clk = 1; #5;
    end

    initial begin
        count_up = 1;
        flash_mem_waitrequest = 0;

        // Read data is valid after 2 clock cycles after address changes

        // Test outputting audio data for lower byte
        flash_mem_address = 23'h0; read_flash_en = 0; #10;
        read_flash_en = 1;
        flash_mem_readdata = 32'h1234_abcd; #20;
        // Test outputting audio data for upper byte
        flash_mem_address = 23'h5aaaa; read_flash_en = 0; #10;
        read_flash_en = 1;
        flash_mem_readdata = 32'h1234_abcd; #20;

        // Test same as above but for decrementing address, and new readdata after counting down for 1 cycle
        count_up = 0; read_flash_en = 0; #10;
        read_flash_en = 1; #10;

        // Lower
        flash_mem_address = 23'h0; read_flash_en = 0; #10;
        read_flash_en = 1;
        flash_mem_readdata = 32'h9876_feef; #20;
        // Upper
        flash_mem_address = 23'h5aaaa; read_flash_en = 0; #10;
        read_flash_en = 1;
        flash_mem_readdata = 32'h9876_feef; #20;

        $stop;

    end

endmodule