library verilog;
use verilog.vl_types.all;
entity adderwxwjw is
    port(
        in1             : in     vl_logic_vector(3 downto 0);
        in2             : in     vl_logic_vector(3 downto 0);
        \out\           : out    vl_logic_vector(3 downto 0);
        co              : out    vl_logic;
        n_err           : out    vl_logic
    );
end adderwxwjw;
