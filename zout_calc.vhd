entity zout_calc is
port (
		z0,z1,z2,z3,S0,S1 : in bit;
		z_out : out bit
		);
end entity zout_calc;

architecture struct of zout_calc is 
begin
	z_out <= (z0 and not(S1) and not(S0)) or (z1 and not(S1) and S0) or (z2 and S1 and not(S0)) or (z3 and S1 and S0);
end struct;