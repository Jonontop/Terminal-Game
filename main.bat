
@echo off
setlocal enabledelayedexpansion

echo Pozdravljen na Vegovi
echo Uporabi S /n Z /n V /n J
set x=False
set y=False

:main
call :vnos_check
echo End of the game.

exit /b 0

:jug
echo Nahajas se na jugu. Si v telovadnici sole.
echo O poglej žoga (pritisni E do jo pobereš)
set /p vnos="Vnos: "
if /i "!vnos!" equ "J" (
    set /p vnos="Si ze na jugu. Ponovno vnesi smer! /n Vnos: "
    if /i "!vnos!" equ "J" goto jug
)

if /i "!vnos!" equ "E" (
    set x=True
    echo Pobral si zogo!
    goto vnos_check
) else (
    goto vnos_check
)


:sever
echo Si na severu sole! Tu je profesor sportne vzgoje!
echo Zeli najti svojo zogo!
set /p vnos="Vnesi E če imaš žogo! /n Vnos: "
if /i "!vnos!" equ "E" (
    if !x! equ True (
        echo Profesorju si vrnil žogo! Lepo od tebe!
    ) else (
        echo Nimas zoge!
    )
)
goto vnos_check

:vzhod
echo Si na vzhodu sole!
echo Poglej na mizi je Cin!
set /p vnos="Pritisni E da poberes cin /n Vnos: "
if /i "!vnos!" equ "E" (
    set y=True
    echo Pobral si cin!
)
goto vnos_check

:zahod
echo Si na zahodni strani sole!
echo Profesor elektornike je izgubil svoj cin!
set /p vnos="Vnesi E če imaš Cin /n Vnos: "
if /i "!vnos!" equ "E" (
    if !y! equ True (
        echo Vrnil si cin profesorju, BRAVO!
    )
)
goto vnos_check

:vnos_check
set /p vnos="Vnos: "
if /i "!vnos!" equ "S" (
    call :sever
) else if /i "!vnos!" equ "J" (
    call :jug
) else if /i "!vnos!" equ "V" (
    call :vzhod
) else if /i "!vnos!" equ "Z" (
    call :zahod
) else (
    set x=False
    echo Napaka!
    set /p vnos="Poskusi znova /n Vnos:"
    goto vnos_check
)

exit /b 0

