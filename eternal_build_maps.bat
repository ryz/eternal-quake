@echo off

REM eternal_build_maps.bat - by Steve "ryz" Hassenpflug <ryzawy@gmail.com>
REM Small batch file that builds *.map files into finished BSP maps
REM by building BSP geometry and calculating lightmaps
REM via the TyrUtils toolset (in $PATH)

cd eternal\maps

echo Building BSP maps...
echo.

for %%F in (*.map) do (
    qbsp "%%F"
    echo.
)
echo Done!
echo.

echo Calculating lightmaps...
for %%F in (*.bsp) do (
    light -extra4 "%%F"
    echo.
)
echo Done!
echo.

REM Launch source port with the mod, start map and execute the debug config 

cd ..\..

quakespasm.exe -game eternal +map eternal +exec debug.cfg
