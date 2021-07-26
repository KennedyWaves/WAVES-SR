echo off
cls
title WAVES SIMPLE REMOVE
color 09
echo 11 1  1  1   1   1    1    1     1     1      1      1       1       1     1
echo 0  0     0       0         0           0             0               0      
echo 10    0      0        0          0            0              1             0
echo 0  0     0       1         0           0             0               1      
echo 10    1  000  000  000   000000000  000    000   00000000    0000000       0
echo 1  1     000  000  000  000    000  000   000   000        000       0      
echo 11    1  000  000  000  000    000  000  000    0000000    00000000        1
echo 0  1     000  000  000  0000000000  000 000      00              000 0      
echo 00    0  0000000000000  000    000  000000      000              000       0
echo 0  0     0000000 0000   000    000  00000       000000000  000000000 0      
echo 00    0      0        1          1            1              1             0
echo 0  0     1       0         1           1             0               0      
echo 00    0      1        0          1            1              0             0
echo 00 0  0  0   0   0    1    1     1     1      0      0       1       0     0
echo.
echo.
echo.
echo.
echo.
echo Pressione ENTER para comecar...
set /p inicio=
:mainmenu
cls
color 09
echo """""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
echo # # #  #  #   #   #   #   WAVES SIMPLE REMOVE  #      #       #       # 
echo _______________________________________________________________________________
echo.
echo.
echo           W  A  V  E  S     S  I  M  P  L  E     R  E  M  O  V  E
echo ________________________________________________________________
echo.
echo         PARA EVITAR ERROS, EXECUTE ESTE PROGRAMA COMO ADMINISTRADOR!
echo.
echo.
echo Para obter informacoes sobre o funcionamento do programa, digite AJUDA.
echo.
echo Para executar o programa, digite RUN.
echo.
echo Para sair, digite EXIT.
echo.
echo.
echo.
set /p entrada1=
if %entrada1% == AJUDA goto ajuda
if %entrada1% == RUN goto executar
if %entrada1% == EXIT goto sair
if %entrada1% == ajuda goto ajuda
if %entrada1% == run goto executar
if %entrada1% == EXIT goto sair

:erro1
cls
color 0C
echo """""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
echo # # #  #  #   #   #   #   WAVES SIMPLE REMOVE  #      #       #       # 
echo _______________________________________________________________________________
echo.
echo.
echo.
echo                     VOCE DIGITOU UM COMANDO INVALIDO!
echo.
echo Pressione ENTER para continuar...
echo.
echo.
set /p error1=
GOTO mainmenu

