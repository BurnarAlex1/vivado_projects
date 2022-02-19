@echo off
set xv_path=D:\\Vivado\\2016.4\\bin
call %xv_path%/xelab  -wto 87e5898e22e24ae1a971bbdd37fee55c -m64 --debug typical --relax --mt 2 -L xil_defaultlib -L secureip --snapshot convertor_sim_behav xil_defaultlib.convertor_sim -log elaborate.log
if "%errorlevel%"=="0" goto SUCCESS
if "%errorlevel%"=="1" goto END
:END
exit 1
:SUCCESS
exit 0
