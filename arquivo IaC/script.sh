#!/bin/bash

<!---------------- CRIANDO USUARIOS ---------------->


USUÁRIOS DA ADMINISTRAÇÃO:

useradd carlos -c "carlos" -m -s /bin/bash -p $(openssl passwd senhasecreta) 
useradd maria -c "maria" -m -s /bin/bash -p $(openssl passwd senhasecreta) 
useradd joao -c "joao" -m -s /bin/bash -p $(openssl passwd senhasecreta) 

USUÁRIOS DAS VENDAS: 

useradd debora -c "debora" -m -s /bin/bash -p $(openssl passwd senhasecreta) 
useradd sebastiana -c "sebastiana" -m -s /bin/bash -p $(openssl passwd senhasecreta) 
useradd roberto -c "roberto" -m -s /bin/bash -p $(openssl passwd senhasecreta) 

USUÁRIOS DA SEGURANCA:

useradd josefina -c "josefina" -m -s /bin/bash -p $(openssl passwd senhasecreta) 
useradd amanda -c "amanda" -m -s /bin/bash -p $(openssl passwd senhasecreta) 
useradd rogerio -c "rogerio" -m -s /bin/bash -p $(openssl passwd senhasecreta) 


<!---------------- CRIANDO OS GRUPOS ---------------->

groupadd PUBLICO
groupadd GRP_ADM
groupadd GRP_VEN
groupadd GRP_SEC



<!---------------- DEFININDO OS DONOS DOS GRUPOS ---------------->

chown carlos:GRP_ADM /adm/
chown debora:GRP_VEN /ven/
chown josefina:GRP_SEC /sec/



<!---------------- FORNECENDO AS PERMISSOES ---------------->


chmod 777 /PUBLICO/
chmod 770 /adm/
chmod 770 /ven/
chmod 770 /sec/







