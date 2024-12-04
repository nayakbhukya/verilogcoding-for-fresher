`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 04.12.2024 09:29:21
// Design Name: 
// Module Name: tb_fab_cell
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


module tb_fab_cell();
reg x,y,sin,cin;
wire sout,cout;
fab_cell dut(x,y,sin,cin,sout,cout);
initial begin
x=0;#5 y=0;#5 sin =0;#5 cin=0;
#10 x=1;#5y=1;#5sin =0;#5cin=0;
#10 x=1;#5y=1;#5sin =1;#5cin=0;
#10 x=1;#5y=1;#5sin =0;#5cin=1;
#10 x=1;#5y=0;#5sin =0;#5cin=1;
$finish();
end
endmodule
