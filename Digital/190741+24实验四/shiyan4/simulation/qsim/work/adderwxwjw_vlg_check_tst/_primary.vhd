library verilog;
use verilog.vl_types.all;
entity adderwxwjw_vlg_check_tst is
    port(
        co              : in     vl_logic;
        n_err           : in     vl_logic;
        \out\           : in     vl_logic_vector(3 downto 0);
        sampler_rx      : in     vl_logic
    );
end adderwxwjw_vlg_check_tst;
