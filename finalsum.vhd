--This generates sum from the propagates, carries and c0
entity finalsum is
port (p : in bit_vector(15 downto 0); c: in bit_vector(16 downto 1); c0: in bit; s: out bit_vector(15 downto 0));
end entity finalsum;
--s is the final sum vector

architecture Structfinalsum of finalsum is
begin
	process (p,c,c0)
	begin
	s(0) <= p(0) xor c0;
		for i in 1 to 15 loop
			s(i) <= p(i) xor c(i);
		end loop;
	end process;
end Structfinalsum;