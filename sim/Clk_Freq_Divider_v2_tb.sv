
module Clk_Freq_Divider_v2_tb;
    reg inclk;
    reg reset;
    reg outclk_N_equ_1, outclk_N_equ_2, outclk_N_equ_3, outclk_N_equ_4, outclk_N_equ_5, 
        outclk_N_equ_6, outclk_N_equ_7, outclk_N_equ_37936;
    reg BC_out;

    Clk_Freq_Divider CFD_DUT1 (.inclk(inclk),.reset(reset),.num_clk_divisions(1),.outclk(outclk_N_equ_1));
    Clk_Freq_Divider CFD_DUT2 (.inclk(inclk),.reset(reset),.num_clk_divisions(2),.outclk(outclk_N_equ_2));
    Clk_Freq_Divider CFD_DUT3 (.inclk(inclk),.reset(reset),.num_clk_divisions(3),.outclk(outclk_N_equ_3));
    Clk_Freq_Divider CFD_DUT4 (.inclk(inclk),.reset(reset),.num_clk_divisions(4),.outclk(outclk_N_equ_4));
    Clk_Freq_Divider CFD_DUT5 (.inclk(inclk),.reset(reset),.num_clk_divisions(5),.outclk(outclk_N_equ_5));
    Clk_Freq_Divider CFD_DUT6 (.inclk(inclk),.reset(reset),.num_clk_divisions(6),.outclk(outclk_N_equ_6));
    Clk_Freq_Divider CFD_DUT7 (.inclk(inclk),.reset(reset),.num_clk_divisions(7),.outclk(outclk_N_equ_7));

    Clk_Freq_Divider CFD_DUT37936 (.inclk(inclk),.reset(reset),.num_clk_divisions(37_936),.outclk(outclk_N_equ_37936));

    // Check clock divider
    task test1;
        begin
            for (int i = 0; i < 100000; i = i + 1) begin
                inclk = 0; #5;
                inclk = 1; #5;
            end
        end
    endtask

    initial begin
        reset = 0; inclk = 0; #5;
        reset = 1; inclk = 1; #5;
        reset = 0;
        
        test1();

        // In case there is an initial forever block
        $stop;
    end

endmodule