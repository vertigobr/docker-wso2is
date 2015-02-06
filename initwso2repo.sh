#!/bin/bash
# deve ser chamado quando montarem em /opt/data uma pasta vazia
# que receberá uma cópia de /opt/wso2is/repository.
# desta forma a própria imagem é capaz de produzir um volume
# com uma cópia do repository padrão do produto recém-instalado.
if [ "$(ls -A /opt/data/wso2is)" ]; then
  echo "A pasta /opt/data/wso2is tem dados. Repository nao sera copiado."
else
  echo "Copiando repository para /opt/data/wso2is"
  cp -R /opt/wso2is/repository /opt/data/wso2is/
fi
