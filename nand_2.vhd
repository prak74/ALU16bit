entity nand_2 is
	port( a, b: in bit;
			c 	 : out bit
			);
end entity nand_2;

-- Structurally implement nand
architecture Struct of nand_2 is
begin
	c <= a nand b;
end Struct;