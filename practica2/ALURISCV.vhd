----------------------------------------------------------------------------------
----------------------------------------------------------------------------------
-- Asignatura: Estructura de Computadores. GII. 2º curso.
-- Fichero: ALURISCV.vhd
-- Descripción: ALU del microprocesador RISC-V
-- Fichero de apoyo para: Práctica: 2. Ejercicio: 2
----------------------------------------------------------------------------------
----------------------------------------------------------------------------------

library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;

entity ALURISCV is
	port(
   		Op1 : in signed(31 downto 0);
		Op2 : in signed(31 downto 0);
		ALUControl : in std_logic_vector (2 downto 0);
		Res : out signed(31 downto 0);
		Z : out std_logic
		);
end ALURISCV;

architecture Practica of ALURISCV is
begin
	process(all)
	begin
    		case ALUControl is
        		when "000" => Res <= Op1+Op2;
        		when "001" => Res <= Op1-Op2;
        		when "010" => Res <= Op1 AND Op2;
        		when "011" => Res <= Op1 OR Op2;
        		when "101" => if Op1<Op2 then
					Res<=(0=>'1', others=>'0');
					else
					Res<=(others=>'0');
					end if;
        		when "111" => Res <= Op1 XOR Op2;
			when others => Res <= Res;
    		end case;
		if Res = X"00000000" then
			Z<='1';
		else
			Z<='0';
		end if;
	end process;
end Practica;
--Si no funciona porque Z no lee el Res actual, crear una Signal R a la que se le asigne Res en cada case y usarla para ponerle el valor a Z
