///////////////////////////////////////////////////////////////////////////////////////////////////
// Company: <Name>
//
// File: Switch_0.v
// File history:
//      <Revision number>: <Date>: <Comments>
//      <Revision number>: <Date>: <Comments>
//      <Revision number>: <Date>: <Comments>
//
// Description: 
//
// <Description here>
//
// Targeted device: <Family::SmartFusion> <Die::A2F200M3F> <Package::484 FBGA>
// Author: <Name>
//
/////////////////////////////////////////////////////////////////////////////////////////////////// 

//`timescale <time_units> / <precision>

module Switch_0(
/*** APB3 BUS INTERFACE ***/
input PCLK, // clock
input PRESERN, // system reset
input PSEL, // peripheral select
input PENABLE, // distinguishes access phase
output wire PREADY, // peripheral ready signal
output wire PSLVERR, // error signal
output reg INT0,
output reg INT1,
input PWRITE, // distinguishes read and write cycles
input [31:0] PADDR, // I/O address
input wire [31:0] PWDATA, // data from processor to I/O device (32 bits)
output reg [31:0] PRDATA, // data to processor from I/O device (32-bits)
input SW[1:0]
/*** I/O PORTS DECLARATION ***/
);
assign PSLVERR = 0;
assign PREADY = 1;
wire [1:0] dbsw;
Button_Debouncer b0(PCLK, SW[0], dbsw[0]);
Button_Debouncer b1(PCLK, SW[1], dbsw[1]);


//shift debounced switch inputs//
reg sw0_pulse[2:0], sw1_pulse[2:0];
always@( posedge PCLK)
begin
	sw0_pulse[0] <= ~dbsw[0];
	sw0_pulse[1] <= sw0_pulse[0];
	sw0_pulse[2] <= sw0_pulse[1];

	sw1_pulse[0] <= ~dbsw[1];
	sw1_pulse[1] <= sw1_pulse[0];
	sw1_pulse[2] <= sw1_pulse[1];
end

//use shifted switch inputs to create a one clock cycle pulse//
wire sw0_int, sw1_int;
assign sw0_int = (sw0_pulse[1] == 1'b1) & (sw0_pulse[2] == 1'b0);
assign sw1_int = (sw1_pulse[1] == 1'b1) & (sw1_pulse[2] == 1'b0);

//create a FABINT pulse if either sw0 or sw1 is pressed//
always@(posedge PCLK)
begin
    if(~PRESERN) begin
        INT0 <= 1'b0;
        INT1 <= 1'b0;
   end else if(sw0_int)
        INT0 <= 1;
    else if (sw1_int)
        INT1 <= 1;
    else begin
        INT0 <= 1'b0;
        INT1 <= 1'b0;
    end
end
endmodule


//
// *** Button debouncer. ***
// Changes in the input are ignored until they have been consistent for 2^16 clocks.
//
module Button_Debouncer(
input clk,
input PB_in, // button input
output reg PB_out // debounced output
);
reg [15:0] PB_cnt; // 16-bit counter
reg [1:0] sync; // used as two flip-flops to synchronize
// button to the clk domain.
// First use two flipflops to synchronize the PB signal the "clk" clock domain
always @(posedge clk)
sync[1:0] <= {sync[0],~PB_in};
wire PB_idle = (PB_out==sync[1]); // See if we have a new input state for PB
wire PB_cnt_max = &PB_cnt; // true when all bits of PB_cnt are 1's
// using & in this way is a
// "reduction operation"
// When the push-button is pushed or released, we increment the counter.
// The counter has to be maxed out before we decide that the push-button
// state has changed
always @(posedge clk) begin
if(PB_idle)
PB_cnt<= 16'd0; // input and output are the same so clear counter
else begin
PB_cnt<= PB_cnt + 16'd1; // input different than output, count
if(PB_cnt_max)
PB_out<= ~PB_out; // if the counter is maxed out,
 // change PB output
end
end
endmodule

