library verilog;
use verilog.vl_types.all;
entity Block1 is
    port(
        a               : out    vl_logic;
        in1             : in     vl_logic_vector(3 downto 0);
        in2             : in     vl_logic_vector(3 downto 0);
        b               : out    vl_logic;
        c               : out    vl_logic;
        d               : out    vl_logic;
        e               : out    vl_logic;
        f               : out    vl_logic;
        g               : out    vl_logic;
        yinji           : out    vl_logic;
        led             : out    vl_logic
    );
end Block1;
