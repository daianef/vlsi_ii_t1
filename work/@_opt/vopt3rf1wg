library verilog;
use verilog.vl_types.all;
entity switch_power_tester_input is
    generic(
        TESTINGMODE     : vl_logic_vector(0 to 2) := (Hi1, Hi0, Hi0);
        FLITWIDTH       : integer := 32;
        NUMBERINPUTS    : integer := 4;
        LOGNUMBERINPUTS : integer := 2;
        NUMBEROUTPUTS   : integer := 4;
        LOGNUMBEROUTPUTS: integer := 2;
        SIMDELAY        : integer := 2000
    );
    port(
        clk             : in     vl_logic;
        rst             : in     vl_logic;
        ID              : in     vl_logic_vector;
        FLIT_out        : out    vl_logic_vector;
        VALID_out       : out    vl_logic;
        FWDAUX1_out     : out    vl_logic;
        BWDAUX1_in      : in     vl_logic;
        BWDAUX2_in      : in     vl_logic;
        BWDAUX3_in      : in     vl_logic
    );
    attribute mti_svvh_generic_type : integer;
    attribute mti_svvh_generic_type of TESTINGMODE : constant is 1;
    attribute mti_svvh_generic_type of FLITWIDTH : constant is 1;
    attribute mti_svvh_generic_type of NUMBERINPUTS : constant is 1;
    attribute mti_svvh_generic_type of LOGNUMBERINPUTS : constant is 1;
    attribute mti_svvh_generic_type of NUMBEROUTPUTS : constant is 1;
    attribute mti_svvh_generic_type of LOGNUMBEROUTPUTS : constant is 1;
    attribute mti_svvh_generic_type of SIMDELAY : constant is 1;
end switch_power_tester_input;
