library verilog;
use verilog.vl_types.all;
entity wxwjwjsq is
    port(
        clk             : in     vl_logic;
        cr              : in     vl_logic;
        ld              : in     vl_logic;
        \in\            : in     vl_logic_vector(3 downto 0);
        epet            : in     vl_logic_vector(1 downto 0);
        rco             : out    vl_logic;
        a               : out    vl_logic;
        b               : out    vl_logic;
        c               : out    vl_logic;
        d               : out    vl_logic;
        e               : out    vl_logic;
        f               : out    vl_logic;
        g               : out    vl_logic;
        sel             : out    vl_logic;
        co              : out    vl_logic
    );
end wxwjwjsq;
