#!/bin/bash
opcao=5
while [ $opcao -ne 0 ]
do
echo "
--------------- MENU ---------------
[1] Listar conteúdo da pasta atual
[2] Ver conteúdo de um arquivo 
[3] Testar se uma url está no ar
[0] Sair
------------------------------------
Informe a sua op��o:"

read opcao 
case "$opcao" in
1) ls .
;;
2) echo "Informe o nome do arquivo que deseja ver:"
read arquivo
if [ -f $arquivo ]
then
cat $arquivo
else
echo "O arquivo não existe!"
fi
;;
3) echo "Informe a URL:"
read URL
ping -c 1 $URL
if [ $? -eq 0 ]
then
echo "A url está no ar!"
else
echo "Fora do ar!"
fi
;;
0) echo "Saindo do menu"
;;
*) echo "Op��o não reconhecida!" 
esac
done


