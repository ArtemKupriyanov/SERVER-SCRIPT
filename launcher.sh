#!/bin/bash
source 'config.txt'
# загружаем некоторые скрипты на сервер.
# Могут понадобиться для дальнейшей работы
sh load_file.sh ./save_file.sh ./install_packages_for_Jupyter.sh
# Подключаемся к серверу и в нем устанавливаем нужные пакеты для jupyter
ssh -i $pemfile ubuntu@$publicIP 'bash -s' < install_packages_for_Jupyter.sh
