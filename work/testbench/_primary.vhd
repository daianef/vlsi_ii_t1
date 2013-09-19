library verilog;
use verilog.vl_types.all;
entity testbench is
    generic(
        TESTINGMODE     : vl_logic_vector(0 to 2) := (Hi1, Hi0, Hi0);
        FLITWIDTH       : integer := 67;
        NUMBERINPUTS    : integer := 6;
        LOGNUMBERINPUTS : integer := 3;
        NUMBEROUTPUTS   : integer := 6;
        LOGNUMBEROUTPUTS: integer := 3;
        CLOCKSEMIPERIOD : integer := 2500;
        SIMDELAY        : vl_notype
    );
    attribute mti_svvh_generic_type : integer;
    attribute mti_svvh_generic_type of TESTINGMODE : constant is 1;
    attribute mti_svvh_generic_type of FLITWIDTH : constant is 1;
    attribute mti_svvh_generic_type of NUMBERINPUTS : constant is 1;
    attribute mti_svvh_generic_type of LOGNUMBERINPUTS : constant is 1;
    attribute mti_svvh_generic_type of NUMBEROUTPUTS : constant is 1;
    attribute mti_svvh_generic_type of LOGNUMBEROUTPUTS : constant is 1;
    attribute mti_svvh_generic_type of CLOCKSEMIPERIOD : constant is 1;
    attribute mti_svvh_generic_type of SIMDELAY : constant is 3;
end testbench;
