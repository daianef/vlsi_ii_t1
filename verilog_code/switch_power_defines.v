/* Testing modes */
/* No incoming traffic                                            */ `define IDLE 3'b000
/* Each input port through a different (but constant) output port */ `define THROUGH 3'b001
/* No flit accepted from downstream, traffic stuck in DUT         */ `define CONGESTION 3'b010
/* One input passes through, the others lose arbitration          */ `define NOARBITRATION 3'b011
/* Each input port through a different (rotating) output port     */ `define ROTATE 3'b100
