`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 03/27/2019 03:54:51 PM
// Design Name: 
// Module Name: write_video_bram
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////


module write_video_bram
#( parameter IMAGE_WIDTH = 1280,
   parameter IMAGE_HEIGHT = 720,
   parameter COUNTER_WIDTH = 11
)
(
    input clk,
    
    input de_in,
    input hsync_in,
    input vsync_in,
            
    input [23:0] rgb_in,

    output [10:0] addra,
    output [31:0] dina,
    output ena,
    output wea    
);

// counter generation
reg [COUNTER_WIDTH-1:0] r_frameW;
reg [COUNTER_WIDTH-1:0] r_frameH;

wire [COUNTER_WIDTH-1:0] frameW [10:0];
wire [COUNTER_WIDTH-1:0] frameH [10:0];


reg [10:0] addr;
reg [31:0] data;
reg we;


// horizontal and vertical counters generation
// ZYBO inverse logic
always @(posedge clk)
begin
    if (vsync_in == 1'b1)
    begin
        r_frameW <= 11'b0;
        r_frameH <= 11'b0;
        //my logic
        addr <= 12'b0;
        we <= 1'b0;
    end
    
    if(de_in) begin
        r_frameW <= r_frameW + 1;
        if(r_frameW == IMAGE_WIDTH - 1) 
        begin
            r_frameW <= 11'b0;
            r_frameH <= r_frameH + 1;
            if(r_frameH == IMAGE_HEIGHT - 1) 
            begin
                r_frameH <= 11'b0;
            end 
        end
        
        if(r_frameW < 32 && r_frameH < 32)
        begin
            data <= {8'b0, rgb_in};
            addr <= addr + 1;
            we <= 1'b1; 
        end
        else
        begin
            we <= 1'b0;
        end   
     end
end

assign frameW[0] = r_frameW;
assign frameH[0] = r_frameH;
assign ena = 1'b1;
assign dina = data;
assign wea = we;
assign addra = addr;




endmodule