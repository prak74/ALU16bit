	library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;

entity mux_42 is 
port(
		A0,A1,A2,A3 : in bit_vector(15 downto 0); S0,S1,c_add,c_sub,z0,z1,z2,z3 : in bit;
	-- Ai corresponds to operation, 
	-- A0 	=> Signed Addition
	-- A1 	=> Subtraction
	-- A2 	=> NAND Operation
	-- A3 	=> XOR Operation
	-- S0,S1 => Control bits
	-- c_add => carry from adder
	-- c_sub => carry from subtracter
	-- zi 	=> zero bit from ith operation
		
		R_out : out bit_vector(15 downto 0);
		c_out, z_out : out bit
	-- R_out => Result vector
	-- c_out => carry (if A0 or A1), don't care (if A1 or A2)
	-- z_out => zero bit
		);
end entity mux_42;

architecture Struct of mux_42 is

	component mux_out is
	port ( 
			a,b,c,d : in bit_vector(15 downto 0); S0, S1 : in bit;
			r   : out bit_vector(15 downto 0)
			);
	end component;
	
	component cout_calc is
	port (
			c_add, c_sub, S0, S1 : in bit;
			c_out : out bit
			);
	end component;
	
	component zout_calc is
	port (
			z0, z1,z2,z3,S0, S1 : in bit;
			z_out : out bit
			);
	end component;
	
begin
	u1: mux_out
	port map(
				a => A0, b=> A1, c=> A2, d=> A3, S0=> S0, S1=> S1, r=>R_out
				);
	
	u2: cout_calc
	port map(
				c_add => c_add, c_sub => c_sub, S0=> S0, S1=>S1, c_out=>c_out
				);
				
	u3: zout_calc
	port map(
				z0=>z0,z1=>z1,z2=>z2,z3=>z3,S0=>S0,S1=>S1,z_out=>z_out
				);
				
end struct;

	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	-- c,z are carry and zero bit respectively
	-- c0 => 
	-- c => carry if A0 or A1, don't care if A2 or A3\
	-- z => zero bit
	
	
		
		