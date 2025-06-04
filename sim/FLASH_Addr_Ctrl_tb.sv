module FLASH_Addr_Ctrl_tb;
    logic sampling_clk;
    logic rst;
    logic count_up;
    logic read_en;
    logic [22:0] flash_mem_address;
    
    FLASH_Addr_Ctrl dut (
        .sampling_clk(sampling_clk),
        .rst(rst),
        .count_up(count_up),
        .read_en(read_en),
        .flash_mem_address(flash_mem_address)
    );

    initial forever begin
        sampling_clk = 0; #5;
        sampling_clk = 1; #5;
    end

    initial begin
        // Test reset
        rst = 1; count_up = 1; read_en = 0; #10;

        // Test counting up
        // No read_en so should not count
        rst = 0; count_up = 1; #10;
        // Enable read_en for counting
        read_en = 1; #30;

        // Test backwards overflow
        count_up = 0; #60;

        // Test backwards reset
        rst = 1; #10;
        rst = 0; #20;
        
        // Test forwards overflow
        count_up = 1; #60;

        $stop;
    end
endmodule