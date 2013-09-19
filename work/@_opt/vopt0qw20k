library verilog;
use verilog.vl_types.all;
entity stallgo_out_buffer_4 is
    generic(
        FLITWIDTH       : integer := 32;
        SIMDELAY        : integer := 2000
    );
    port(
        clk             : in     vl_logic;
        rst             : in     vl_logic;
        FLIT_out        : out    vl_logic_vector;
        VALID_out       : out    vl_logic;
        FWDAUX1_out     : out    vl_logic;
        BWDAUX1_in      : in     vl_logic;
        BWDAUX2_in      : in     vl_logic;
        BWDAUX3_in      : in     vl_logic;
        write           : in     vl_logic;
        data_in         : in     vl_logic_vector;
        full            : out    vl_logic
    );
    attribute mti_svvh_generic_type : integer;
    attribute mti_svvh_generic_type of FLITWIDTH : constant is 1;
    attribute mti_svvh_generic_type of SIMDELAY : constant is 1;
end stallgo_out_buffer_4;
