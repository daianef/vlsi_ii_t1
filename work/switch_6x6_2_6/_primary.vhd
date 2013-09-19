library verilog;
use verilog.vl_types.all;
entity switch_6x6_2_6 is
    port(
        clk             : in     vl_logic;
        rst             : in     vl_logic;
        \FLIT_in__0\    : in     vl_logic_vector(66 downto 0);
        \FLIT_in__1\    : in     vl_logic_vector(66 downto 0);
        \FLIT_in__2\    : in     vl_logic_vector(66 downto 0);
        \FLIT_in__3\    : in     vl_logic_vector(66 downto 0);
        \FLIT_in__4\    : in     vl_logic_vector(66 downto 0);
        \FLIT_in__5\    : in     vl_logic_vector(66 downto 0);
        \VALID_in__0\   : in     vl_logic;
        \VALID_in__1\   : in     vl_logic;
        \VALID_in__2\   : in     vl_logic;
        \VALID_in__3\   : in     vl_logic;
        \VALID_in__4\   : in     vl_logic;
        \VALID_in__5\   : in     vl_logic;
        \FWDAUX1_in__0\ : in     vl_logic;
        \FWDAUX1_in__1\ : in     vl_logic;
        \FWDAUX1_in__2\ : in     vl_logic;
        \FWDAUX1_in__3\ : in     vl_logic;
        \FWDAUX1_in__4\ : in     vl_logic;
        \FWDAUX1_in__5\ : in     vl_logic;
        \BWDAUX1_out__0\: out    vl_logic;
        \BWDAUX1_out__1\: out    vl_logic;
        \BWDAUX1_out__2\: out    vl_logic;
        \BWDAUX1_out__3\: out    vl_logic;
        \BWDAUX1_out__4\: out    vl_logic;
        \BWDAUX1_out__5\: out    vl_logic;
        \BWDAUX2_out__0\: out    vl_logic;
        \BWDAUX2_out__1\: out    vl_logic;
        \BWDAUX2_out__2\: out    vl_logic;
        \BWDAUX2_out__3\: out    vl_logic;
        \BWDAUX2_out__4\: out    vl_logic;
        \BWDAUX2_out__5\: out    vl_logic;
        \BWDAUX3_out__0\: out    vl_logic;
        \BWDAUX3_out__1\: out    vl_logic;
        \BWDAUX3_out__2\: out    vl_logic;
        \BWDAUX3_out__3\: out    vl_logic;
        \BWDAUX3_out__4\: out    vl_logic;
        \BWDAUX3_out__5\: out    vl_logic;
        \FLIT_out__0\   : out    vl_logic_vector(66 downto 0);
        \FLIT_out__1\   : out    vl_logic_vector(66 downto 0);
        \FLIT_out__2\   : out    vl_logic_vector(66 downto 0);
        \FLIT_out__3\   : out    vl_logic_vector(66 downto 0);
        \FLIT_out__4\   : out    vl_logic_vector(66 downto 0);
        \FLIT_out__5\   : out    vl_logic_vector(66 downto 0);
        \VALID_out__0\  : out    vl_logic;
        \VALID_out__1\  : out    vl_logic;
        \VALID_out__2\  : out    vl_logic;
        \VALID_out__3\  : out    vl_logic;
        \VALID_out__4\  : out    vl_logic;
        \VALID_out__5\  : out    vl_logic;
        \FWDAUX1_out__0\: out    vl_logic;
        \FWDAUX1_out__1\: out    vl_logic;
        \FWDAUX1_out__2\: out    vl_logic;
        \FWDAUX1_out__3\: out    vl_logic;
        \FWDAUX1_out__4\: out    vl_logic;
        \FWDAUX1_out__5\: out    vl_logic;
        \BWDAUX1_in__0\ : in     vl_logic;
        \BWDAUX1_in__1\ : in     vl_logic;
        \BWDAUX1_in__2\ : in     vl_logic;
        \BWDAUX1_in__3\ : in     vl_logic;
        \BWDAUX1_in__4\ : in     vl_logic;
        \BWDAUX1_in__5\ : in     vl_logic;
        \BWDAUX2_in__0\ : in     vl_logic;
        \BWDAUX2_in__1\ : in     vl_logic;
        \BWDAUX2_in__2\ : in     vl_logic;
        \BWDAUX2_in__3\ : in     vl_logic;
        \BWDAUX2_in__4\ : in     vl_logic;
        \BWDAUX2_in__5\ : in     vl_logic;
        \BWDAUX3_in__0\ : in     vl_logic;
        \BWDAUX3_in__1\ : in     vl_logic;
        \BWDAUX3_in__2\ : in     vl_logic;
        \BWDAUX3_in__3\ : in     vl_logic;
        \BWDAUX3_in__4\ : in     vl_logic;
        \BWDAUX3_in__5\ : in     vl_logic
    );
end switch_6x6_2_6;