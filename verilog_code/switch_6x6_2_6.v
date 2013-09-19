module switch_6x6_2_6(clk, rst, FLIT_in__0, FLIT_in__1, FLIT_in__2, FLIT_in__3, FLIT_in__4, FLIT_in__5, VALID_in__0, VALID_in__1, VALID_in__2, VALID_in__3, VALID_in__4, VALID_in__5, FWDAUX1_in__0, FWDAUX1_in__1, FWDAUX1_in__2, FWDAUX1_in__3, FWDAUX1_in__4, FWDAUX1_in__5, BWDAUX1_out__0, BWDAUX1_out__1, BWDAUX1_out__2, BWDAUX1_out__3, BWDAUX1_out__4, BWDAUX1_out__5, BWDAUX2_out__0, BWDAUX2_out__1, BWDAUX2_out__2, BWDAUX2_out__3, BWDAUX2_out__4, BWDAUX2_out__5, BWDAUX3_out__0, BWDAUX3_out__1, BWDAUX3_out__2, BWDAUX3_out__3, BWDAUX3_out__4, BWDAUX3_out__5, FLIT_out__0, FLIT_out__1, FLIT_out__2, FLIT_out__3, FLIT_out__4, FLIT_out__5, VALID_out__0, VALID_out__1, VALID_out__2, VALID_out__3, VALID_out__4, VALID_out__5, FWDAUX1_out__0, FWDAUX1_out__1, FWDAUX1_out__2, FWDAUX1_out__3, FWDAUX1_out__4, FWDAUX1_out__5, BWDAUX1_in__0, BWDAUX1_in__1, BWDAUX1_in__2, BWDAUX1_in__3, BWDAUX1_in__4, BWDAUX1_in__5, BWDAUX2_in__0, BWDAUX2_in__1, BWDAUX2_in__2, BWDAUX2_in__3, BWDAUX2_in__4, BWDAUX2_in__5, BWDAUX3_in__0, 
BWDAUX3_in__1, BWDAUX3_in__2, BWDAUX3_in__3, BWDAUX3_in__4, BWDAUX3_in__5);
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
    output BWDAUX1_out__0;
    output BWDAUX1_out__1;
    output BWDAUX1_out__2;
    output BWDAUX1_out__3;
    output BWDAUX1_out__4;
    output BWDAUX1_out__5;
    output BWDAUX2_out__0;
    output BWDAUX2_out__1;
    output BWDAUX2_out__2;
    output BWDAUX2_out__3;
    output BWDAUX2_out__4;
    output BWDAUX2_out__5;
    output BWDAUX3_out__0;
    output BWDAUX3_out__1;
    output BWDAUX3_out__2;
    output BWDAUX3_out__3;
    output BWDAUX3_out__4;
    output BWDAUX3_out__5;
    output [66:0] FLIT_out__0;
    reg [66:0] FLIT_out__0;
    output [66:0] FLIT_out__1;
    reg [66:0] FLIT_out__1;
    output [66:0] FLIT_out__2;
    reg [66:0] FLIT_out__2;
    output [66:0] FLIT_out__3;
    reg [66:0] FLIT_out__3;
    output [66:0] FLIT_out__4;
    reg [66:0] FLIT_out__4;
    output [66:0] FLIT_out__5;
    reg [66:0] FLIT_out__5;
    output VALID_out__0;
    reg VALID_out__0;
    output VALID_out__1;
    reg VALID_out__1;
    output VALID_out__2;
    reg VALID_out__2;
    output VALID_out__3;
    reg VALID_out__3;
    output VALID_out__4;
    reg VALID_out__4;
    output VALID_out__5;
    reg VALID_out__5;
    output FWDAUX1_out__0;
    output FWDAUX1_out__1;
    output FWDAUX1_out__2;
    output FWDAUX1_out__3;
    output FWDAUX1_out__4;
    output FWDAUX1_out__5;
    input BWDAUX1_in__0;
    wire BWDAUX1_in__0;
    input BWDAUX1_in__1;
    wire BWDAUX1_in__1;
    input BWDAUX1_in__2;
    wire BWDAUX1_in__2;
    input BWDAUX1_in__3;
    wire BWDAUX1_in__3;
    input BWDAUX1_in__4;
    wire BWDAUX1_in__4;
    input BWDAUX1_in__5;
    wire BWDAUX1_in__5;
    input BWDAUX2_in__0;
    wire BWDAUX2_in__0;
    input BWDAUX2_in__1;
    wire BWDAUX2_in__1;
    input BWDAUX2_in__2;
    wire BWDAUX2_in__2;
    input BWDAUX2_in__3;
    wire BWDAUX2_in__3;
    input BWDAUX2_in__4;
    wire BWDAUX2_in__4;
    input BWDAUX2_in__5;
    wire BWDAUX2_in__5;
    input BWDAUX3_in__0;
    wire BWDAUX3_in__0;
    input BWDAUX3_in__1;
    wire BWDAUX3_in__1;
    input BWDAUX3_in__2;
    wire BWDAUX3_in__2;
    input BWDAUX3_in__3;
    wire BWDAUX3_in__3;
    input BWDAUX3_in__4;
    wire BWDAUX3_in__4;
    input BWDAUX3_in__5;
    wire BWDAUX3_in__5;
    reg [5:0] BWDAUX3_out_c__next;
    reg BWDAUX3_out_c__5;
    reg BWDAUX3_out_c__4;
    reg BWDAUX3_out_c__3;
    reg BWDAUX3_out_c__2;
    reg BWDAUX3_out_c__1;
    reg BWDAUX3_out_c__0;
    reg [5:0] BWDAUX2_out_c__next;
    reg BWDAUX2_out_c__5;
    reg BWDAUX2_out_c__4;
    reg BWDAUX2_out_c__3;
    reg BWDAUX2_out_c__2;
    reg BWDAUX2_out_c__1;
    reg BWDAUX2_out_c__0;
    reg [5:0] BWDAUX1_out_c__next;
    reg BWDAUX1_out_c__5;
    reg BWDAUX1_out_c__4;
    reg BWDAUX1_out_c__3;
    reg BWDAUX1_out_c__2;
    reg BWDAUX1_out_c__1;
    reg BWDAUX1_out_c__0;
    reg [5:0] alloc_BWDAUX3_out__curr [5:0];
    wire [5:0] alloc_BWDAUX3_out__5;
    wire [5:0] alloc_BWDAUX3_out__4;
    wire [5:0] alloc_BWDAUX3_out__3;
    wire [5:0] alloc_BWDAUX3_out__2;
    wire [5:0] alloc_BWDAUX3_out__1;
    wire [5:0] alloc_BWDAUX3_out__0;
    reg [5:0] alloc_BWDAUX2_out__curr [5:0];
    wire [5:0] alloc_BWDAUX2_out__5;
    wire [5:0] alloc_BWDAUX2_out__4;
    wire [5:0] alloc_BWDAUX2_out__3;
    wire [5:0] alloc_BWDAUX2_out__2;
    wire [5:0] alloc_BWDAUX2_out__1;
    wire [5:0] alloc_BWDAUX2_out__0;
    reg [5:0] alloc_BWDAUX1_out__curr [5:0];
    wire [5:0] alloc_BWDAUX1_out__5;
    wire [5:0] alloc_BWDAUX1_out__4;
    wire [5:0] alloc_BWDAUX1_out__3;
    wire [5:0] alloc_BWDAUX1_out__2;
    wire [5:0] alloc_BWDAUX1_out__1;
    wire [5:0] alloc_BWDAUX1_out__0;
    reg [5:0] fifo_valid_write__curr;
    reg fifo_valid_write__5;
    reg fifo_valid_write__4;
    reg fifo_valid_write__3;
    reg fifo_valid_write__2;
    reg fifo_valid_write__1;
    reg fifo_valid_write__0;
    reg [5:0] full__next;
    reg full__5;
    reg full__4;
    reg full__3;
    reg full__2;
    reg full__1;
    reg full__0;
    reg [66:0] shift__curr [5:0];
    reg [66:0] shift__5;
    reg [66:0] shift__4;
    reg [66:0] shift__3;
    reg [66:0] shift__2;
    reg [66:0] shift__1;
    reg [66:0] shift__0;
    reg [5:0] BWDAUX1_in__curr;
    reg [5:0] VALID_out__next;
    reg [66:0] FLIT_out__next [5:0];
    reg [5:0] b [5:0];
    reg [2:0] loop__loop_34;
    reg [5:0] t;
    reg [2:0] loop__loop_37;
    reg [5:0] __tmp7152;
    reg [2:0] loop2__loop_40;
    reg [2:0] loop__loop_44;
    reg [2:0] loop__loop_47;
    reg [2:0] loop__loop_50;
    reg [5:0] __tmp7153;
    reg [2:0] loop2__loop_53;
    reg [2:0] loop__loop_57;
    reg [2:0] loop__loop_60;
    reg [2:0] loop__loop_63;
    reg [5:0] __tmp7154;
    reg [2:0] loop2__loop_66;
    reg [2:0] loop__loop_70;
    reg [2:0] loop__loop_81;
    reg [5:0] using_input__0;
    reg [5:0] using_input__1;
    reg [5:0] using_input__2;
    reg [5:0] using_input__3;
    reg [5:0] using_input__4;
    reg [5:0] using_input__5;
    reg [5:0] fifo_valid_write__next;
    reg [5:0] full__curr;
    reg [5:0] mux_sel__curr [5:0];
    wire [5:0] mux_sel__5;
    wire [5:0] mux_sel__4;
    wire [5:0] mux_sel__3;
    wire [5:0] mux_sel__2;
    wire [5:0] mux_sel__1;
    wire [5:0] mux_sel__0;
    reg [66:0] mux__next [5:0];
    reg [66:0] mux__5;
    reg [66:0] mux__4;
    reg [66:0] mux__3;
    reg [66:0] mux__2;
    reg [66:0] mux__1;
    reg [66:0] mux__0;
    reg [66:0] FLIT_in_s__curr [5:0];
    wire [66:0] FLIT_in_s__5;
    wire [66:0] FLIT_in_s__4;
    wire [66:0] FLIT_in_s__3;
    wire [66:0] FLIT_in_s__2;
    wire [66:0] FLIT_in_s__1;
    wire [66:0] FLIT_in_s__0;
    reg [2:0] loop__loop_97;
    reg [2:0] loop2__loop_105;
    reg [5:0] mask;
    reg [5:0] __tmp7181;
    reg [5:0] shift_ctl__curr;
    wire shift_ctl__5;
    wire shift_ctl__4;
    wire shift_ctl__3;
    wire shift_ctl__2;
    wire shift_ctl__1;
    wire shift_ctl__0;
    reg [66:0] shift__next [5:0];
    reg [66:0] mux__curr [5:0];
    reg [66:0] shift_temp;
    reg [2:0] loop__loop_133;
    wire VALID_in_s__5;
    wire VALID_in_s__4;
    wire VALID_in_s__3;
    wire VALID_in_s__2;
    wire VALID_in_s__1;
    wire VALID_in_s__0;
    wire FWDAUX1_in_s__0;
    wire FWDAUX1_in_s__1;
    wire FWDAUX1_in_s__2;
    wire FWDAUX1_in_s__3;
    wire FWDAUX1_in_s__4;
    wire FWDAUX1_in_s__5;
    wire [2:0] allocator_constant [5:0];
    
    always @(alloc_BWDAUX1_out__0 or alloc_BWDAUX2_out__0 or alloc_BWDAUX3_out__0 or shift__0 or fifo_valid_write__0 or BWDAUX1_in__0 or using_input__0 or alloc_BWDAUX1_out__1 or alloc_BWDAUX2_out__1 or alloc_BWDAUX3_out__1 or shift__1 or fifo_valid_write__1 or BWDAUX1_in__1 or using_input__1 or alloc_BWDAUX1_out__2 or alloc_BWDAUX2_out__2 or alloc_BWDAUX3_out__2 or shift__2 or fifo_valid_write__2 or BWDAUX1_in__2 or using_input__2 or alloc_BWDAUX1_out__3 or alloc_BWDAUX2_out__3 or alloc_BWDAUX3_out__3 or shift__3 or fifo_valid_write__3 or BWDAUX1_in__3 or using_input__3 or alloc_BWDAUX1_out__4 or alloc_BWDAUX2_out__4 or alloc_BWDAUX3_out__4 or shift__4 or fifo_valid_write__4 or BWDAUX1_in__4 or using_input__4 or alloc_BWDAUX1_out__5 or alloc_BWDAUX2_out__5 or alloc_BWDAUX3_out__5 or shift__5 or fifo_valid_write__5 or BWDAUX1_in__5 or using_input__5 or BWDAUX3_out_c__0 or BWDAUX3_out_c__1 or BWDAUX3_out_c__2 or BWDAUX3_out_c__3 or BWDAUX3_out_c__4 or BWDAUX3_out_c__5 or BWDAUX2_out_c__0 or 
BWDAUX2_out_c__1 or BWDAUX2_out_c__2 or BWDAUX2_out_c__3 or BWDAUX2_out_c__4 or BWDAUX2_out_c__5 or BWDAUX1_out_c__0 or BWDAUX1_out_c__1 or BWDAUX1_out_c__2 or BWDAUX1_out_c__3 or BWDAUX1_out_c__4 or BWDAUX1_out_c__5 or full__0 or full__1 or full__2 or full__3 or full__4 or full__5 or VALID_out__0 or VALID_out__1 or VALID_out__2 or VALID_out__3 or VALID_out__4 or VALID_out__5 or FLIT_out__0 or FLIT_out__1 or FLIT_out__2 or FLIT_out__3 or FLIT_out__4 or FLIT_out__5)
        begin : combinational
            BWDAUX3_out_c__next[5] = BWDAUX3_out_c__5;
            BWDAUX3_out_c__next[4] = BWDAUX3_out_c__4;
            BWDAUX3_out_c__next[3] = BWDAUX3_out_c__3;
            BWDAUX3_out_c__next[2] = BWDAUX3_out_c__2;
            BWDAUX3_out_c__next[1] = BWDAUX3_out_c__1;
            BWDAUX3_out_c__next[0] = BWDAUX3_out_c__0;
            BWDAUX2_out_c__next[5] = BWDAUX2_out_c__5;
            BWDAUX2_out_c__next[4] = BWDAUX2_out_c__4;
            BWDAUX2_out_c__next[3] = BWDAUX2_out_c__3;
            BWDAUX2_out_c__next[2] = BWDAUX2_out_c__2;
            BWDAUX2_out_c__next[1] = BWDAUX2_out_c__1;
            BWDAUX2_out_c__next[0] = BWDAUX2_out_c__0;
            BWDAUX1_out_c__next[5] = BWDAUX1_out_c__5;
            BWDAUX1_out_c__next[4] = BWDAUX1_out_c__4;
            BWDAUX1_out_c__next[3] = BWDAUX1_out_c__3;
            BWDAUX1_out_c__next[2] = BWDAUX1_out_c__2;
            BWDAUX1_out_c__next[1] = BWDAUX1_out_c__1;
            BWDAUX1_out_c__next[0] = BWDAUX1_out_c__0;
            alloc_BWDAUX3_out__curr[5] = alloc_BWDAUX3_out__5;
            alloc_BWDAUX3_out__curr[4] = alloc_BWDAUX3_out__4;
            alloc_BWDAUX3_out__curr[3] = alloc_BWDAUX3_out__3;
            alloc_BWDAUX3_out__curr[2] = alloc_BWDAUX3_out__2;
            alloc_BWDAUX3_out__curr[1] = alloc_BWDAUX3_out__1;
            alloc_BWDAUX3_out__curr[0] = alloc_BWDAUX3_out__0;
            alloc_BWDAUX2_out__curr[5] = alloc_BWDAUX2_out__5;
            alloc_BWDAUX2_out__curr[4] = alloc_BWDAUX2_out__4;
            alloc_BWDAUX2_out__curr[3] = alloc_BWDAUX2_out__3;
            alloc_BWDAUX2_out__curr[2] = alloc_BWDAUX2_out__2;
            alloc_BWDAUX2_out__curr[1] = alloc_BWDAUX2_out__1;
            alloc_BWDAUX2_out__curr[0] = alloc_BWDAUX2_out__0;
            alloc_BWDAUX1_out__curr[5] = alloc_BWDAUX1_out__5;
            alloc_BWDAUX1_out__curr[4] = alloc_BWDAUX1_out__4;
            alloc_BWDAUX1_out__curr[3] = alloc_BWDAUX1_out__3;
            alloc_BWDAUX1_out__curr[2] = alloc_BWDAUX1_out__2;
            alloc_BWDAUX1_out__curr[1] = alloc_BWDAUX1_out__1;
            alloc_BWDAUX1_out__curr[0] = alloc_BWDAUX1_out__0;
            fifo_valid_write__curr[5] = fifo_valid_write__5;
            fifo_valid_write__curr[4] = fifo_valid_write__4;
            fifo_valid_write__curr[3] = fifo_valid_write__3;
            fifo_valid_write__curr[2] = fifo_valid_write__2;
            fifo_valid_write__curr[1] = fifo_valid_write__1;
            fifo_valid_write__curr[0] = fifo_valid_write__0;
            full__next[5] = full__5;
            full__next[4] = full__4;
            full__next[3] = full__3;
            full__next[2] = full__2;
            full__next[1] = full__1;
            full__next[0] = full__0;
            shift__curr[5] = shift__5;
            shift__curr[4] = shift__4;
            shift__curr[3] = shift__3;
            shift__curr[2] = shift__2;
            shift__curr[1] = shift__1;
            shift__curr[0] = shift__0;
            BWDAUX1_in__curr[5] = BWDAUX1_in__5;
            BWDAUX1_in__curr[4] = BWDAUX1_in__4;
            BWDAUX1_in__curr[3] = BWDAUX1_in__3;
            BWDAUX1_in__curr[2] = BWDAUX1_in__2;
            BWDAUX1_in__curr[1] = BWDAUX1_in__1;
            BWDAUX1_in__curr[0] = BWDAUX1_in__0;
            VALID_out__next[5] = VALID_out__5;
            VALID_out__next[4] = VALID_out__4;
            VALID_out__next[3] = VALID_out__3;
            VALID_out__next[2] = VALID_out__2;
            VALID_out__next[1] = VALID_out__1;
            VALID_out__next[0] = VALID_out__0;
            FLIT_out__next[5] = FLIT_out__5;
            FLIT_out__next[4] = FLIT_out__4;
            FLIT_out__next[3] = FLIT_out__3;
            FLIT_out__next[2] = FLIT_out__2;
            FLIT_out__next[1] = FLIT_out__1;
            FLIT_out__next[0] = FLIT_out__0;
            for (loop__loop_34 = 3'b000 ; loop__loop_34 < 3'b110 ; loop__loop_34 = 3'b001 + loop__loop_34)
                        b[loop__loop_34] = alloc_BWDAUX1_out__curr[loop__loop_34];
            for (loop__loop_37 = 3'b000 ; loop__loop_37 < 3'b110 ; loop__loop_37 = 3'b001 + loop__loop_37)
            begin
                t[loop__loop_37] = 0;
                for (loop2__loop_40 = 3'b000 ; loop2__loop_40 < 3'b110 ; loop2__loop_40 = 3'b001 + loop2__loop_40)
                begin
                    __tmp7152 = b[loop2__loop_40];
                    t[loop__loop_37] = t[loop__loop_37] | __tmp7152[loop__loop_37];
                end
            end
            for (loop__loop_44 = 3'b000 ; loop__loop_44 < 3'b110 ; loop__loop_44 = 3'b001 + loop__loop_44)
                        BWDAUX1_out_c__next[loop__loop_44] = t[loop__loop_44];
            for (loop__loop_47 = 3'b000 ; loop__loop_47 < 3'b110 ; loop__loop_47 = 3'b001 + loop__loop_47)
                        b[loop__loop_47] = alloc_BWDAUX2_out__curr[loop__loop_47];
            for (loop__loop_50 = 3'b000 ; loop__loop_50 < 3'b110 ; loop__loop_50 = 3'b001 + loop__loop_50)
            begin
                t[loop__loop_50] = 0;
                for (loop2__loop_53 = 3'b000 ; loop2__loop_53 < 3'b110 ; loop2__loop_53 = 3'b001 + loop2__loop_53)
                begin
                    __tmp7153 = b[loop2__loop_53];
                    t[loop__loop_50] = t[loop__loop_50] | __tmp7153[loop__loop_50];
                end
            end
            for (loop__loop_57 = 3'b000 ; loop__loop_57 < 3'b110 ; loop__loop_57 = 3'b001 + loop__loop_57)
                        BWDAUX2_out_c__next[loop__loop_57] = t[loop__loop_57];
            for (loop__loop_60 = 3'b000 ; loop__loop_60 < 3'b110 ; loop__loop_60 = 3'b001 + loop__loop_60)
                        b[loop__loop_60] = alloc_BWDAUX3_out__curr[loop__loop_60];
            for (loop__loop_63 = 3'b000 ; loop__loop_63 < 3'b110 ; loop__loop_63 = 3'b001 + loop__loop_63)
            begin
                t[loop__loop_63] = 0;
                for (loop2__loop_66 = 3'b000 ; loop2__loop_66 < 3'b110 ; loop2__loop_66 = 3'b001 + loop2__loop_66)
                begin
                    __tmp7154 = b[loop2__loop_66];
                    t[loop__loop_63] = t[loop__loop_63] | __tmp7154[loop__loop_63];
                end
            end
            for (loop__loop_70 = 3'b000 ; loop__loop_70 < 3'b110 ; loop__loop_70 = 3'b001 + loop__loop_70)
                        BWDAUX3_out_c__next[loop__loop_70] = t[loop__loop_70];
            for (loop__loop_81 = 3'b000 ; loop__loop_81 < 3'b110 ; loop__loop_81 = 3'b001 + loop__loop_81)
            begin
                FLIT_out__next[loop__loop_81] = shift__curr[loop__loop_81];
                VALID_out__next[loop__loop_81] = fifo_valid_write__curr[loop__loop_81];
                full__next[loop__loop_81] = BWDAUX1_in__curr[loop__loop_81];
            end
            FLIT_out__0 <= FLIT_out__next[0];
            FLIT_out__1 <= FLIT_out__next[1];
            FLIT_out__2 <= FLIT_out__next[2];
            FLIT_out__3 <= FLIT_out__next[3];
            FLIT_out__4 <= FLIT_out__next[4];
            FLIT_out__5 <= FLIT_out__next[5];
            VALID_out__0 <= VALID_out__next[0];
            VALID_out__1 <= VALID_out__next[1];
            VALID_out__2 <= VALID_out__next[2];
            VALID_out__3 <= VALID_out__next[3];
            VALID_out__4 <= VALID_out__next[4];
            VALID_out__5 <= VALID_out__next[5];
            full__0 <= full__next[0];
            full__1 <= full__next[1];
            full__2 <= full__next[2];
            full__3 <= full__next[3];
            full__4 <= full__next[4];
            full__5 <= full__next[5];
            BWDAUX1_out_c__0 <= BWDAUX1_out_c__next[0];
            BWDAUX1_out_c__1 <= BWDAUX1_out_c__next[1];
            BWDAUX1_out_c__2 <= BWDAUX1_out_c__next[2];
            BWDAUX1_out_c__3 <= BWDAUX1_out_c__next[3];
            BWDAUX1_out_c__4 <= BWDAUX1_out_c__next[4];
            BWDAUX1_out_c__5 <= BWDAUX1_out_c__next[5];
            BWDAUX2_out_c__0 <= BWDAUX2_out_c__next[0];
            BWDAUX2_out_c__1 <= BWDAUX2_out_c__next[1];
            BWDAUX2_out_c__2 <= BWDAUX2_out_c__next[2];
            BWDAUX2_out_c__3 <= BWDAUX2_out_c__next[3];
            BWDAUX2_out_c__4 <= BWDAUX2_out_c__next[4];
            BWDAUX2_out_c__5 <= BWDAUX2_out_c__next[5];
            BWDAUX3_out_c__0 <= BWDAUX3_out_c__next[0];
            BWDAUX3_out_c__1 <= BWDAUX3_out_c__next[1];
            BWDAUX3_out_c__2 <= BWDAUX3_out_c__next[2];
            BWDAUX3_out_c__3 <= BWDAUX3_out_c__next[3];
            BWDAUX3_out_c__4 <= BWDAUX3_out_c__next[4];
            BWDAUX3_out_c__5 <= BWDAUX3_out_c__next[5];
        end

    
    always @(FLIT_in_s__0 or FLIT_in_s__1 or FLIT_in_s__2 or FLIT_in_s__3 or FLIT_in_s__4 or FLIT_in_s__5 or mux_sel__0 or full__0 or mux_sel__1 or full__1 or mux_sel__2 or full__2 or mux_sel__3 or full__3 or mux_sel__4 or full__4 or mux_sel__5 or full__5 or fifo_valid_write__0 or fifo_valid_write__1 or fifo_valid_write__2 or fifo_valid_write__3 or fifo_valid_write__4 or fifo_valid_write__5 or mux__0 or mux__1 or mux__2 or mux__3 or mux__4 or mux__5)
        begin : multiplexers
            fifo_valid_write__next[5] = fifo_valid_write__5;
            fifo_valid_write__next[4] = fifo_valid_write__4;
            fifo_valid_write__next[3] = fifo_valid_write__3;
            fifo_valid_write__next[2] = fifo_valid_write__2;
            fifo_valid_write__next[1] = fifo_valid_write__1;
            fifo_valid_write__next[0] = fifo_valid_write__0;
            full__curr[5] = full__5;
            full__curr[4] = full__4;
            full__curr[3] = full__3;
            full__curr[2] = full__2;
            full__curr[1] = full__1;
            full__curr[0] = full__0;
            mux_sel__curr[5] = mux_sel__5;
            mux_sel__curr[4] = mux_sel__4;
            mux_sel__curr[3] = mux_sel__3;
            mux_sel__curr[2] = mux_sel__2;
            mux_sel__curr[1] = mux_sel__1;
            mux_sel__curr[0] = mux_sel__0;
            mux__next[5] = mux__5;
            mux__next[4] = mux__4;
            mux__next[3] = mux__3;
            mux__next[2] = mux__2;
            mux__next[1] = mux__1;
            mux__next[0] = mux__0;
            FLIT_in_s__curr[5] = FLIT_in_s__5;
            FLIT_in_s__curr[4] = FLIT_in_s__4;
            FLIT_in_s__curr[3] = FLIT_in_s__3;
            FLIT_in_s__curr[2] = FLIT_in_s__2;
            FLIT_in_s__curr[1] = FLIT_in_s__1;
            FLIT_in_s__curr[0] = FLIT_in_s__0;
            for (loop__loop_97 = 3'b000 ; loop__loop_97 < 3'b110 ; loop__loop_97 = 3'b001 + loop__loop_97)
            begin
                mux__next[loop__loop_97] = 67'b0000000000000000000000000000000000000000000000000000000000000000000;
                loop2__loop_105 = 3'b000;
                for (mask = 6'b000001 ; loop2__loop_105 < 3'b110 ; loop2__loop_105 = 3'b001 + loop2__loop_105)
                begin
                    if (mux_sel__curr[loop__loop_97] == mask)
                        mux__next[loop__loop_97] = FLIT_in_s__curr[loop2__loop_105];
                    __tmp7181 = mask[4:0];
                    mask = (__tmp7181 << 1'b1);
                end
                if (mux_sel__curr[loop__loop_97] == 6'b000000)
                    fifo_valid_write__next[loop__loop_97] = 0;
                else
                    fifo_valid_write__next[loop__loop_97] = !full__curr[loop__loop_97];
            end
            mux__0 <= mux__next[0];
            mux__1 <= mux__next[1];
            mux__2 <= mux__next[2];
            mux__3 <= mux__next[3];
            mux__4 <= mux__next[4];
            mux__5 <= mux__next[5];
            fifo_valid_write__0 <= fifo_valid_write__next[0];
            fifo_valid_write__1 <= fifo_valid_write__next[1];
            fifo_valid_write__2 <= fifo_valid_write__next[2];
            fifo_valid_write__3 <= fifo_valid_write__next[3];
            fifo_valid_write__4 <= fifo_valid_write__next[4];
            fifo_valid_write__5 <= fifo_valid_write__next[5];
        end

    
    always @(mux__0 or shift_ctl__0 or mux__1 or shift_ctl__1 or mux__2 or shift_ctl__2 or mux__3 or shift_ctl__3 or mux__4 or shift_ctl__4 or mux__5 or shift_ctl__5 or shift__0 or shift__1 or shift__2 or shift__3 or shift__4 or shift__5)
        begin : shifters
            shift_ctl__curr[5] = shift_ctl__5;
            shift_ctl__curr[4] = shift_ctl__4;
            shift_ctl__curr[3] = shift_ctl__3;
            shift_ctl__curr[2] = shift_ctl__2;
            shift_ctl__curr[1] = shift_ctl__1;
            shift_ctl__curr[0] = shift_ctl__0;
            shift__next[5] = shift__5;
            shift__next[4] = shift__4;
            shift__next[3] = shift__3;
            shift__next[2] = shift__2;
            shift__next[1] = shift__1;
            shift__next[0] = shift__0;
            mux__curr[5] = mux__5;
            mux__curr[4] = mux__4;
            mux__curr[3] = mux__3;
            mux__curr[2] = mux__2;
            mux__curr[1] = mux__1;
            mux__curr[0] = mux__0;
            for (loop__loop_133 = 3'b000 ; loop__loop_133 < 3'b110 ; loop__loop_133 = 3'b001 + loop__loop_133)
            begin
                shift_temp = mux__curr[loop__loop_133];
                if (shift_ctl__curr[loop__loop_133])
                    {shift_temp[2], shift_temp[3]} = {shift_temp[5], shift_temp[6]};
                shift__next[loop__loop_133] = shift_temp;
            end
            shift__0 <= shift__next[0];
            shift__1 <= shift__next[1];
            shift__2 <= shift__next[2];
            shift__3 <= shift__next[3];
            shift__4 <= shift__next[4];
            shift__5 <= shift__next[5];
        end

    in_buffer_2 inbuff_5(.clk(clk), .rst(rst), .FLIT_in(FLIT_in__5), .VALID_in(VALID_in__5), .FWDAUX1_in(FWDAUX1_in__5), .BWDAUX1_out(BWDAUX1_out__5), .BWDAUX2_out(BWDAUX2_out__5), .BWDAUX3_out(BWDAUX3_out__5), .flit_out(FLIT_in_s__5), .request_out(VALID_in_s__5), .busy_out(BWDAUX1_out_c__5));
    in_buffer_2 inbuff_4(.clk(clk), .rst(rst), .FLIT_in(FLIT_in__4), .VALID_in(VALID_in__4), .FWDAUX1_in(FWDAUX1_in__4), .BWDAUX1_out(BWDAUX1_out__4), .BWDAUX2_out(BWDAUX2_out__4), .BWDAUX3_out(BWDAUX3_out__4), .flit_out(FLIT_in_s__4), .request_out(VALID_in_s__4), .busy_out(BWDAUX1_out_c__4));
    in_buffer_2 inbuff_3(.clk(clk), .rst(rst), .FLIT_in(FLIT_in__3), .VALID_in(VALID_in__3), .FWDAUX1_in(FWDAUX1_in__3), .BWDAUX1_out(BWDAUX1_out__3), .BWDAUX2_out(BWDAUX2_out__3), .BWDAUX3_out(BWDAUX3_out__3), .flit_out(FLIT_in_s__3), .request_out(VALID_in_s__3), .busy_out(BWDAUX1_out_c__3));
    in_buffer_2 inbuff_2(.clk(clk), .rst(rst), .FLIT_in(FLIT_in__2), .VALID_in(VALID_in__2), .FWDAUX1_in(FWDAUX1_in__2), .BWDAUX1_out(BWDAUX1_out__2), .BWDAUX2_out(BWDAUX2_out__2), .BWDAUX3_out(BWDAUX3_out__2), .flit_out(FLIT_in_s__2), .request_out(VALID_in_s__2), .busy_out(BWDAUX1_out_c__2));
    in_buffer_2 inbuff_1(.clk(clk), .rst(rst), .FLIT_in(FLIT_in__1), .VALID_in(VALID_in__1), .FWDAUX1_in(FWDAUX1_in__1), .BWDAUX1_out(BWDAUX1_out__1), .BWDAUX2_out(BWDAUX2_out__1), .BWDAUX3_out(BWDAUX3_out__1), .flit_out(FLIT_in_s__1), .request_out(VALID_in_s__1), .busy_out(BWDAUX1_out_c__1));
    in_buffer_2 inbuff_0(.clk(clk), .rst(rst), .FLIT_in(FLIT_in__0), .VALID_in(VALID_in__0), .FWDAUX1_in(FWDAUX1_in__0), .BWDAUX1_out(BWDAUX1_out__0), .BWDAUX2_out(BWDAUX2_out__0), .BWDAUX3_out(BWDAUX3_out__0), .flit_out(FLIT_in_s__0), .request_out(VALID_in_s__0), .busy_out(BWDAUX1_out_c__0));
    allocator_6x6 alloc_5(.clk(clk), .rst(rst), .FLIT_in__0(FLIT_in_s__0), .FLIT_in__1(FLIT_in_s__1), .FLIT_in__2(FLIT_in_s__2), .FLIT_in__3(FLIT_in_s__3), .FLIT_in__4(FLIT_in_s__4), .FLIT_in__5(FLIT_in_s__5), .VALID_in__0(VALID_in_s__0), .VALID_in__1(VALID_in_s__1), .VALID_in__2(VALID_in_s__2), .VALID_in__3(VALID_in_s__3), .VALID_in__4(VALID_in_s__4), .VALID_in__5(VALID_in_s__5), .FWDAUX1_in__0(FWDAUX1_in_s__0), .FWDAUX1_in__1(FWDAUX1_in_s__1), .FWDAUX1_in__2(FWDAUX1_in_s__2), .FWDAUX1_in__3(FWDAUX1_in_s__3), .FWDAUX1_in__4(FWDAUX1_in_s__4), .FWDAUX1_in__5(FWDAUX1_in_s__5), .which_port(allocator_constant[3'b101]), .select(mux_sel__5), .BWDAUX1_out(alloc_BWDAUX1_out__5), .BWDAUX2_out(alloc_BWDAUX2_out__5), .BWDAUX3_out(alloc_BWDAUX3_out__5), .busy_in(full__5), .shift_ctl(shift_ctl__5));
    allocator_6x6 alloc_4(.clk(clk), .rst(rst), .FLIT_in__0(FLIT_in_s__0), .FLIT_in__1(FLIT_in_s__1), .FLIT_in__2(FLIT_in_s__2), .FLIT_in__3(FLIT_in_s__3), .FLIT_in__4(FLIT_in_s__4), .FLIT_in__5(FLIT_in_s__5), .VALID_in__0(VALID_in_s__0), .VALID_in__1(VALID_in_s__1), .VALID_in__2(VALID_in_s__2), .VALID_in__3(VALID_in_s__3), .VALID_in__4(VALID_in_s__4), .VALID_in__5(VALID_in_s__5), .FWDAUX1_in__0(FWDAUX1_in_s__0), .FWDAUX1_in__1(FWDAUX1_in_s__1), .FWDAUX1_in__2(FWDAUX1_in_s__2), .FWDAUX1_in__3(FWDAUX1_in_s__3), .FWDAUX1_in__4(FWDAUX1_in_s__4), .FWDAUX1_in__5(FWDAUX1_in_s__5), .which_port(allocator_constant[3'b100]), .select(mux_sel__4), .BWDAUX1_out(alloc_BWDAUX1_out__4), .BWDAUX2_out(alloc_BWDAUX2_out__4), .BWDAUX3_out(alloc_BWDAUX3_out__4), .busy_in(full__4), .shift_ctl(shift_ctl__4));
    allocator_6x6 alloc_3(.clk(clk), .rst(rst), .FLIT_in__0(FLIT_in_s__0), .FLIT_in__1(FLIT_in_s__1), .FLIT_in__2(FLIT_in_s__2), .FLIT_in__3(FLIT_in_s__3), .FLIT_in__4(FLIT_in_s__4), .FLIT_in__5(FLIT_in_s__5), .VALID_in__0(VALID_in_s__0), .VALID_in__1(VALID_in_s__1), .VALID_in__2(VALID_in_s__2), .VALID_in__3(VALID_in_s__3), .VALID_in__4(VALID_in_s__4), .VALID_in__5(VALID_in_s__5), .FWDAUX1_in__0(FWDAUX1_in_s__0), .FWDAUX1_in__1(FWDAUX1_in_s__1), .FWDAUX1_in__2(FWDAUX1_in_s__2), .FWDAUX1_in__3(FWDAUX1_in_s__3), .FWDAUX1_in__4(FWDAUX1_in_s__4), .FWDAUX1_in__5(FWDAUX1_in_s__5), .which_port(allocator_constant[3'b011]), .select(mux_sel__3), .BWDAUX1_out(alloc_BWDAUX1_out__3), .BWDAUX2_out(alloc_BWDAUX2_out__3), .BWDAUX3_out(alloc_BWDAUX3_out__3), .busy_in(full__3), .shift_ctl(shift_ctl__3));
    allocator_6x6 alloc_2(.clk(clk), .rst(rst), .FLIT_in__0(FLIT_in_s__0), .FLIT_in__1(FLIT_in_s__1), .FLIT_in__2(FLIT_in_s__2), .FLIT_in__3(FLIT_in_s__3), .FLIT_in__4(FLIT_in_s__4), .FLIT_in__5(FLIT_in_s__5), .VALID_in__0(VALID_in_s__0), .VALID_in__1(VALID_in_s__1), .VALID_in__2(VALID_in_s__2), .VALID_in__3(VALID_in_s__3), .VALID_in__4(VALID_in_s__4), .VALID_in__5(VALID_in_s__5), .FWDAUX1_in__0(FWDAUX1_in_s__0), .FWDAUX1_in__1(FWDAUX1_in_s__1), .FWDAUX1_in__2(FWDAUX1_in_s__2), .FWDAUX1_in__3(FWDAUX1_in_s__3), .FWDAUX1_in__4(FWDAUX1_in_s__4), .FWDAUX1_in__5(FWDAUX1_in_s__5), .which_port(allocator_constant[3'b010]), .select(mux_sel__2), .BWDAUX1_out(alloc_BWDAUX1_out__2), .BWDAUX2_out(alloc_BWDAUX2_out__2), .BWDAUX3_out(alloc_BWDAUX3_out__2), .busy_in(full__2), .shift_ctl(shift_ctl__2));
    allocator_6x6 alloc_1(.clk(clk), .rst(rst), .FLIT_in__0(FLIT_in_s__0), .FLIT_in__1(FLIT_in_s__1), .FLIT_in__2(FLIT_in_s__2), .FLIT_in__3(FLIT_in_s__3), .FLIT_in__4(FLIT_in_s__4), .FLIT_in__5(FLIT_in_s__5), .VALID_in__0(VALID_in_s__0), .VALID_in__1(VALID_in_s__1), .VALID_in__2(VALID_in_s__2), .VALID_in__3(VALID_in_s__3), .VALID_in__4(VALID_in_s__4), .VALID_in__5(VALID_in_s__5), .FWDAUX1_in__0(FWDAUX1_in_s__0), .FWDAUX1_in__1(FWDAUX1_in_s__1), .FWDAUX1_in__2(FWDAUX1_in_s__2), .FWDAUX1_in__3(FWDAUX1_in_s__3), .FWDAUX1_in__4(FWDAUX1_in_s__4), .FWDAUX1_in__5(FWDAUX1_in_s__5), .which_port(allocator_constant[3'b001]), .select(mux_sel__1), .BWDAUX1_out(alloc_BWDAUX1_out__1), .BWDAUX2_out(alloc_BWDAUX2_out__1), .BWDAUX3_out(alloc_BWDAUX3_out__1), .busy_in(full__1), .shift_ctl(shift_ctl__1));
    allocator_6x6 alloc_0(.clk(clk), .rst(rst), .FLIT_in__0(FLIT_in_s__0), .FLIT_in__1(FLIT_in_s__1), .FLIT_in__2(FLIT_in_s__2), .FLIT_in__3(FLIT_in_s__3), .FLIT_in__4(FLIT_in_s__4), .FLIT_in__5(FLIT_in_s__5), .VALID_in__0(VALID_in_s__0), .VALID_in__1(VALID_in_s__1), .VALID_in__2(VALID_in_s__2), .VALID_in__3(VALID_in_s__3), .VALID_in__4(VALID_in_s__4), .VALID_in__5(VALID_in_s__5), .FWDAUX1_in__0(FWDAUX1_in_s__0), .FWDAUX1_in__1(FWDAUX1_in_s__1), .FWDAUX1_in__2(FWDAUX1_in_s__2), .FWDAUX1_in__3(FWDAUX1_in_s__3), .FWDAUX1_in__4(FWDAUX1_in_s__4), .FWDAUX1_in__5(FWDAUX1_in_s__5), .which_port(allocator_constant[3'b000]), .select(mux_sel__0), .BWDAUX1_out(alloc_BWDAUX1_out__0), .BWDAUX2_out(alloc_BWDAUX2_out__0), .BWDAUX3_out(alloc_BWDAUX3_out__0), .busy_in(full__0), .shift_ctl(shift_ctl__0));
    assign allocator_constant[3'b101] = 3'b101;
    assign allocator_constant[3'b100] = 3'b100;
    assign allocator_constant[3'b011] = 3'b011;
    assign allocator_constant[3'b010] = 3'b010;
    assign allocator_constant[3'b001] = 3'b001;
    assign allocator_constant[3'b000] = 3'b000;
endmodule
