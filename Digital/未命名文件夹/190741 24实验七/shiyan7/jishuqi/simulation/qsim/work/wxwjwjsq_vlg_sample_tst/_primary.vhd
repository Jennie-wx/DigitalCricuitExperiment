library verilog;
use verilog.vl_types.all;
entity wxwjwjsq_vlg_sample_tst is
    port(
        clk             : in     vl_logic;
        cr              : in     vl_logic;
        epet            : in     vl_logic_vector(1 downto 0);
        \in\            : in     vl_logic_vector(3 downto 0);
        ld              : in     vl_logic;
        sampler_tx      : out    vl_logic
    );
end wxwjwjsq_vlg_sample_tst;