:executar
cls
echo """""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
echo # # #  #  #   #   #   #   WAVES SIMPLE REMOVE  #      #       #       # 
echo _______________________________________________________________________________
echo.
echo.
echo.
echo                  Digite a letra da unidade a ser limpa
echo.
echo.
echo.
set /p letra=
cls
color 09
echo """""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
echo # # #  #  #   #   #   #   WAVES SIMPLE REMOVE  #      #       #       # 
echo _______________________________________________________________________________
echo.
echo.
echo.
echo.
echo               Removendo atributos definidos nos arquivos...
echo.
echo.
echo.
echo.
attrib -h -r -s /s /d %letra%:\*.*
move %letra%:\.Trashes ARQUIVOS_RECUPERADOS
cls
echo """""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
echo # # #  #  #   #   #   #   WAVES SIMPLE REMOVE  #      #       #       # 
echo _______________________________________________________________________________
echo.
echo.
echo.
echo           Os arquivos da unidade %letra%:\ ja estao visiveis!
echo.
echo.
echo.
echo Pressione ENTER para continuar...
echo.
set /p inicio=
cls
echo """""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
echo # # #  #  #   #   #   #   WAVES SIMPLE REMOVE  #      #       #       # 
echo _______________________________________________________________________________
echo.
echo       Confirme a exclusao destes arquivos potencialmente infecciosos!
echo.
echo.
del /p %letra%:\autorun.inf
echo.
echo.
del /p %letra%:\*.vbs
echo.
echo.
rd /s %letra%:\recycler
echo.
echo.
rd /s %letra%:\$recycle.bin
echo.
echo.
del %letra%:\*.lnk
echo.
echo.
cls
echo """""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
echo # # #  #  #   #   #   #   WAVES SIMPLE REMOVE  #      #       #       # 
echo _______________________________________________________________________________
echo.
echo.
echo.
echo                            ACOES CONCLUIDAS!
echo.
echo.
echo Para voltar ao menu principal, digite MAIN.
echo.
echo Digite EXIT para sair.
echo.
echo.
echo.
set /p entrada2=
if %entrada2% == MAIN goto mainmenu
if %entrada2% == EXIT goto sair
if %entrada2% == main goto mainmenu
if %entrada2% == exit goto sair

:erro2
cls
color 0C
echo """""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
echo # # #  #  #   #   #   #   WAVES SIMPLE REMOVE  #      #       #       # 
echo _______________________________________________________________________________
echo.
echo.
echo.
echo                     VOCE DIGITOU UM COMANDO INVALIDO!
echo.
echo Pressione ENTER para continuar...
echo.
echo.
set /p error2=
cls
color 09
echo """""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
echo # # #  #  #   #   #   #   WAVES SIMPLE REMOVE  #      #       #       # 
echo _______________________________________________________________________________
echo.
echo.
echo.
echo.Para voltar ao menu principal, digite MAIN.
echo.
echo.Digite EXIT para sair.
echo.
echo.
echo.
set /p entrada2=
if %entrada2% == MAIN goto mainmenu
if %entrada2% == EXIT goto sair
if %entrada2% == main goto mainmenu
if %entrada2% == exit goto sair


:sair
cls
echo """""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
echo # # #  #  #   #   #   #   WAVES SIMPLE REMOVE  #      #       #       # 
echo _______________________________________________________________________________
echo.
echo.
echo.
echo.                OBRIGADO POR UTILIZAR SOFTWARE WAVES!
echo.
echo.
echo.Pressione ENTER para sair...
echo.
echo.
set/p entrada3=
exit
:ajuda
cls
echo """""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
echo # # #  #  #   #   #   #   WAVES SIMPLE REMOVE  #      #       #       # 
echo _______________________________________________________________________________
echo.? ? ? ? ? ? ? ? ? ? ? ? ? ?   A J U D A   ? ? ? ? ? ? ? ? ? ? ? ? ? ? ? ? ?
echo.
echo.Este programa remove todos os atributos presentes nos arquivos da unidade
echo.removivel, todos os atalhos *.lnk criados na unidade, arquivos *.VBS e
echo.a pasta  RECYCLER.
echo.tudo isso com o objetivo de remover os virus de atalho. Os quais tranformam
echo.seus arquivos guardados em pendrives ou midias removiveis em atalhos para o
echo.proprio virus.
echo.Apos a recuperacao do acesso aos arquivos, voce devera escanear sua midia
echo.removivel e o seu computador com um antimalware, para encontrar metastases e
echo.e evitar problemas futuros.
echo.
echo.Para voltar ao menu principal, digite MAIN.
echo.
echo.Para executar o programa, digite RUN.
echo.
echo.Para sair, digite EXIT.
echo.
set /p entrada3=
if %entrada3% == AJUDA goto ajuda
if %entrada3% == RUN goto executar
if %entrada3% == EXIT goto sair
if %entrada3% == MAIN goto mainmenu

if %entrada3% == ajuda goto ajuda
if %entrada3% == run goto executar
if %entrada3% == exit goto sair
if %entrada3% == main goto mainmenu

:error3
color 0C
cls
echo """""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
echo # # #  #  #   #   #   #   WAVES SIMPLE REMOVE  #      #       #       # 
echo _______________________________________________________________________________
echo.
echo.
echo.
echo.                    VOCE DIGITOU UM COMANDO INVALIDO!
echo.
echo.Pressione ENTER para continuar...
echo.
echo.
set /p error1=
GOTO ajuda