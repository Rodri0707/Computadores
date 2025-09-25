----------------------------------------------------------------------
----------------------------------------------------------------------
-- Asignatura: Estructura de Computadores. GII. 2º curso.
-- Fichero: MicroSuma.vhd
-- Descripción: Micro RISC-V muy simplificado, sólo suma con dato inmediato
-- Fichero de apoyo para: Práctica: 2. Ejercicio: 3
----------------------------------------------------------------------
----------------------------------------------------------------------

library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;

entity MicroSuma is
	port (
		Clk : in std_logic; -- Reloj
		NRst : in std_logic; -- Reset activo a nivel bajo
		MemProgAddr : out unsigned(31 downto 0); -- Dirección para la memoria de programa
		MemProgData : in unsigned(31 downto 0) -- Código de operación
	);
	end MicroSuma;

architecture Practica of MicroSuma is

	-- Declaración de RegsRISCV
	
	-- Declaración de ALURISCV
	
	-- Declaración de señales auxiliares

begin

	-- Instancia de RegRISCV
	
	-- Instancia de ALURISCV
	
	-- Extensión de signo
	
	-- Ruta del PC


end Practica;

