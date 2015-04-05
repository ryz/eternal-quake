REM eternal.bat - by Steve "ryz" Hassenpflug <ryzawy@gmail.com>
REM Small batch file that compiles the QuakeC code and launches a source port (aka the game),
REM instantly starts a map and executes a custom config for debugging


REM Compile the code with GMQCC and original QCC flags

cd eternal\progs
gmqcc -std=qcc

REM Launch source port with the mod, start map and execute the debug config 

cd ..\..
quakespasm.exe -game eternal +map e1m1 +exec debug.cfg