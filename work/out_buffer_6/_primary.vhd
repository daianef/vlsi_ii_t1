library verilog;
use verilog.vl_types.all;
entity out_buffer_6 is
    port(
        clk             : in     vl_logic;
        rst             : in     vl_logic;
        FLIT_out        : out    vl_logic_vector(66 downto 0);
        VALID_out       : out    vl_logic;
        FWDAUX1_out     : out    vl_logic;
        BWDAUX1_in      : in     vl_logic;
        BWDAUX2_in      : in     vl_logic;
        BWDAUX3_in      : in     vl_logic;
        write           : in     vl_logic;
        data_in         : in     vl_logic_vector(66 downto 0);
        full            : out    vl_logic
    );
end out_buffer_6;
