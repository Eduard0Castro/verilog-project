module decodificador(entrada, reg_a_b, ula);

input wire [3:0] entrada;
output reg [1:0] reg_a_b;
output reg [3:0] ula;

always @(entrada)
begin
	case(entrada)
	4'b0000: 
	begin
			reg_a_b <= 2'b10;
			ula <= 4'b0000;
	end
		
	4'b0001:
	begin
		reg_a_b <= 2'b01;
		ula <= 4'b0000;
	end
	
	default:
	begin
		reg_a_b <= 2'b00;
		ula <= entrada;
	end
	endcase
end
endmodule
