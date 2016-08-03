#!/bin/bash
source 'config.txt'
# загружаем некоторые скрипты на сервер.
# Могут понадобиться для дальнейшей работы
scp -i $pemfile ./install_packages_for_Jupyter.sh ubuntu@$publicIP:~/
scp -i $pemfile ./config.txt ubuntu@$publicIP:~/
# Подключаемся к серверу и в нем устанавливаем нужные пакеты для jupyter
ssh -i $pemfile ubuntu@$publicIP 'bash -s' < install_packages_for_Jupyter.sh
