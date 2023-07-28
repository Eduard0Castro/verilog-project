module registro_l (In, clk, rst, Hab, saida_dados, saida_oper, Fim);
input wire [7:0] In;
input wire clk;
input wire rst;
input wire Hab;
output reg [3:0] saida_dados;
output reg [3:0] saida_oper;
output reg Fim;

always @ ( posedge clk or posedge rst )
begin
	if (rst)
		 begin
			saida_dados <= 4'b0000;
			saida_oper <= 4'b0000;
			Fim <= 0;
		  end
	else
		if (Hab)
			begin
				if(!Fim)
					begin
						saida_dados <= In[3:0];
						saida_oper <= In[7:4];
						if (saida_dados == In[3:0] && saida_oper == In[7:4])
							Fim <= 1;
					end
			end
		else
			Fim <=0;
			
end
endmodule