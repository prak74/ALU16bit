--Gives group generates and propagates
entity GenProp is
	port( Gin1, Pin1, Gin2, Pin2: in bit; Gout, Pout: out bit);
end entity GenProp;

--Gin2 : G_ij, Gin1 : G_(j-1)k and similarly Pin
--Gout: G_ik

architecture Struct1 of GenProp is
begin
	Gout <= Gin2 or (Pin2 and Gin1);
	Pout <= Pin1 and Pin2;
end Struct1;