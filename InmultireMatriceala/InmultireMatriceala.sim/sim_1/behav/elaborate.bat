@echo off
set xv_path=D:\\Vivado\\2016.4\\bin
call %xv_path%/xelab  -wto 9e4e5037dcc44f2d9d035e46e6690745 -m64 --debug typical --relax --mt 2 -L xil_defaultlib -L secureip --snapshot Inmultire_sim_behav xil_defaultlib.Inmultire_sim -log elaborate.log
if "%errorlevel%"=="0" goto SUCCESS
if "%errorlevel%"=="1" goto END
:END
exit 1
:SUCCESS
exit 0
