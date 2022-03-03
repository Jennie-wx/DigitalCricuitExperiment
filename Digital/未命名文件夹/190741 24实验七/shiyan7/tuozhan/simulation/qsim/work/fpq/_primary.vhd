library verilog;
use verilog.vl_types.all;
entity fpq is
    port(
        clk_50mhz       : in     vl_logic;
        rst             : in     vl_logic;
        clk_1hz         : out    vl_logic;
        clk_2hz         : out    vl_logic;
        clk_50hz        : out    vl_logic;
        clk_1khz        : out    vl_logic
    );
end fpq;
