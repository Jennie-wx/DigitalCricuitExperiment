library verilog;
use verilog.vl_types.all;
entity fpq_vlg_check_tst is
    port(
        clk_1hz         : in     vl_logic;
        clk_1khz        : in     vl_logic;
        clk_2hz         : in     vl_logic;
        clk_50hz        : in     vl_logic;
        sampler_rx      : in     vl_logic
    );
end fpq_vlg_check_tst;
