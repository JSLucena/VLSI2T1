library ieee;

use ieee.std_logic_1164.all;
use ieee.std_logic_arith.all;
use ieee.std_logic_unsigned.all;

entity fifo is
port
(
	clk, rst, wr_en, rd_en: in std_logic;
	sts_error, sts_full, sts_high, sts_low, sts_empty : out std_logic;
	wr_data : in std_logic_vector(7 downto 0);
	rd_data : out std_logic_vector(7 downto 0)
);
end fifo;

architecture fifo of fifo is
type queue is array(0 to 7) of std_logic_vector(7 downto 0);--MUDAR CASO NECESSARIO AUMENTAR A MEMORIA
--signals
signal mem : queue := (others=>x"00");
signal wr_pointer : integer range 0 to 7 := 0;--MUDAR CASO NECESSARIO AUMENTAR A MEMORIA
signal rd_pointer : integer range 0 to 7 := 0; --MUDAR CASO NECESSARIO AUMENTAR A MEMORIA

signal sts_empty_in, sts_full_in : std_logic;

signal lastOp : std_Logic := '0';
--signal current_state,next_state : std_logic_vector(2 downto 0) := "000";

begin
	 
--	 FSM_current_state : process(clk,rst)
--	 begin
--		if rst = '1' then
--			current_state <= "000";
--		elsif rising_edge(clk) then
--			current_state <= next_state;
--		end if;
--		
--	 end process FSM_current_state;
--	 
--	 FSM : process(clk,current_state,next_state)
--	 begin
--		case current_state is
--			when "000" => --##Idle
--				if wr_en = '1' then
--					next_state <= "001";
--				end if;
--				
--			when "001" => --##Write
--					next_state <= "000";
--			
--			when others =>
--					next_state <="000";
--					
--		end case;
--	end process FSM;
--	
--	FSM_LOGIC : process(clk,rst)
--	begin
--		if rst = '1' then
--			sts_error <= '0';
--			sts_full <= '0';
--			sts_high <= '0';
--			sts_low <= '1';
--			sts_empty <= '1';
--			mem <= (others => x"00");
--			wr_pointer <= 0;
--			rd_pointer <= 0;
--			
--		elsif rising_edge(clk) then
--			
--			case current_state is
--				when "001" =>
--					mem(wr_pointer) <= wr_data;
--					wr_pointer <= wr_pointer + 1;
--				
--				when others =>
--			end case;
--			
--		end if;
--					
--	 end process FSM_LOGIC;

	write_process : process(clk,rst)
	begin
		if rst = '1' then
			wr_pointer <= 0;
			mem <= (others => x"00");
		
		elsif rising_edge(clk) then
			if wr_en = '1' then
				mem(wr_pointer) <= wr_data;
				wr_pointer <= wr_pointer + 1;
				
				if wr_pointer > 7 then ---MUDAR CASO NECESSARIO AUMENTAR A MEMORIA
					wr_pointer <= 0;
				end if;
			end if;
		end if;
	end process write_process;
	
	read_process : process(clk,rst)
	begin
		if rst = '1' then
			rd_pointer <= 0;
			rd_data<= x"00";
		elsif rising_edge(clk) then
			if rd_en = '1' then
				rd_data <= mem(rd_pointer);
				rd_pointer <= rd_pointer + 1;
				if rd_pointer > 7 then ---MUDAR CASO NECESSARIO AUMENTAR A MEMORIA
					rd_pointer <= 0;
				end if;
			end if;
		end if;
	end process read_process;
	
	
	control_process : process(clk,rst)
	begin
		if rst = '1' then
			sts_error <= '0';
			sts_full <= '0';
			sts_high <= '0';
			sts_low <= '1';
			sts_empty <= '1';
			sts_empty_in <= '1';
			sts_full_in <= '0';
			
			lastOp <= '0';
		elsif rising_edge(clk) then
		
			
		
			if wr_en ='1' then
				lastOp <= '1';
			end if;
			
			if rd_en = '1' then
				lastOp <= '0';
			end if;
		
		
			-----BLOCO DO ERRO---------
			if sts_empty_in = '1' then
				if rd_en = '1' then
					sts_error <= '1';
				end if;
				
			elsif sts_full_in = '1' then
				if wr_en = '1' then
					sts_error <= '1';
				end if;
			end if;
			--------------------------
		
			------BLOCO VAZIO/CHEIO------
			if wr_pointer = rd_pointer then
				if lastOp = '1' then --ultima operacao foi escrita
					sts_full_in <= '1';
					sts_full <= '1';
				else
					sts_empty_in <= '1'; -- ultima operacao foi leitura
					sts_empty <= '1';
				end if;
			else
				sts_full_in <= '0';
				sts_empty_in <= '0';
				
			sts_empty <= '0';
			sts_full <= '0';
			end if;
			-----------------------------
				
		end if;
		
	end process control_process;		
		

 end fifo;
