entity cout_calc is
port (
		c_add, c_sub, S0, S1 : in bit;
		c_out : out bit
		);
end entity cout_calc;

architecture struct of cout_calc is 
begin
	c_out <= (c_add and not(S0)) or (c_sub and S0);
end struct;

 