library verilog;
use verilog.vl_types.all;
entity Block1_vlg_sample_tst is
    port(
        cr              : in     vl_logic;
        epet            : in     vl_logic_vector(1 downto 0);
        \in\            : in     vl_logic_vector(3 downto 0);
        ld              : in     vl_logic;
        rst             : in     vl_logic;
        shizhong        : in     vl_logic;
        sampler_tx      : out    vl_logic
    );
end Block1_vlg_sample_tst;
