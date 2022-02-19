@echo off
set xv_path=D:\\Vivado\\2016.4\\bin
call %xv_path%/xsim automat_sim_behav -key {Behavioral:sim_1:Functional:automat_sim} -tclbatch automat_sim.tcl -log simulate.log
if "%errorlevel%"=="0" goto SUCCESS
if "%errorlevel%"=="1" goto END
:END
exit 1
:SUCCESS
exit 0
