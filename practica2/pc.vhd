library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;

entity PC is
	port (
		Clk : in std_logic; -- Reloj
		Entrada : in unsigned(31 downto 0);
		Salida : out unsigned(31 downto 0)
	);
end PC;

architecture Practica of PC is

begin

process(all)
begin 
     if rising_edge(clk) then
	Salida <= Entrada + X"00000004";
     end if;
end process;

end Practica;	