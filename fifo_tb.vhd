library ieee;

use ieee.std_logic_1164.all;
use ieee.std_logic_arith.all;
use ieee.std_logic_unsigned.all;

entity fifo_tb is
end fifo_tb;

architecture fifo_tb of fifo_tb is

	signal clk : std_logic := '0';
	signal rst : std_logic := '1';
	signal wr_en :std_logic := '0';
	signal rd_en : std_logic := '0';
	
	signal sts_error : std_logic := '0';
	signal sts_full : std_logic := '0';
	signal sts_high : std_logic := '0';
	signal sts_low : std_Logic := '0';
	signal sts_empty : std_Logic := '0';
	
	signal wr_data : std_logic_vector(7 downto 0) := x"00";
	signal rd_data : std_logic_vector(7 downto 0) := x"00";
	
	
begin

	--clk <= not clk after 10 ns;
	rst <= '0' after 50 ns, '1' after 500 ns, '0' after 2100 ns;
	
	DUV : entity work.fifo port map(
	clk=>clk, rst=>rst, wr_en=>wr_en, rd_en=>rd_en,
	sts_error=>sts_error, sts_full=>sts_full, sts_high=>sts_high, sts_low=>sts_low, sts_empty=>sts_empty,
	wr_data=>wr_data,
	rd_data=>rd_data	);
	
	
	clock_gen : process
	begin
		clk <= '1';
		wait for 10 ns;
		clk <= '0';
		wait for 10 ns;
	end process clock_gen;
	
	wr_en <= '0', '1' after 101 ns, '0' after 121 ns , '1' after 151 ns, '0' after 170 ns, '1' after 191 ns, '0' after 212 ns;
	
	wr_data <= x"11" after 90 ns, x"12" after 150 ns, x"13" after 200 ns;
	
	rd_en <= '1' after 230 ns , '0' after 250 ns, '1' after 260 ns, '0' after 270 ns;
	
	

end fifo_tb;
