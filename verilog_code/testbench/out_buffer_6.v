module out_buffer_6(clk, rst, FLIT_out, VALID_out, FWDAUX1_out, BWDAUX1_in, BWDAUX2_in, BWDAUX3_in, write, data_in, full);
    input clk;
    wire clk;
    input rst;
    wire rst;
    output [66:0] FLIT_out;
    reg [66:0] FLIT_out;
    output VALID_out;
    reg VALID_out;
    output FWDAUX1_out;
    input BWDAUX1_in;
    wire BWDAUX1_in;
    input BWDAUX2_in;
    wire BWDAUX2_in;
    input BWDAUX3_in;
    wire BWDAUX3_in;
    input write;
    wire write;
    input [66:0] data_in;
    wire [66:0] data_in;
    output full;
    reg full;
    reg [3:0] elements;
    reg [66:0] buffer__next [5:0];
    reg [66:0] buffer__5;
    reg [66:0] buffer__4;
    reg [66:0] buffer__3;
    reg [66:0] buffer__2;
    reg [66:0] buffer__1;
    reg [66:0] buffer__0;
    reg [2:0] i__loop_71;
    reg [2:0] pointer_in;
    reg [2:0] pointer_out;
    reg [66:0] buffer__curr [5:0];
    
    always @(posedge clk or negedge rst)
        begin : elements_sequential
            if (rst == 0)
                elements <= 4'b0000;
            else
            begin
                if (!BWDAUX1_in && VALID_out && !write)
                    elements <= $unsigned($signed(elements) - 4'sb0001);
                else
                begin
                    if ((!VALID_out || BWDAUX1_in) && write)
                        elements <= 4'b0001 + elements;
                end
            end
        end

    
    always @(posedge clk or negedge rst)
        begin : buffers_sequential
            if (rst == 0)
            begin
                buffer__next[5] = buffer__5;
                buffer__next[4] = buffer__4;
                buffer__next[3] = buffer__3;
                buffer__next[2] = buffer__2;
                buffer__next[1] = buffer__1;
                buffer__next[0] = buffer__0;
                for (i__loop_71 = 3'b000 ; i__loop_71 < 3'b110 ; i__loop_71 = 3'b001 + i__loop_71)
                                buffer__next[i__loop_71] = 67'b0000000000000000000000000000000000000000000000000000000000000000000;
                buffer__0 <= buffer__next[0];
                buffer__1 <= buffer__next[1];
                buffer__2 <= buffer__next[2];
                buffer__3 <= buffer__next[3];
                buffer__4 <= buffer__next[4];
                buffer__5 <= buffer__next[5];
            end
            else
            begin
                buffer__next[5] = buffer__5;
                buffer__next[4] = buffer__4;
                buffer__next[3] = buffer__3;
                buffer__next[2] = buffer__2;
                buffer__next[1] = buffer__1;
                buffer__next[0] = buffer__0;
                if (write)
                    buffer__next[pointer_in] = data_in;
                buffer__0 <= buffer__next[0];
                buffer__1 <= buffer__next[1];
                buffer__2 <= buffer__next[2];
                buffer__3 <= buffer__next[3];
                buffer__4 <= buffer__next[4];
                buffer__5 <= buffer__next[5];
            end
        end

    
    always @(posedge clk or negedge rst)
        begin : sequential
            if (rst == 0)
            begin
                pointer_out <= 3'b000;
                pointer_in <= 3'b000;
            end
            else
            begin
                if (write)
                begin
                    if (pointer_in == 3'b101)
                        pointer_in <= 3'b000;
                    else
                        pointer_in <= 3'b001 + pointer_in;
                end
                if (!BWDAUX1_in && VALID_out)
                begin
                    if (pointer_out == 3'b101)
                        pointer_out <= 3'b000;
                    else
                        pointer_out <= 3'b001 + pointer_out;
                end
            end
        end

    
    always @(pointer_out or pointer_in or elements or buffer__0 or buffer__1 or buffer__2 or buffer__3 or buffer__4 or buffer__5)
        begin : combinational
            buffer__curr[5] = buffer__5;
            buffer__curr[4] = buffer__4;
            buffer__curr[3] = buffer__3;
            buffer__curr[2] = buffer__2;
            buffer__curr[1] = buffer__1;
            buffer__curr[0] = buffer__0;
            FLIT_out <= buffer__curr[pointer_out];
            if (elements != 4'b0000)
                VALID_out <= 1;
            else
                VALID_out <= 0;
            if (elements == 4'b0110)
                full <= 1;
            else
                full <= 0;
        end

endmodule
