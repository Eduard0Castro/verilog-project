// Module register to hold 4-bit words
module registro_RC (In, clk, rst, Hab, Fim);
// I/O list
input wire [3:0] In;
input wire clk;
input wire rst;
input wire Hab;

output reg Fim;

always @ ( posedge clk or posedge rst )
begin
	if (rst)
		 begin
		
			Fim <= 0;
		  end
	else
		if (Hab)
			Fim <=1;
			
		else
			Fim <=0;
			
end
endmodule
