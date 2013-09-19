module allocator_6x6(clk, rst, FLIT_in__0, FLIT_in__1, FLIT_in__2, FLIT_in__3, FLIT_in__4, FLIT_in__5, VALID_in__0, VALID_in__1, VALID_in__2, VALID_in__3, VALID_in__4, VALID_in__5, FWDAUX1_in__0, FWDAUX1_in__1, FWDAUX1_in__2, FWDAUX1_in__3, FWDAUX1_in__4, FWDAUX1_in__5, which_port, select, BWDAUX1_out, BWDAUX2_out, BWDAUX3_out, busy_in, shift_ctl);
    input clk;
    wire clk;
    input rst;
    wire rst;
    input [66:0] FLIT_in__0;
    wire [66:0] FLIT_in__0;
    input [66:0] FLIT_in__1;
    wire [66:0] FLIT_in__1;
    input [66:0] FLIT_in__2;
    wire [66:0] FLIT_in__2;
    input [66:0] FLIT_in__3;
    wire [66:0] FLIT_in__3;
    input [66:0] FLIT_in__4;
    wire [66:0] FLIT_in__4;
    input [66:0] FLIT_in__5;
    wire [66:0] FLIT_in__5;
    input VALID_in__0;
    wire VALID_in__0;
    input VALID_in__1;
    wire VALID_in__1;
    input VALID_in__2;
    wire VALID_in__2;
    input VALID_in__3;
    wire VALID_in__3;
    input VALID_in__4;
    wire VALID_in__4;
    input VALID_in__5;
    wire VALID_in__5;
    input FWDAUX1_in__0;
    wire FWDAUX1_in__0;
    input FWDAUX1_in__1;
    wire FWDAUX1_in__1;
    input FWDAUX1_in__2;
    wire FWDAUX1_in__2;
    input FWDAUX1_in__3;
    wire FWDAUX1_in__3;
    input FWDAUX1_in__4;
    wire FWDAUX1_in__4;
    input FWDAUX1_in__5;
    wire FWDAUX1_in__5;
    input [2:0] which_port;
    wire [2:0] which_port;
    output [5:0] select;
    reg [5:0] select;
    output [5:0] BWDAUX1_out;
    reg [5:0] BWDAUX1_out;
    output [5:0] BWDAUX2_out;
    reg [5:0] BWDAUX2_out;
    output [5:0] BWDAUX3_out;
    reg [5:0] BWDAUX3_out;
    input busy_in;
    wire busy_in;
    output shift_ctl;
    reg shift_ctl;
    reg [5:0] VALID_in__curr;
    reg [66:0] FLIT_in__curr [5:0];
    reg [5:0] is_request;
    reg [2:0] loop__loop_41;
    reg [66:0] flit_in_temp [5:0];
    reg [5:0] not_dummy;
    reg am_busy;
    reg [66:0] __tmp7150;
    reg [2:0] loop__loop_65;
    reg [2:0] tmp;
    reg [5:0] res_h;
    reg [5:0] res_p;
    reg [5:0] res_t;
    reg [66:0] __tmp7151;
    reg [5:0] match;
    reg [5:0] busy_buff;
    reg [5:0] head;
    reg [5:0] tail;
    reg [5:0] request;
    reg [5:0] want;
    reg [5:0] last_sel;
    reg avail;
    reg [4:0] pass;
    reg [2:0] loop__loop_149;
    reg [5:0] grant;
    reg [5:0] sel_int;
    reg [5:0] accept;
    reg [5:0] not_accept;
    reg [5:0] last_sel_next;
    
    always @(FLIT_in__0 or VALID_in__0 or FWDAUX1_in__0 or FLIT_in__1 or VALID_in__1 or FWDAUX1_in__1 or FLIT_in__2 or VALID_in__2 or FWDAUX1_in__2 or FLIT_in__3 or VALID_in__3 or FWDAUX1_in__3 or FLIT_in__4 or VALID_in__4 or FWDAUX1_in__4 or FLIT_in__5 or VALID_in__5 or FWDAUX1_in__5 or which_port or last_sel or busy_in)
        begin : combinational
            VALID_in__curr[5] = VALID_in__5;
            VALID_in__curr[4] = VALID_in__4;
            VALID_in__curr[3] = VALID_in__3;
            VALID_in__curr[2] = VALID_in__2;
            VALID_in__curr[1] = VALID_in__1;
            VALID_in__curr[0] = VALID_in__0;
            FLIT_in__curr[5] = FLIT_in__5;
            FLIT_in__curr[4] = FLIT_in__4;
            FLIT_in__curr[3] = FLIT_in__3;
            FLIT_in__curr[2] = FLIT_in__2;
            FLIT_in__curr[1] = FLIT_in__1;
            FLIT_in__curr[0] = FLIT_in__0;
            for (loop__loop_41 = 3'b000 ; loop__loop_41 < 3'b110 ; loop__loop_41 = 3'b001 + loop__loop_41)
            begin
                is_request[loop__loop_41] = VALID_in__curr[loop__loop_41];
                flit_in_temp[loop__loop_41] = FLIT_in__curr[loop__loop_41];
            end
            not_dummy = is_request;
            am_busy = busy_in;
            for (loop__loop_65 = 3'b000 ; loop__loop_65 < 3'b110 ; loop__loop_65 = 3'b001 + loop__loop_65)
            begin
                __tmp7150 = flit_in_temp[loop__loop_65];
                tmp = __tmp7150[2:0];
                res_h[loop__loop_65] = tmp == 3'b011;
                res_p[loop__loop_65] = tmp == 3'b010;
                res_t[loop__loop_65] = tmp == 3'b000;
                __tmp7151 = flit_in_temp[loop__loop_65];
                match[loop__loop_65] = __tmp7151[5:3] == which_port;
                busy_buff[loop__loop_65] = am_busy;
            end
            head = res_h & not_dummy;
            tail = res_t & not_dummy;
            request = head & match;
            want = (request | last_sel) & not_dummy;
            avail = !(| (last_sel)) & !am_busy;
            pass = 5'b00000;
            pass[3'b000] = avail & !request[3'b000];
            for (loop__loop_149 = 3'b001 ; loop__loop_149 < 3'b101 ; loop__loop_149 = 3'b001 + loop__loop_149)
                        pass[loop__loop_149] = pass[$unsigned($signed(loop__loop_149) - 3'sb001)] & !request[loop__loop_149];
            grant = request & {pass, avail};
            select <= grant | last_sel & not_dummy;
            sel_int = grant | last_sel;
            accept = want & sel_int & ~busy_buff;
            not_accept = want & (~sel_int | busy_buff);
            BWDAUX1_out <= not_accept;
            BWDAUX2_out <= 6'b000000;
            BWDAUX3_out <= 6'b000000;
            last_sel_next <= grant | last_sel & (~tail | ~accept);
            shift_ctl <= | (grant);
        end

    
    always @(posedge clk or negedge rst)
        begin : flip_flops
            if (rst == 0)
                last_sel <= 6'b000000;
            else
                last_sel <= last_sel_next;
        end

endmodule
