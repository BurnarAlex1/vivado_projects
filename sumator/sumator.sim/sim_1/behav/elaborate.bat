@echo off
set xv_path=D:\\Vivado\\2016.4\\bin
call %xv_path%/xelab  -wto c346748d6451476b8c10986e8619bd00 -m64 --debug typical --relax --mt 2 -L xil_defaultlib -L secureip --snapshot sumator_sim_behav xil_defaultlib.sumator_sim -log elaborate.log
if "%errorlevel%"=="0" goto SUCCESS
if "%errorlevel%"=="1" goto END
:END
exit 1
:SUCCESS
exit 0
