`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 04.12.2024 08:56:36
// Design Name: 
// Module Name: fab_cell
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


module fab_cell(x,y,sin,cin,sout,cout);
input sin,cin,x,y;
output sout,cout;
wire w1,w2,w3;
assign w1=y?sin:0;
assign w2=y?x:0;
fa FA1(w1,w2,cin,w3,cout);

m21 mux (sout,sin,w3,y);

endmodule
module fa(sin,xin,carryin,sout,carryout);

input xin,carryin,sin;
output sout,carryout;
assign sout =xin^sin^carryin;
assign carryout = ((xin&sin)|(xin&carryin)|(sin&carryin));

endmodule

module m21(Y, D0, D1, S);

output reg Y;
input D0, D1, S;
always @(D0,D1,S) 
begin
case(S)
0: Y=D0;
1: Y=D1;
endcase
end
endmodule

