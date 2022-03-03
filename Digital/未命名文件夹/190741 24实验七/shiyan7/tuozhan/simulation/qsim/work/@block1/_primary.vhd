library verilog;
use verilog.vl_types.all;
entity Block1 is
    port(
        led1            : out    vl_logic;
        shizhong        : in     vl_logic;
        rst             : in     vl_logic;
        led2            : out    vl_logic;
        led3            : out    vl_logic;
        rco             : out    vl_logic;
        cr              : in     vl_logic;
        ld              : in     vl_logic;
        epet            : in     vl_logic_vector(1 downto 0);
        \in\            : in     vl_logic_vector(3 downto 0);
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
end Block1;
