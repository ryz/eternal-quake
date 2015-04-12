@echo off

REM eternal_compile.bat - by Steve "ryz" Hassenpflug <ryzawy@gmail.com>
REM Small batch file that compiles the QuakeC code

REM Compile the code with GMQCC and original QCC flags

cd eternal\progs
gmqcc -std=qcc
cd ..\..