module LED_VERILOG(
/*** APB3 BUS INTERFACE ***/
input PCLK, // clock
input PRESERN, // system reset
input PSEL, // peripheral select
input PENABLE, // distinguishes access phase
output wire PREADY, // peripheral ready signal
output wire PSLVERR, // error signal
input PWRITE, // distinguishes read and write cycles
input [31:0] PADDR, // I/O address
input wire [31:0] PWDATA, // data from processor to I/O device (32 bits)
output reg [31:0] PRDATA, // data to processor from I/O device (32-bits)
/*** I/O PORTS DECLARATION ***/
output reg LED
);
assign PSLVERR = 0;
assign PREADY = 1;
reg [999:0]color;
reg [23:0]data_counter;
reg [9:0]bit_counter;
reg [6:0]pwm_counter;
// Initializing stuff
wire color_write = (PWRITE & PENABLE & PSEL);
always @(posedge PCLK) begin
// Restart data
if (data_counter >= 1024125) begin
    data_counter <= 0;
    bit_counter <= 0;
end
// Reset code
//else if (data_counter >= 24125) begin
else if (data_counter >= 72375) begin
    LED <= 0;
    data_counter <= data_counter + 1;
end

else begin
    if(pwm_counter >= 125) begin
        pwm_counter <= 0;
        bit_counter <= bit_counter + 1;
    end
    else begin
        if (color[bit_counter]) begin
            if (pwm_counter <= 80) 
                LED <= 1;
            else 
                LED <=0;
        pwm_counter <= pwm_counter + 1;
        end
    
        else begin 
            if (pwm_counter <= 40) 
                LED <= 1;
            else 
                LED <= 0;
        pwm_counter <= pwm_counter + 1;
        end
    data_counter <= data_counter + 1; 
    end
end


// Pulse BS
end

always @(posedge PCLK)
begin
if(color_write)begin
    case (PADDR[6:2])
    // First Strip
    5'd0: color[23:0] <= PWDATA[23:0];   //0x40050000
    5'd1: color[47:24] <= PWDATA[23:0];  //0x40050004
    5'd2: color[71:48] <= PWDATA[23:0];  //0x40050008
    5'd3: color[95:72] <= PWDATA[23:0];  //0x4005000c
    5'd4: color[119:96] <= PWDATA[23:0]; //0x40050010
    5'd5: color[143:120] <= PWDATA[23:0]; //0x40050014
    5'd6: color[167:144] <= PWDATA[23:0]; //0x40050018
    5'd7: color[191:168] <= PWDATA[23:0]; //0x4005001c
    // Second Strip
    5'd8: color[215:192] <= PWDATA[23:0];
    5'd9: color[239:216] <= PWDATA[23:0];
    5'd10: color[263:240] <= PWDATA[23:0];
    5'd11: color[287:264] <= PWDATA[23:0];
    5'd12: color[311:288] <= PWDATA[23:0];
    5'd13: color[335:312] <= PWDATA[23:0];
    5'd14: color[359:336] <= PWDATA[23:0];
    5'd15: color[383:360] <= PWDATA[23:0];
    // Third Strip
    5'd16: color[407:384] <= PWDATA[23:0];
    5'd17: color[431:408] <= PWDATA[23:0];
    5'd18: color[455:432] <= PWDATA[23:0];
    5'd19: color[479:456] <= PWDATA[23:0];
    5'd20: color[503:480] <= PWDATA[23:0];
    5'd21: color[527:504] <= PWDATA[23:0];
    5'd22: color[551:528] <= PWDATA[23:0];
    5'd23: color[575:552] <= PWDATA[23:0];
endcase
end

end




endmodule

