set NumTabelas=0 
bin\mysqldump.exe --opt --triggers=false --routines=false --lock-tables=FALSE --max_allowed_packet=100000000 -hlocalhost -uroot -proot      --log-error=Erro.log api_drink drink >mybkp\drink.sql 
IF %ERRORLEVEL% NEQ 0 ( ECHO ERRO NA TABELA drink >>Erro.log ) ELSE ( set /A NumTabelas+=1 ) 
bin\mysqldump.exe --opt --triggers=false --routines=false --lock-tables=FALSE --max_allowed_packet=100000000 -hlocalhost -uroot -proot      --log-error=Erro.log api_drink users >mybkp\users.sql 
IF %ERRORLEVEL% NEQ 0 ( ECHO ERRO NA TABELA users >>Erro.log ) ELSE ( set /A NumTabelas+=1 ) 
ECHO %NumTabelas% >> NumTabelas.txt 
