@echo off
set xv_path=D:\\Vivado\\2016.4\\bin
call %xv_path%/xelab  -wto e8470255f6654a6aa1b84602e09a5646 -m64 --debug typical --relax --mt 2 -L xil_defaultlib -L secureip --snapshot num4_tb_behav xil_defaultlib.num4_tb -log elaborate.log
if "%errorlevel%"=="0" goto SUCCESS
if "%errorlevel%"=="1" goto END
:END
exit 1
:SUCCESS
exit 0
