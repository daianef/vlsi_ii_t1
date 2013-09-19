library verilog;
use verilog.vl_types.all;
entity in_buffer_2 is
    port(
        clk             : in     vl_logic;
        rst             : in     vl_logic;
        FLIT_in         : in     vl_logic_vector(66 downto 0);
        VALID_in        : in     vl_logic;
        FWDAUX1_in      : in     vl_logic;
        BWDAUX1_out     : out    vl_logic;
        BWDAUX2_out     : out    vl_logic;
        BWDAUX3_out     : out    vl_logic;
        flit_out        : out    vl_logic_vector(66 downto 0);
        request_out     : out    vl_logic;
        busy_out        : in     vl_logic
    );
end in_buffer_2;
