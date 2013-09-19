`define RESETACTIVEVALUE 0
`define RESETACTIVEEDGE negedge

/* Options below only used for switch simulation */

/* Flow control. Define ONE and ONLY ONE of the options below */
`define STALLGO 1
/* `define ACKNACK 1 */

/* Entropy of the injected data (affects switching activity in power simulations). */
/* Define ONE and ONLY ONE of the options below */
`define MAXENTROPY 1
/* `define ENTROPYBITS 10 */
/* `define NOENTROPY 1*/
