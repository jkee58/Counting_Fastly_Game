library verilog;
use verilog.vl_types.all;
entity lab1 is
    port(
        tc              : out    vl_logic;
        E               : in     vl_logic;
        D               : in     vl_logic;
        td              : out    vl_logic;
        clk             : in     vl_logic;
        start           : in     vl_logic;
        reset           : in     vl_logic;
        en              : in     vl_logic;
        up              : in     vl_logic;
        k               : out    vl_logic_vector(6 downto 0);
        l               : out    vl_logic_vector(6 downto 0);
        m               : out    vl_logic_vector(6 downto 0);
        n               : out    vl_logic_vector(6 downto 0);
        s               : out    vl_logic_vector(6 downto 0);
        t               : out    vl_logic_vector(6 downto 0)
    );
end lab1;
