library verilog;
use verilog.vl_types.all;
entity shiyan3_vlg_sample_tst is
    port(
        en              : in     vl_logic;
        sel             : in     vl_logic_vector(2 downto 0);
        win1            : in     vl_logic_vector(3 downto 0);
        win2            : in     vl_logic_vector(3 downto 0);
        sampler_tx      : out    vl_logic
    );
end shiyan3_vlg_sample_tst;
