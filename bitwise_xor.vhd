entity bitwise_xor is
port( A, B: in bit_vector(15 downto 0);
	O: out bit_vector(15 downto 0);
	z: out bit);
end bitwise_xor;

architecture behavioral of bitwise_xor is

signal R: bit_vector(15 downto 0);  --to hold O

component zerocheck_1 is
	port (
	S : in bit_vector(15 downto 0); z: out bit
	);
end component;

begin
	start:
	for i in 0 to 15 generate
		R(i) <= A(i) xor B(i);
	end generate start;
	O <= R;

z1: zerocheck_1
	port map(
				S => R,
				z => z
				);
end behavioral;