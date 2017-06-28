@echo off
mode con:cols=53 lines=10

:CHAMP
set /a rndCHAMP=%random%%%137
for /f "tokens=1,2" %%a in (CHAMPS.txt) do if %rndCHAMP%==%%a Echo CHAMP: %%b

:SPELL
set /a rndSPELL1=%random%%%10
set /a rndSPELL2=%random%%%10
for /f "tokens=1,2,3" %%a in (SPELLS.txt) do if %rndSPELL1%==%%a set spell1=%%b
for /f "tokens=1,2,3" %%a in (SPELLS.txt) do if %rndSPELL2%==%%a set spell2=%%c
if %%b==%%c GOTO SPELL
if %%b==nul GOTO SPELL
if %%c==null GOTO SPELL
if %%c==0 GOTO SPELL
if %%b==  GOTO SPELL
echo SPELLS: %spell1% e %spell2%

:SKILLS
set /a rnd=%random%%%6
for /f "tokens=1,2" %%a in (SKILLS.txt) do if %rnd%==%%a set skill=%%b
if %%b==nul GOTO SKILLS
if %%b==null GOTO SKILLS
if %%b==0 GOTO SKILLS
if %%b==  GOTO SKILLS

echo SKILLS: %skill%




pause
cls
goto CHAMP
