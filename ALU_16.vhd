entity ALU_16 is
	port (A,B: in bit_vector(15 downto 0); S0, S1: in bit; R: out bit_vector(15 downto 0); c,z: out bit);
end ALU_16;

architecture arch of ALU_16 is
--Component Declarations
   --Adder
	component BKAdder is
	port(
	A, B    : in bit_vector(15 downto 0);
	c0      : in bit;
	R       : out bit_vector(15 downto 0);
	cout, z : out bit
	);
	end component;
	
	--Nand
	component bitwise_nand is
	port(
	A, B : in bit_vector(15 downto 0);
	R	  : out bit_vector(15 downto 0);
	z	  : out bit
	);
	end component;
	
	--Xor
	component bitwise_xor is
	port(
	A,B : in bit_vector(0 to 15);
	O   : out bit_vector(0 to 15);
	z   : out bit
	);
	end component;
	
	--Special MUX to implement the control function
	component mux_42 is
	port(
	A0,A1,A2,A3                   : in bit_vector(15 downto 0);
	S0,S1,c_add,c_sub,z0,z1,z2,z3 : in bit;
	R_out                         : out bit_vector(15 downto 0);
	c_out, z_out                  : out bit
	);
	end component;
	
--Intermediate Signal Declarations
	signal Radd, Rsub, Rnand, Rxor : bit_vector(15 downto 0);   --Hold results from respective operations
	signal zadd, zsub, znand, zxor: bit;   --Hold zeroes from respective operations
	signal cadd, csub: bit;   --Hold carries from respective operations
	
begin
--Addition
	a1: BKAdder
	port map(
	A => A, B => B, c0 => '0', R =>Radd, cout => cadd, z => zadd
	);
	
--Subtraction
	sub1: BKAdder
	port map(
	A => A, B => B, c0 => '1', R =>Rsub, cout => csub, z => zsub
	);
	
--NAND
	n1: bitwise_nand
	port map(
	A => A, B => B, R=> Rnand, z => znand
	);
	
--XOR
	x1: bitwise_xor
	port map(
	A => A, B => B, O => Rxor, z => zxor
	);
	
--Select (control) function
	c1: mux_42
	port map(
	A0 => Radd, A1 => Rsub, A2 => Rnand, A3 => Rxor,
	S0 => S0, S1 => S1,
	c_add => cadd, c_sub => csub,
	z0 => zadd, z1 => zsub, z2 => znand, z3 => zxor,
	R_out => R, c_out => c, z_out => z
	);
end arch;