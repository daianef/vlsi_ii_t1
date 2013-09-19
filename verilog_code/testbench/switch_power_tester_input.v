`timescale 1 ns / 1 ns
`include
"settings.v"
`include
"./switch_power_defines.v"

`define EMIT_NONE 2'b00
`define EMIT_HEADER 2'b01
`define EMIT_PAYLOAD 2'b10
`define EMIT_TAIL 2'b11

module switch_power_tester_input(clk,
                                 rst,
                                 ID,
                                 FLIT_out,
                                 VALID_out,
                                 FWDAUX1_out,
                                 BWDAUX1_in,
                                 BWDAUX2_in,
                                 BWDAUX3_in);

  // May be overridden by the simulation scripts
  parameter TESTINGMODE = `ROTATE;
  parameter FLITWIDTH = 32;
  parameter NUMBERINPUTS = 4;
  parameter LOGNUMBERINPUTS = 2;
  parameter NUMBEROUTPUTS = 4;
  parameter LOGNUMBEROUTPUTS = 2;
  // The SIMDELAY knob is used at the interface between behavioural-style traffic generators and netlist-level representation of the topology under
  // test. The delay should be set so as to respect setup/propagation times at the input/output pins of the netlist, and be shorter than the clock period.
  parameter SIMDELAY = 2000;

  input                          clk;
  input                          rst;
  input [LOGNUMBERINPUTS - 1:0]  ID;

  output [FLITWIDTH - 1:0]       FLIT_out;
  output                         VALID_out;
  output                         FWDAUX1_out;
  input                          BWDAUX1_in;
  input                          BWDAUX2_in;
  input                          BWDAUX3_in;

  reg                            write;
  reg [FLITWIDTH - 1:0]          data_in;
  wire                           full;

  reg [2:0]                      CS;
  reg [2:0]                      NS;

  reg [LOGNUMBEROUTPUTS - 1:0]   target_port;
  reg [FLITWIDTH - 4:0]          flit_content;

`ifdef ACKNACK
  acknack_out_buffer_4 #(.FLITWIDTH(FLITWIDTH), .SIMDELAY(SIMDELAY)) ob(clk, rst, FLIT_out, VALID_out, FWDAUX1_out, BWDAUX1_in, BWDAUX2_in, BWDAUX3_in, write, data_in, full);
`else
  `ifdef STALLGO
  stallgo_out_buffer_4 #(.FLITWIDTH(FLITWIDTH), .SIMDELAY(SIMDELAY)) ob(clk, rst, FLIT_out, VALID_out, FWDAUX1_out, BWDAUX1_in, BWDAUX2_in, BWDAUX3_in, write, data_in, full);
  `endif
