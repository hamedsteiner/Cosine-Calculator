library verilog;
use verilog.vl_types.all;
entity hamed is
    port(
        done            : out    vl_logic;
        start           : in     vl_logic;
        clock           : in     vl_logic;
        rst             : in     vl_logic;
        cos_X           : out    vl_logic_vector(15 downto 0);
        x               : in     vl_logic_vector(15 downto 0)
    );
end hamed;
