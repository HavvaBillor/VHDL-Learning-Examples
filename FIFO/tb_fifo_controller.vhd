library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use ieee.numeric_std.all;
use ieee.std_logic_unsigned.all;

entity tb_fifo_controller is
 
end tb_fifo_controller;

architecture arch of tb_fifo_controller is


component fifo_controller is
 port(
    clk         : IN  STD_LOGIC;
    rst         : IN  STD_LOGIC;
    din         : IN  STD_LOGIC_VECTOR(7 DOWNTO 0);
    wr_en       : IN  STD_LOGIC;
    rd_en       : IN  STD_LOGIC;
    dout        : OUT STD_LOGIC_VECTOR(7 DOWNTO 0);
    full        : OUT STD_LOGIC;
    wr_ack      : OUT STD_LOGIC;
    empty       : OUT STD_LOGIC;
    valid       : OUT STD_LOGIC;
    data_count  : OUT STD_LOGIC_VECTOR(7 DOWNTO 0);
    sbiterr     : OUT STD_LOGIC;
    dbiterr     : OUT STD_LOGIC;
    wr_rst_busy : OUT STD_LOGIC;
    rd_rst_busy : OUT STD_LOGIC
 );
end component ;

signal clk         :STD_LOGIC;
signal rst         :STD_LOGIC;
signal din         :STD_LOGIC_VECTOR(7 DOWNTO 0);
signal wr_en       :STD_LOGIC;
signal rd_en       :STD_LOGIC;
signal dout        :STD_LOGIC_VECTOR(7 DOWNTO 0);
signal full        :STD_LOGIC;
signal wr_ack      :STD_LOGIC;
signal empty       :STD_LOGIC;
signal valid       :STD_LOGIC;
signal data_count  :STD_LOGIC_VECTOR(7 DOWNTO 0);
signal sbiterr     :STD_LOGIC;
signal dbiterr     :STD_LOGIC;
signal wr_rst_busy :STD_LOGIC;
signal rd_rst_busy :STD_LOGIC;


constant clock_period: time := 20ns;


begin

clock_proc: process
	begin 
		clk <= '0';
		wait for clock_period/2;
		clk <= '1';
		wait for clock_period/2;
	end process;


fifo_ip: fifo_controller port map(

clk         => clk,         
rst         => rst,         
din         => din,         
wr_en       => wr_en,       
rd_en       => rd_en,       
dout        => dout,        
full        => full,        
wr_ack      => wr_ack,      
empty       => empty,       
valid       => valid,       
data_count  => data_count,  
sbiterr     => sbiterr,     
dbiterr     => dbiterr,     
wr_rst_busy => wr_rst_busy, 
rd_rst_busy => rd_rst_busy 

);

stim_proc: process 
begin 
	rst <= '1';
	wait for 210ns;
	rst <= '0';
	wait for clock_period;
	
	wait for 300ns;
	
	wr_en <= '1';
	din<= x"0a";
	wait for clock_period;
	
	
	din <= x"0b";
	wait for clock_period;
	
	din <= x"0c";
	wait for clock_period;
	
	din <= x"0d";
	wait for clock_period;
	
	din <= x"0e";
	wait for clock_period;
	
	din <= x"0f";
	wait for clock_period;
	
	din <= x"aa";
	wait for clock_period;
	
	din <= x"ab";
	wait for clock_period;
	
	din <= x"ac";
	wait for clock_period;
	
	din <= x"ad";
	wait for clock_period;
	
	din <= x"ae";
	wait for clock_period;
	
	din <= x"ed";
	wait for clock_period;
	
	din <= x"da";
	wait for clock_period;
	
	din <= x"2a";
	wait for clock_period;
	
	din <= x"ff";
	wait for clock_period;
	
	din <= x"8c";
	wait for clock_period;
	
	din <= x"9b";
	wait for clock_period;
	
	din <= x"bd";
	wait for clock_period;
	
	wr_en <= '0';
	wait for clock_period;
	
	rd_en <= '1';
	wait for clock_period*40;
	rd_en<= '0';
	
	wait;
	
	end process;
	

end architecture;