entity genB2 is
port (B: in bit_vector(15 downto 0); c0: in bit; B2: out bit_vector(15 downto 0));
end entity genB2;

architecture StructB2 of genB2 is
begin
	process(B,c0)
	begin
		for i in 0 to 15 loop
		B2(i) <= B(i) xor c0;
		end loop;
	end process;
end StructB2;