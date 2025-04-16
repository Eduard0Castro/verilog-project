module mem_rom(addr, clk, habilita, dados);

input wire [3:0] addr;
input wire clk, habilita;
output reg [7:0] dados;

reg [7:0] buffer[0:15];


always @(posedge clk)
begin

	if(habilita)
	begin
		$readmemb(	"C:/Users/sirle/Downloads/verilog-project/Complete Project/programa.txt", buffer);
		dados <= buffer[addr];
	end

end

endmodule