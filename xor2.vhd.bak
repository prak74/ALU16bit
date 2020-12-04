--This implements the xor operation between two 16 bit vector inputs
entity xor2 is
port (p,q: in bit_vector(15 downto 0); r: out bit_vector(15 downto 0));
end entity xor2;
-- r = p xor q

architecture Structxor of xor2 is
begin
	process (p,q)
	begin
		for i in 0 to 15 loop
			r(i) <= p(i) xor q(i);
		end loop;
	end process;
end Structxor;