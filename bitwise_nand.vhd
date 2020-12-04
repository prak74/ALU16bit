entity bitwise_nand is 
	port(
			A, B : in bit_vector(15 downto 0);
			R	  : out bit_vector(15 downto 0);
			z	  : out bit
			);
end entity bitwise_nand;

architecture Struct of bitwise_nand is

	signal C : bit_vector(15 downto 0); --calculation of each nand
	
	component nand_2 
	port(
			a,b : in bit;
			c   : out bit
			);
	end component;
	
	component zerocheck_1 is
	port (
	S : in bit_vector(15 downto 0); z: out bit
	);
	end component;

begin
	-- First nand each of the bits
	u1: nand_2
	port map(
				a => A(0), b => B(0),
				c => C(0)
				);
	u2: nand_2
	port map(
				a => A(1), b => B(1),
				c => C(1)
				);
	u3: nand_2
	port map(
				a => A(2), b => B(2),
				c => C(2)
				);
	u4: nand_2
	port map(
				a => A(3), b => B(3),
				c => C(3)
				);
	u5: nand_2
	port map(
				a => A(4), b => B(4),
				c => C(4)
				);
	u6: nand_2
	port map(
				a => A(5), b => B(5),
				c => C(5)
				);
	u7: nand_2
	port map(
				a => A(6), b => B(6),
				c => C(6)
				);
	u8: nand_2
	port map(
				a => A(7), b => B(7),
				c => C(7)
				);
	u9: nand_2
	port map(
				a => A(8), b => B(8),
				c => C(8)
				);
	u10: nand_2
	port map(
				a => A(9), b => B(9),
				c => C(9)
				);
	u11: nand_2
	port map(
				a => A(10), b => B(10),
				c => C(10)
				);
	u12: nand_2
	port map(
				a => A(11), b => B(11),
				c => C(11)
				);
	u13: nand_2
	port map(
				a => A(12), b => B(12),
				c => C(12)
				);
	u14: nand_2
	port map(
				a => A(13), b => B(13),
				c => C(13)
				);
	u15: nand_2
	port map(
				a => A(14), b => B(14),
				c => C(14)
				);
	u16: nand_2
	port map(
				a => A(15), b => B(15),
				c => C(15)
				);
	R <= C;
	--Now process the zero bit
	u17: zerocheck_1
	port map(
				S => C,
				z => z
				);
end Struct;