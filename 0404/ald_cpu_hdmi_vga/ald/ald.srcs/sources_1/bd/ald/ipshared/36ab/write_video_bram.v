`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 03/28/2019 11:55:55 AM
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
(
    
    input clk,
    input de_in,
    input hsync_in,
    input vsync_in,   
    input [23:0] rgb_in,
    output [11:0] addrb,
    output [31:0] dinb,
    output enb,
    output rst,
    output web
    
    
    );
 localparam IMAGE_WIDTH = 1280;
 localparam  IMAGE_HEIGHT = 720;
 localparam  COUNTER_WIDTH = 11;

reg [11:0] reg_addrb=12'b0;
reg [31:0]reg_dinb=32'b0;
reg reg_web=1'b0;
    
    // counter generation
reg [COUNTER_WIDTH-1:0] r_frameW;
reg [COUNTER_WIDTH-1:0] r_frameH;

wire [COUNTER_WIDTH-1:0] frameW [10:0];
wire [COUNTER_WIDTH-1:0] frameH [10:0];


// horizontal and vertical counters generation
// ZYBO inverse logic
always @(posedge clk)
begin
    if (vsync_in == 1'b1)
    begin
        r_frameW <= 11'b0;
        r_frameH <= 11'b0;
        reg_addrb<=12'b0;
        reg_web<=1'b0;
    end
    
    if(r_frameW < 11'd32 && r_frameH < 11'd32 && de_in==1'b1)
        begin
            reg_dinb<={8'b0,rgb_in};
            reg_addrb<= reg_addrb+11'b1;
            reg_web=1'b1;
        end
   else 
    begin
        reg_web=1'b0;
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
     end
end

assign frameW[0] = r_frameW;
assign frameH[0] = r_frameH;
assign addrb[11:0] = reg_addrb;
assign dinb[31:0] = reg_dinb;
assign enb = 1'b1;
assign rst = 1'b0;
assign web = reg_web;

  
endmodule
