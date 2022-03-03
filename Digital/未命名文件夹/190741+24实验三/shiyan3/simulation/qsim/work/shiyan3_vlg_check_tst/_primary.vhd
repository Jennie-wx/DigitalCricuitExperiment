library verilog;
use verilog.vl_types.all;
entity shiyan3_vlg_check_tst is
    port(
        wout            : in     vl_logic_vector(3 downto 0);
        sampler_rx      : in     vl_logic
    );
end shiyan3_vlg_check_tst;
