module executa(clk, habilita, rst, entrada, reg_a_b, ula);

input wire clk, habilita, rst;
input wire [5:0] entrada;
output reg [1:0] reg_a_b;
output reg [3:0] ula;


always @(posedge clk or posedge rst)
begin

	if(rst)
	begin
		reg_a_b <= 2'b00;
		ula <= 4'b0000;
	end
	else
		if(habilita)
		begin
			reg_a_b <= entrada[5:4];
			ula <= entrada[3:0];
		end

end

endmodule