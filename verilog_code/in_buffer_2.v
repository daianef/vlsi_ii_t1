module in_buffer_2(clk, rst, FLIT_in, VALID_in, FWDAUX1_in, BWDAUX1_out, BWDAUX2_out, BWDAUX3_out, flit_out, request_out, busy_out);
    input clk;
    wire clk;
    input rst;
    wire rst;
    input [66:0] FLIT_in;
    wire [66:0] FLIT_in;
    input VALID_in;
    wire VALID_in;
    input FWDAUX1_in;
    wire FWDAUX1_in;
    output BWDAUX1_out;
    reg BWDAUX1_out;
    output BWDAUX2_out;
    reg BWDAUX2_out;
    output BWDAUX3_out;
    reg BWDAUX3_out;
    output [66:0] flit_out;
    reg [66:0] flit_out;
    output request_out;
    reg request_out;
    input busy_out;
    wire busy_out;
    reg [1:0] CS;
    reg [1:0] NS;
    reg enable_0;
    reg enable_all;
    reg [1:0] sel;
    reg [66:0] flit__curr [1:0];
    reg [66:0] flit__1;
    reg [66:0] flit__0;
    reg [66:0] mux_out;
    reg [0:0] loop__loop_747;
    reg [1:0] mask;
    reg [1:0] __tmp7179;
    reg [66:0] flit__curr__2 [1:0];
    reg [66:0] flit__next [1:0];
    reg [0:0] loop__loop_764;
    reg [1:0] loop__loop_775;
    
    always @(posedge clk or negedge rst)
        begin : update_fsm
            if (rst == 0)
                CS <= 2'b00;
            else
                CS <= NS;
        end

    
    always @(CS or VALID_in or busy_out)
        begin : compute_fsm_state
            case (CS) //synopsys parallel_case
            2'b00:              if (!VALID_in)
                NS <= 2'b00;
            else
                NS <= 2'b01;
            2'b01:              if (!VALID_in && !busy_out)
                NS <= 2'b00;
            else
            begin
                if (VALID_in && !busy_out || !VALID_in && busy_out)
                    NS <= 2'b01;
                else
                    NS <= 2'b10;
            end
            2'b10:              if (busy_out)
                NS <= 2'b10;
            else
                NS <= 2'b01;
            default : begin 
                NS <= 2'b00;
                end
            endcase
        end

    
    always @(CS or VALID_in or busy_out)
        begin : compute_output
            BWDAUX2_out <= 0;
            BWDAUX3_out <= 0;
            case (CS) //synopsys parallel_case
            2'b00:  begin
                if (VALID_in)
                    enable_0 <= 1'b1;
                else
                    enable_0 <= 1'bx;
                enable_all <= 1'bx;
                request_out <= 0;
                BWDAUX1_out <= 0;
            end
            2'b01:  begin
                if (VALID_in && !busy_out)
                    enable_0 <= 1'b1;
                else
                    enable_0 <= 1'b0;
                if (VALID_in && busy_out)
                    enable_all <= 1'b1;
                else
                    enable_all <= 1'bx;
                request_out <= 1;
                BWDAUX1_out <= 0;
            end
            2'b10:  begin
                if (!busy_out)
                    enable_0 <= 1'b1;
                else
                    enable_0 <= 1'b0;
                enable_all <= 1'b0;
                request_out <= 1;
                BWDAUX1_out <= 1;
            end
            default : begin 
                if (!busy_out)
                    enable_0 <= 1'b1;
                else
                    enable_0 <= 1'b0;
                if (VALID_in)
                    enable_all <= 1'b1;
                else
                    enable_all <= 1'b0;
                request_out <= 1;
                BWDAUX1_out <= 0;
                end
            endcase
            case (CS) //synopsys parallel_case
            2'b00:              sel <= 2'b01;
            2'b01:              sel <= 2'b01;
            2'b10:              sel <= 2'b10;
            default : begin 
                sel <= 2'b01;
                end
            endcase
        end

    
    always @(flit__0 or flit__1 or FLIT_in or sel)
        begin : mux
            flit__curr[1] = flit__1;
            flit__curr[0] = flit__0;
            mux_out <= 67'b0000000000000000000000000000000000000000000000000000000000000000000;
            if (sel == 2'b01)
                mux_out <= FLIT_in;
            else
            begin
                loop__loop_747 = 1'b0;
                for (mask = 2'b10 ; loop__loop_747 < 1'b1 ; loop__loop_747 = 1'b1 + loop__loop_747)
                begin
                    if (sel == mask)
                        mux_out <= flit__curr[loop__loop_747];
                    __tmp7179 = mask[0];
                    mask = (__tmp7179 << 1'b1);
                end
            end
        end

    
    always @(posedge clk or negedge rst)
        begin : flip_flop
            if (rst == 0)
            begin
                flit__curr__2[1] = flit__1;
                flit__curr__2[0] = flit__0;
                flit__next[1] = flit__curr__2[1];
                flit__next[0] = flit__curr__2[0];
                flit_out <= 67'b0000000000000000000000000000000000000000000000000000000000000000000;
                for (loop__loop_764 = 1'b0 ; loop__loop_764 < 1'b1 ; loop__loop_764 = 1'b1 + loop__loop_764)
                                flit__next[loop__loop_764] = 67'b0000000000000000000000000000000000000000000000000000000000000000000;
                flit__0 <= flit__next[0];
                flit__1 <= flit__next[1];
            end
            else
            begin
                flit__curr__2[1] = flit__1;
                flit__curr__2[0] = flit__0;
                flit__next[1] = flit__curr__2[1];
                flit__next[0] = flit__curr__2[0];
                if (enable_0 == 1'b1)
                    flit_out <= mux_out;
                if (enable_all == 1'b1)
                begin
                    flit__next[1'b0] = FLIT_in;
                    for (loop__loop_775 = 2'b01 ; loop__loop_775 < 2'b10 ; loop__loop_775 = 2'b01 + loop__loop_775)
                                        flit__next[loop__loop_775[0]] = flit__curr__2[$unsigned($signed(loop__loop_775[0]) - 1'sb1)];
                end
                flit__0 <= flit__next[0];
                flit__1 <= flit__next[1];
            end
        end

endmodule
