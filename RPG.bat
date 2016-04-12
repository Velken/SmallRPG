@echo off
title Small RPG
color 7
if "%1" neq "" (goto %1)
:Menu
cls
echo 1.Start
echo 2.Instructions
echo 3.Exit
set /p answer=Type the number of your option and press enter.
if %answer%==1 goto 'start_1'
if %answer%==2 goto 'instructions'
if %answer%==3 goto 'Exit'
pause
:FIX
goto 'instructions'
:'Exit'
echo Thanks for playing.
pause
exit /b
:'instructions'
echo .
echo Wellcome to Small RPG, this is a simple Prompt-RPG,
echo I hope you enjoy it, this is a test project.
echo In this RPG you must type one of the avaliable answers,
echo failing (some how) to do so, will resulte to the game to
echo close and your progress 
echo WILL NOT be saved.
echo (This happens because I am too lazy to add one more line
echo in every choice of the game)
echo .
pause
goto Menu
:'start_1'
echo .
echo You are a mage, in a quest for the Mage Guild AND for the Imperial Mage School,
echo they have sent you a imperial letter, and you must meet up with the others at
echo the secret location that is written on your letter, 
echo you have 3 more days to arrive, but the sooner you get there, the better.
echo .
pause
goto 'Start_2'
:'start_2'
cls
echo .
echo You are leaving the current village (a nameless one), but the chief was nice to
echo let you spend the night in his house, and you ate a wonderful steaw (you wonder
echo if you will ever get to taste it again), there are two paths you can take to
echo where you want to go, one is shorter, but more dangerous, the other is twice as
echo long, but is a imperial road, with patrols, way safer than the other path.
echo Will you take the SAFE path or the QUICK path?
echo .
set /p answer=Which path will you take?
if %answer%==SAFE goto 'SAFE'
if %answer%==QUICK goto 'QUICK'
:FIX2
goto 'start_2'
:'SAFE'
echo .
echo Better safe than sorry, you decide that if they requested your help because of
echo magic skills, you better save up mana for what will come, you can never know
echo what will you found in the way (hopefully not a Dragon, J/K).
echo .
pause
goto 'IMPEROAD1'
:FIX3
goto 'SAFE'
:'QUICK'
echo .
echo The sooner you get there, the better. If they requested your help, you better
echo hurry, you don't know how bad the situation can be (let's hope the risk is 
echo worth it).
echo .
pause
goto 'WOODS1'
:FIX4
goto 'QUICK'
:'IMPEROAD1'
echo .
echo I SHOULD FINISH THIS!
pause
goto Menu
:'WOODS1'
echo .
echo I SHOULD FINISH THIS!
pause
goto Menu
