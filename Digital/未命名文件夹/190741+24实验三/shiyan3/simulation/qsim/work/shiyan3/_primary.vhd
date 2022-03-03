library verilog;
use verilog.vl_types.all;
entity shiyan3 is
    port(
        wout            : out    vl_logic_vector(3 downto 0);
        sel             : in     vl_logic_vector(2 downto 0);
        win2            : in     vl_logic_vector(3 downto 0);
        win1            : in     vl_logic_vector(3 downto 0);
        en              : in     vl_logic
    );
end shiyan3;
