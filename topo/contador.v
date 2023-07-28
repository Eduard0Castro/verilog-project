module contador(clk, habilita, rst, fim, pc);

input wire clk, habilita, rst;
output reg fim;
output reg [3:0] pc;

always @(posedge clk or posedge rst)
begin

	if(rst)
	begin
		pc <= 4'b0000;
		fim <= 0;
	end
	
	else
		if(habilita)
		begin
			if(!fim)
			begin
				pc <= pc + 4'b0001;
				fim <= 1;
			end
		end
		else
			fim <= 0;
end

endmodule