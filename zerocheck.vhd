--This returns the or operation on every bit of the sum and cout
entity zerocheck is
port ( S: in bit_vector(15 downto 0); c: in bit; z: out bit);
end entity zerocheck;
-- z=1 if and only if all bits in S are 0 and cout (c here ) is 0

architecture Structzerocheck of zerocheck is
begin
	z <= not (S(0) or S(1) or S(2) or S(3) or S(4) or S(5) or S(6) or S(7) or S(8) or S(9) or S(10) or S(11) or S(12) or S(13) or S(14) or S(15) or c);
end Structzerocheck;