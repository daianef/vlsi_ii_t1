`timescale 1 ns / 1 ns
`include "settings.v"
`include "./switch_power_defines.v"

module switch_power_tester_output(clk,
                                  rst,
                                  FLIT_in,
                                  VALID_in,
                                  FWDAUX1_in,
                                  BWDAUX1_out,
                                  BWDAUX2_out,
                                  BWDAUX3_out);

// May be overridden by the simulation scripts
parameter TESTINGMODE = `ROTATE;
parameter FLITWIDTH = 32;
// The SIMDELAY knob is used at the interface between behavioural-style traffic generators and netlist-level representation of the topology under
// test. The delay should be set so as to respect setup/propagation times at the input/output pins of the netlist, and be shorter than the clock period.
parameter SIMDELAY = 2000;

input                    clk;
input                    rst;

input [FLITWIDTH - 1:0]  FLIT_in;
input                    VALID_in;
input                    FWDAUX1_in;
output                   BWDAUX1_out;
reg                      BWDAUX1_out;
output                   BWDAUX2_out;
reg                      BWDAUX2_out;
output                   BWDAUX3_out;
reg                      BWDAUX3_out;

reg                      already_given_first_nack;

`ifdef ACKNACK
always @(posedge clk or `RESETACTIVEEDGE rst)
begin

  if (rst == `RESETACTIVEVALUE)
    begin
      #(SIMDELAY) BWDAUX1_out <= 1'b0;
      #(SIMDELAY) BWDAUX2_out <= 1'b0;
      #(SIMDELAY) BWDAUX3_out <= 1'b0;
      already_given_first_nack <= 1'b0;
    end
  else
    begin

      case (TESTINGMODE)

        `IDLE:
          /* Always idle */
          begin
            #(SIMDELAY) BWDAUX1_out <= 1'b0;
            #(SIMDELAY) BWDAUX2_out <= 1'b0;
            #(SIMDELAY) BWDAUX3_out <= 1'b0;
          end
        
        `THROUGH:
          /* Always ACK */
          begin
            if (VALID_in == 1'b1)
              begin
                #(SIMDELAY) BWDAUX1_out <= 1'b1;
                #(SIMDELAY) BWDAUX2_out <= 1'b1;
                #(SIMDELAY) BWDAUX3_out <= 1'b0;
              end
            else
              begin
                #(SIMDELAY) BWDAUX1_out <= 1'b0;
                #(SIMDELAY) BWDAUX2_out <= 1'b0;
                #(SIMDELAY) BWDAUX3_out <= 1'b0;
              end
          end
        
        `CONGESTION:
          /* Always NACK */
          begin
            if (VALID_in == 1'b1 && (!already_given_first_nack || FWDAUX1_in == 1'b1))
              begin
                #(SIMDELAY) BWDAUX1_out <= 1'b0;
                #(SIMDELAY) BWDAUX2_out <= 1'b1;
                #(SIMDELAY) BWDAUX3_out <= 1'b0;
                already_given_first_nack <= 1'b1;
              end
            else
              begin
                #(SIMDELAY) BWDAUX1_out <= 1'b0;
                #(SIMDELAY) BWDAUX2_out <= 1'b0;
                #(SIMDELAY) BWDAUX3_out <= 1'b0;
                already_given_first_nack <= already_given_first_nack;
              end
          end
        
        `NOARBITRATION:
          /* Always ACK */
          begin
            if (VALID_in == 1'b1)
              begin
                #(SIMDELAY) BWDAUX1_out <= 1'b1;
                #(SIMDELAY) BWDAUX2_out <= 1'b1;
                #(SIMDELAY) BWDAUX3_out <= 1'b0;
              end
            else
              begin
                #(SIMDELAY) BWDAUX1_out <= 1'b0;
                #(SIMDELAY) BWDAUX2_out <= 1'b0;
                #(SIMDELAY) BWDAUX3_out <= 1'b0;
              end
          end
        
        `ROTATE:
          /* Always ACK */
          begin
            if (VALID_in == 1'b1)
              begin
                #(SIMDELAY) BWDAUX1_out <= 1'b1;
                #(SIMDELAY) BWDAUX2_out <= 1'b1;
                #(SIMDELAY) BWDAUX3_out <= 1'b0;
              end
            else
              begin
                #(SIMDELAY) BWDAUX1_out <= 1'b0;
                #(SIMDELAY) BWDAUX2_out <= 1'b0;
                #(SIMDELAY) BWDAUX3_out <= 1'b0;
              end
          end
        
        default:
          begin
            #(SIMDELAY) BWDAUX1_out <= 1'b0;
            #(SIMDELAY) BWDAUX2_out <= 1'b0;
            #(SIMDELAY) BWDAUX3_out <= 1'b0;
          end
        
      endcase

    end
end
`else
  `ifdef STALLGO
always @(posedge clk or `RESETACTIVEEDGE rst)
begin

  if (rst == `RESETACTIVEVALUE)
    begin
      #(SIMDELAY) BWDAUX1_out <= 1'b0;
      #(SIMDELAY) BWDAUX2_out <= 1'b0;
      #(SIMDELAY) BWDAUX3_out <= 1'b0;
    end
  else
    begin

      case (TESTINGMODE)

        `IDLE:
          /* Always idle */
          begin
            #(SIMDELAY) BWDAUX1_out <= 1'b0;
            #(SIMDELAY) BWDAUX2_out <= 1'b0;
            #(SIMDELAY) BWDAUX3_out <= 1'b0;
          end
        
        `THROUGH:
          /* Always GO */
          begin
            #(SIMDELAY) BWDAUX1_out <= 1'b0;
            #(SIMDELAY) BWDAUX2_out <= 1'b0;
            #(SIMDELAY) BWDAUX3_out <= 1'b0;
          end
        
        `CONGESTION:
          /* Always STALL */
          begin
             #(SIMDELAY) BWDAUX1_out <= 1'b1;
             #(SIMDELAY) BWDAUX2_out <= 1'b0;
             #(SIMDELAY) BWDAUX3_out <= 1'b0;
          end
        
        `NOARBITRATION:
          /* Always GO */
          begin
            #(SIMDELAY) BWDAUX1_out <= 1'b0;
            #(SIMDELAY) BWDAUX2_out <= 1'b0;
            #(SIMDELAY) BWDAUX3_out <= 1'b0;
          end
        
        `ROTATE:
          /* Always GO */
          begin
            #(SIMDELAY) BWDAUX1_out <= 1'b0;
            #(SIMDELAY) BWDAUX2_out <= 1'b0;
            #(SIMDELAY) BWDAUX3_out <= 1'b0;
          end
        
        default:
          begin
            #(SIMDELAY) BWDAUX1_out <= 1'b0;
            #(SIMDELAY) BWDAUX2_out <= 1'b0;
            #(SIMDELAY) BWDAUX3_out <= 1'b0;
          end
        
      endcase

    end
end
  `endif
`endif

endmodule
