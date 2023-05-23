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


<!---------------- CRIANDO AS PASTAS ---------------->

mkdir publico
mkdir adm
mkdir ven
mkdir sec


<!---------------- CRIANDO OS GRUPOS ---------------->

groupadd PUBLICO
groupadd GRP_ADM
groupadd GRP_VEN
groupadd GRP_SEC


<!---------------- DEFININDO OS USUARIOS NOS GRUPOS ---------------->

usermod -G GRP_ADM carlos
usermod -G GRP_ADM maria
usermod -G GRP_ADM joao

usermod -G GRP_VEN debora
usermod -G GRP_VEN sebastiana
usermod -G GRP_VEN roberto

usermod -G GRP_SEC josefina
usermod -G GRP_SEC amanda
usermod -G GRP_SEC rogerio


<!---------------- DEFININDO OS DONOS DOS GRUPOS ---------------->

chown root:GRP_ADM /adm/
chown root:GRP_VEN /ven/
chown root:GRP_SEC /sec/
chown root:root /publico/


<!---------------- FORNECENDO AS PERMISSOES ---------------->


chmod 777 /publico/
chmod 770 /adm/
chmod 770 /ven/
chmod 770 /sec/








