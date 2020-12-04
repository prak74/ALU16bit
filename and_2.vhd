--This implements the and operation between two 16 bit vector inputs
entity and_2 is
port (p,q: in bit_vector(15 downto 0); r: out bit_vector(15 downto 0));
end entity and_2;
--r = p and q

architecture Structand of and_2 is
begin
	process (p,q)
	begin
		for i in 0 to 15 loop
			r(i) <= p(i) and q(i);
		end loop;
	end process;
end Structand;