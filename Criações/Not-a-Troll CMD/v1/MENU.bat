goto INICIO
:UPDT

cls
UPDATE.bat

:INICIO
ECHO.
ECHO ....................................................
ECHO                    Not a Troll V1
ECHO ....................................................
echo[
ECHO . Bem vindo ao Not a Troll. Um programa para gerar .
ECHO . builds e campeoes aleatoriamente para o jogo     .
ECHO . league of legends                                .
ECHO ....................................................
echo[
SET /P  M=DIGITE 1 PARA CONTINUAR ou 2 PARA ATUALIZAR:
IF %M%==1 GOTO CONT
IF %M%==2 GOTO UPDT

:CONT
cls
ECHO ....................................................
ECHO                GERANDO ALEATORIAMENTE
ECHO ....................................................
echo[
ECHO . Vai ser gerador um campeao e uma build aleatoria .
ECHO . Aguarde um instante enquanto seu pc lento roda.  .
ECHO .                                                  .
ECHO ....................................................
ping 127.0.0.1 -n 2 > nul

