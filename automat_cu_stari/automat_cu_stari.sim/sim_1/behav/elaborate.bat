@echo off
set xv_path=D:\\Vivado\\2016.4\\bin
call %xv_path%/xelab  -wto b669b0ac42b7446e87d1ebf5f2882a7a -m64 --debug typical --relax --mt 2 -L xil_defaultlib -L secureip --snapshot automat_sim_behav xil_defaultlib.automat_sim -log elaborate.log
if "%errorlevel%"=="0" goto SUCCESS
if "%errorlevel%"=="1" goto END
:END
exit 1
:SUCCESS
exit 0
