set NumTabelas=0 
bin\mysqldump.exe --opt --triggers=false --routines=false --lock-tables=FALSE --max_allowed_packet=100000000 -hlocalhost -uroot -proot      --log-error=Erro.log atenasystem alune >mybkp\alune.sql 
IF %ERRORLEVEL% NEQ 0 ( ECHO ERRO NA TABELA alune >>Erro.log ) ELSE ( set /A NumTabelas+=1 ) 
bin\mysqldump.exe --opt --triggers=false --routines=false --lock-tables=FALSE --max_allowed_packet=100000000 -hlocalhost -uroot -proot      --log-error=Erro.log atenasystem comissao >mybkp\comissao.sql 
IF %ERRORLEVEL% NEQ 0 ( ECHO ERRO NA TABELA comissao >>Erro.log ) ELSE ( set /A NumTabelas+=1 ) 
bin\mysqldump.exe --opt --triggers=false --routines=false --lock-tables=FALSE --max_allowed_packet=100000000 -hlocalhost -uroot -proot      --log-error=Erro.log atenasystem disciplina >mybkp\disciplina.sql 
IF %ERRORLEVEL% NEQ 0 ( ECHO ERRO NA TABELA disciplina >>Erro.log ) ELSE ( set /A NumTabelas+=1 ) 
bin\mysqldump.exe --opt --triggers=false --routines=false --lock-tables=FALSE --max_allowed_packet=100000000 -hlocalhost -uroot -proot      --log-error=Erro.log atenasystem monitore >mybkp\monitore.sql 
IF %ERRORLEVEL% NEQ 0 ( ECHO ERRO NA TABELA monitore >>Erro.log ) ELSE ( set /A NumTabelas+=1 ) 
bin\mysqldump.exe --opt --triggers=false --routines=false --lock-tables=FALSE --max_allowed_packet=100000000 -hlocalhost -uroot -proot      --log-error=Erro.log atenasystem presenca >mybkp\presenca.sql 
IF %ERRORLEVEL% NEQ 0 ( ECHO ERRO NA TABELA presenca >>Erro.log ) ELSE ( set /A NumTabelas+=1 ) 
bin\mysqldump.exe --opt --triggers=false --routines=false --lock-tables=FALSE --max_allowed_packet=100000000 -hlocalhost -uroot -proot      --log-error=Erro.log atenasystem representante >mybkp\representante.sql 
IF %ERRORLEVEL% NEQ 0 ( ECHO ERRO NA TABELA representante >>Erro.log ) ELSE ( set /A NumTabelas+=1 ) 
bin\mysqldump.exe --opt --triggers=false --routines=false --lock-tables=FALSE --max_allowed_packet=100000000 -hlocalhost -uroot -proot      --log-error=Erro.log atenasystem sala >mybkp\sala.sql 
IF %ERRORLEVEL% NEQ 0 ( ECHO ERRO NA TABELA sala >>Erro.log ) ELSE ( set /A NumTabelas+=1 ) 
bin\mysqldump.exe --opt --triggers=false --routines=false --lock-tables=FALSE --max_allowed_packet=100000000 -hlocalhost -uroot -proot      --log-error=Erro.log atenasystem tutore >mybkp\tutore.sql 
IF %ERRORLEVEL% NEQ 0 ( ECHO ERRO NA TABELA tutore >>Erro.log ) ELSE ( set /A NumTabelas+=1 ) 
ECHO %NumTabelas% >> NumTabelas.txt 
