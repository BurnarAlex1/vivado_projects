@echo off
set xv_path=D:\\Vivado\\2016.4\\bin
call %xv_path%/xelab  -wto c24d62b2e69248898f968445c58fc1cb -m64 --debug typical --relax --mt 2 -L xil_defaultlib -L secureip --snapshot MIPS_behav xil_defaultlib.MIPS -log elaborate.log
if "%errorlevel%"=="0" goto SUCCESS
if "%errorlevel%"=="1" goto END
:END
exit 1
:SUCCESS
exit 0