`endif

  /* Pick an output port */
  always @(posedge clk or `RESETACTIVEEDGE rst)
  begin
    if (rst == `RESETACTIVEVALUE)
      begin
        target_port <= ID;
      end
    else
      case (TESTINGMODE)
        `IDLE:
          /* No flit injection, doesn't really matter */
          begin
            target_port <= {LOGNUMBEROUTPUTS{1'b0}};
          end
        `THROUGH:
          /* Try to push flits through, unless this creates arbitration conflicts */
          begin
            if (ID < NUMBEROUTPUTS)
              target_port <= ID;
            else
              target_port <= {LOGNUMBEROUTPUTS{1'b0}};
          end
        `CONGESTION:
          /* Try to push flits through, unless this creates arbitration conflicts */
          begin
            if (ID < NUMBEROUTPUTS)
              target_port <= ID;
            else
              target_port <= {LOGNUMBEROUTPUTS{1'b0}};
            end
        `NOARBITRATION:
          /* Try to collide on purpose on port 0 */
          begin
            target_port <= {LOGNUMBEROUTPUTS{1'b0}};
          end
        `ROTATE:
          /* Shift destination port after every flit */
          begin
            if (CS == `EMIT_TAIL && full == 1'b0)
              begin
                if (target_port == NUMBEROUTPUTS - {{LOGNUMBEROUTPUTS - 1{1'b0}}, 1'b1})
                  target_port <= {LOGNUMBEROUTPUTS{1'b0}};
                else
                  target_port <= target_port + {{LOGNUMBEROUTPUTS - 1{1'b0}}, 1'b1};
              end
            else
              target_port <= target_port;
          end
        default:
          begin
            target_port <= {LOGNUMBEROUTPUTS{1'b0}};
          end
      endcase
  end

  /* Decide flit content by adding some entropy */
  always @(posedge clk or `RESETACTIVEEDGE rst)
  begin
    if (rst == `RESETACTIVEVALUE)
      begin
        flit_content <= {FLITWIDTH - 3{1'b0}};
      end
    else
      begin
`ifdef NOENTROPY
        flit_content <= {flit_content};
`else
  `ifdef MAXENTROPY
        flit_content <= {~flit_content};
  `else
        flit_content <= {flit_content[FLITWIDTH - 4:`ENTROPYBITS], ~flit_content[`ENTROPYBITS - 1:0]};
  `endif
`endif
      end
  end

  /* Generate output flits */
  always @(CS or full or flit_content)
  begin
    case (CS)
      `EMIT_NONE:
        /* Idle at reset */
        begin
          write <= 1'b0;
          data_in <= {FLITWIDTH{1'b0}};
        end
      `EMIT_HEADER:
        begin
          if (full == 1'b1)
            begin
              write <= 1'b0;
              data_in <= {FLITWIDTH{1'b0}};
            end
          else
            begin
              write <= 1'b1;
              data_in <= {flit_content[FLITWIDTH - LOGNUMBEROUTPUTS - 4:0], target_port, 3'b011};
            end
        end
      `EMIT_PAYLOAD:
        begin
          if (full == 1'b1)
            begin
              write <= 1'b0;
              data_in <= {FLITWIDTH{1'b0}};
            end
          else
            begin
              write <= 1'b1;
              data_in <= {flit_content, 3'b010};
            end
        end
      `EMIT_TAIL:
        begin
          if (full == 1'b1)
            begin
              write <= 1'b0;
              data_in <= {FLITWIDTH{1'b0}};
            end
          else
            begin
              write <= 1'b1;
              data_in <= {flit_content, 3'b000};
            end
        end
      default:
        begin
          write <= 1'b0;
          data_in <= 0;
        end
    endcase
  end

  /* Generate new state */
  always @(CS)
  begin
    case (CS)
      `EMIT_NONE:
        /* Idle at reset */
        begin
          if (TESTINGMODE == `IDLE || ID >= NUMBEROUTPUTS)
            NS <= `EMIT_NONE;
          else
            NS <= `EMIT_HEADER;
        end
      `EMIT_HEADER:
        begin
          if (full == 1'b1)
            NS <= `EMIT_HEADER;
          else
            NS <= `EMIT_PAYLOAD;
        end
      `EMIT_PAYLOAD:
        begin
          if (full == 1'b1 || TESTINGMODE != `ROTATE)
            NS <= `EMIT_PAYLOAD;
          else
            NS <= `EMIT_TAIL;
        end
      `EMIT_TAIL:
        begin
          if (full == 1'b1)
            NS <= `EMIT_TAIL;
          else
            NS <= `EMIT_NONE;
        end
      default:
        begin
          NS <= `EMIT_NONE;
        end
    endcase
  end

  /* Update state */
  always @(posedge clk or `RESETACTIVEEDGE rst)
  begin
    if (rst == `RESETACTIVEVALUE)
      begin
        CS <= `IDLE;
      end
    else
      begin
        CS <= NS;
      end
  end

endmodule





module acknack_out_buffer_4(clk,
                            rst,
                            FLIT_out,
                            VALID_out,
                            FWDAUX1_out,
                            BWDAUX1_in,
                            BWDAUX2_in,
                            BWDAUX3_in,
                            write,
                            data_in,
                            full);

  parameter FLITWIDTH = 32;
  parameter SIMDELAY = 2000;

  input                     clk;
  input                     rst;

  output [FLITWIDTH - 1:0]  FLIT_out;
  reg [FLITWIDTH - 1:0]     FLIT_out;
  output                    VALID_out;
  reg                       VALID_out;
  output                    FWDAUX1_out;
  reg                       FWDAUX1_out;
  input                     BWDAUX1_in;
  wire                      BWDAUX1_in;
  input                     BWDAUX2_in;
  wire                      BWDAUX2_in;
  input                     BWDAUX3_in;
  wire                      BWDAUX3_in;

  input                     write;
  wire                      write;
  input [FLITWIDTH - 1:0]   data_in;
  wire [FLITWIDTH - 1:0]    data_in;
  output                    full;
  reg                       full;

  reg [2:0]                 elements;
  reg [FLITWIDTH - 1:0]     buffer [3:0];
  reg [2:0]                 loop;
  reg [1:0]                 pointer_in;
  reg [1:0]                 pointer_out;
  reg [1:0]                 pointer_ackwait;
  reg                       is_replay;

  always @(posedge clk or `RESETACTIVEEDGE rst)
  begin : elements_sequential
    if (rst == `RESETACTIVEVALUE)
        elements <= 3'b000;
    else
    begin
      if (BWDAUX1_in && BWDAUX2_in && !write)
        elements <= $unsigned($signed(elements) - 3'sb001);
      else
      begin
        if ((!BWDAUX1_in || !BWDAUX2_in) && write)
          elements <= 3'b001 + elements;
      end
    end
  end

  always @(posedge clk or `RESETACTIVEEDGE rst)
  begin : buffers_sequential
    if (rst == `RESETACTIVEVALUE)
    begin
      for (loop = 3'b000 ; loop < 3'b100 ; loop = 3'b001 + loop)
        buffer[loop[1:0]] <= {FLITWIDTH{1'b0}};
    end
    else
    begin
      if (write)
        buffer[pointer_in] <= data_in;
    end
  end

  always @(posedge clk or `RESETACTIVEEDGE rst)
  begin : sequential
    if (rst == `RESETACTIVEVALUE)
    begin
      pointer_out <= 2'b00;
      pointer_in <= 2'b00;
      pointer_ackwait <= 2'b00;
      is_replay <= 0;
    end
    else
    begin
      if (write)
      begin
        if (pointer_in == 2'b11)
          pointer_in <= 2'b00;
        else
          pointer_in <= 2'b01 + pointer_in;
      end
      if (BWDAUX1_in && BWDAUX2_in)
      begin
        if (pointer_ackwait == 2'b11)
          pointer_ackwait <= 2'b00;
        else
          pointer_ackwait <= 2'b01 + pointer_ackwait;
      end
      if (!BWDAUX1_in && BWDAUX2_in)
      begin
        pointer_out <= pointer_ackwait;
        is_replay <= 1;
      end
      else
      begin
        if (VALID_out)
        begin
          if (pointer_out == 2'b11)
            pointer_out <= 2'b00;
          else
            pointer_out <= 2'b01 + pointer_out;
        end
        is_replay <= 0;
      end
    end
  end

  always @(pointer_out or pointer_in or is_replay or elements or buffer[0] or buffer[1] or buffer[2] or buffer[3])
  begin : combinational
    #(SIMDELAY) FLIT_out <= buffer[pointer_out];
    if (pointer_out != pointer_in || is_replay)
      #(SIMDELAY) VALID_out <= 1;
    else
      #(SIMDELAY) VALID_out <= 0;
    if (is_replay)
      #(SIMDELAY) FWDAUX1_out <= 1;
    else
      #(SIMDELAY) FWDAUX1_out <= 0;
    if (elements == 3'b100)
      full <= 1;
    else
      full <= 0;
  end

endmodule





module stallgo_out_buffer_4(clk,
                            rst,
                            FLIT_out,
                            VALID_out,
                            FWDAUX1_out,
                            BWDAUX1_in,
                            BWDAUX2_in,
                            BWDAUX3_in,
                            write,
                            data_in,
                            full);

  parameter FLITWIDTH = 32;
  parameter SIMDELAY = 2000;

  input                     clk;
  input                     rst;

  output [FLITWIDTH - 1:0]  FLIT_out;
  reg [FLITWIDTH - 1:0]     FLIT_out;
  output                    VALID_out;
  reg                       VALID_out;
  output                    FWDAUX1_out;
  input                     BWDAUX1_in;
  wire                      BWDAUX1_in;
  input                     BWDAUX2_in;
  wire                      BWDAUX2_in;
  input                     BWDAUX3_in;
  wire                      BWDAUX3_in;

  input                     write;
  wire                      write;
  input [FLITWIDTH - 1:0]   data_in;
  wire [FLITWIDTH - 1:0]    data_in;
  output                    full;
  reg                       full;

  reg [2:0]                 elements;
  reg [FLITWIDTH - 1:0]     buffer [3:0];
  reg [2:0]                 loop;
  reg [1:0]                 pointer_in;
  reg [1:0]                 pointer_out;

  always @(posedge clk or `RESETACTIVEEDGE rst)
  begin : elements_sequential
    if (rst == `RESETACTIVEVALUE)
      elements <= 3'b000;
    else
    begin
      if (!BWDAUX1_in && VALID_out && !write)
        elements <= $unsigned($signed(elements) - 3'sb001);
      else
      begin
        if ((!VALID_out || BWDAUX1_in) && write)
          elements <= 3'b001 + elements;
      end
    end
  end

  always @(posedge clk or `RESETACTIVEEDGE rst)
  begin : buffers_sequential
    if (rst == `RESETACTIVEVALUE)
    begin
      for (loop = 3'b000 ; loop < 3'b100 ; loop = 3'b001 + loop)
        buffer[loop[1:0]] <= {FLITWIDTH{1'b0}};
    end
    else
    begin
      if (write)
        buffer[pointer_in] <= data_in;
    end
  end

  always @(posedge clk or `RESETACTIVEEDGE rst)
  begin : sequential
    if (rst == `RESETACTIVEVALUE)
    begin
      pointer_out <= 2'b00;
      pointer_in <= 2'b00;
    end
    else
    begin
      if (write)
      begin
        if (pointer_in == 2'b11)
          pointer_in <= 2'b00;
        else
          pointer_in <= 2'b01 + pointer_in;
      end
      if (!BWDAUX1_in && VALID_out)
      begin
        if (pointer_out == 2'b11)
          pointer_out <= 2'b00;
        else
          pointer_out <= 2'b01 + pointer_out;
      end
    end
  end

  always @(pointer_out or pointer_in or elements or buffer[0] or buffer[1] or buffer[2] or buffer[3])
  begin : combinational
    #(SIMDELAY) FLIT_out <= buffer[pointer_out];
    if (elements != 3'b000)
      #(SIMDELAY) VALID_out <= 1;
    else
      #(SIMDELAY) VALID_out <= 0;
    if (elements == 3'b100)
      full <= 1;
    else
      full <= 0;
  end

endmodule
