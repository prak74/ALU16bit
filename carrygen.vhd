--This generates carry for each bit from the group generates and propagates
entity carrygen is
port (g, p: in bit_vector(15 downto 0); c0: in bit; c: out bit_vector(16 downto 1));
end entity carrygen;

architecture Structcarrygen of carrygen is
begin
	process (g,p,c0)
	begin
		for i in 0 to 15 loop
			c(i+1) <= g(i) or (p(i) and c0);
		end loop;
	end process;
end Structcarrygen;