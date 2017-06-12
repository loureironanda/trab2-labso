#!/bin/bash
opcao=5
while [ $opcao -ne 0 ]
do
echo "
--------------- MENU ---------------
[1] Listar conte√∫do da pasta atual
[2] Ver conte√∫do de um arquivo 
[3] Testar se uma url est√° no ar
[0] Sair
------------------------------------
Informe a sua op√√o:"

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
echo "O arquivo n√£o existe!"
fi
;;
3) echo "Informe a URL:"
read URL
ping -c 1 $URL
if [ $? -eq 0 ]
then
echo "A url est√° no ar!"
else
echo "Fora do ar!"
fi
;;
0) echo "Saindo do menu"
;;
*) echo "Op√√o n√£o reconhecida!" 
esac
done


