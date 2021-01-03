-- spin_sensor_receiver.vhd

-- Generated using ACDS version 20.1 711

library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;

entity spin_sensor_receiver is
	port (
		clk_clk       : in std_logic := '0'; --   clk.clk
		reset_reset_n : in std_logic := '0'  -- reset.reset_n
	);
end entity spin_sensor_receiver;

architecture rtl of spin_sensor_receiver is
	component spin_sensor_receiver_spin_sensor_receiver_0 is
		port (
			clk_clk       : in std_logic := 'X'; -- clk
			reset_reset_n : in std_logic := 'X'  -- reset_n
		);
	end component spin_sensor_receiver_spin_sensor_receiver_0;

begin

	spin_sensor_receiver_0 : component spin_sensor_receiver_spin_sensor_receiver_0
		port map (
			clk_clk       => open, --   clk.clk
			reset_reset_n => open  -- reset.reset_n
		);

end architecture rtl; -- of spin_sensor_receiver