module geradorClock(
	input clkIn, rst,
	output clkOut, lockedPLL1, lockedPLL2
	);
	
	wire ligacaoClock;
	
	PLL1	PLL1_inst0 (
	.areset 	( rst ),
	.inclk0 	( clkIn ),
	.c0 		( ligacaoClock ),
	.locked 	( lockedPLL1 )
	);
	
	PLL1	PLL1_inst1 (
	.areset 	( rst ),
	.inclk0 	( ligacaoClock ),
	.c0 		( clkOut ),
	.locked 	( lockedPLL2 )
	);
	
endmodule
