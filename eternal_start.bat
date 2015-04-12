@echo off

REM eternal.bat - by Steve "ryz" Hassenpflug <ryzawy@gmail.com>
REM Small batch file that compiles the QuakeC code, builds the maps
REM and launches a source port (aka the game).
REM instantly starts a map and executes a custom config for debugging

call eternal_compile.bat
call eternal_build_maps.bat

REM Launch source port with the mod, start map and execute the debug config 

quakespasm.exe -game eternal +map eternal +exec debug.cfg
