library verilog;
use verilog.vl_types.all;
entity Block1_vlg_sample_tst is
    port(
        in1             : in     vl_logic_vector(3 downto 0);
        in2             : in     vl_logic_vector(3 downto 0);
        sampler_tx      : out    vl_logic
    );
end Block1_vlg_sample_tst;
