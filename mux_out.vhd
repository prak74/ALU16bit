entity mux_out is
port(
		a,b,c,d : in bit_vector(15 downto 0); S0,S1 : in bit;
		r	 : out bit_vector(15 downto 0)
		);
end entity mux_out;

architecture struct of mux_out is
begin 
		result_l: for k in 0 to 15 generate
		r(k) <= (a(k) and (not(S1) and not(S0))) or (b(k) and (not(S1) and S0)) or (c(k) and (S1 and not(S0))) or (d(k) and S1 and S0);
	end generate;
end struct;
