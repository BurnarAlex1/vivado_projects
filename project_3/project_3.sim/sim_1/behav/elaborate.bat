@echo off
set xv_path=D:\\Vivado\\2016.4\\bin
call %xv_path%/xelab  -wto 02936ad98f6f48f98534b7333c0b5f55 -m64 --debug typical --relax --mt 2 -L xil_defaultlib -L secureip --snapshot Booth_sim1_behav xil_defaultlib.Booth_sim1 -log elaborate.log
if "%errorlevel%"=="0" goto SUCCESS
if "%errorlevel%"=="1" goto END
:END
exit 1
:SUCCESS
exit 0
