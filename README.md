# SERVER-SCRIPT

## Q-A:
#### Q: Что это?
#### A:
Скрипты к серверу (протестирован на [aws.amazon.com](aws.amazon.com) ) для работы с ***Jupyter notebook*** и не только!

#### Q: Как работает?
#### A:  
 **1**. Вносим данные о своем сервере в файл ***config.txt***.

 **2.** Запускаем ***launcher.sh***, который создаст подключение к серверу, загрузить
необходимые программы и библиотеки на сервер и выполнит подключение к ***Jupyter notebook*** ( подключаемся к ***Jupyter notebook*** так: ***https://publicIP:8888/***, где
  ***publicIP*** - публичный IP вашего сервера )


 **3.** Для работы с сервером в консольном режиме требуется запустить скрипт
***open_server_console.sh***, который просто подключается к указанному вами в ***config.txt*** серверу.


 **4.** Для загрузки файлов на сервер используйте скрипт ***load_file_to_server.sh. *** Его синтаксис:
***sh load_file.sh file_1 file_2 file_3 ... ***
где ***file_i*** - путь на вашем компьютере до файла. Все файлы загружаются в ***~/***.  


 **5.** Для скачивания файлов с сервера используйте скрипт ***save_file.sh.*** Его синтаксис:
***sh save_file_from_server.sh PATH_IN_YOUR_COMPUTER file_1 file_2 file_3 ***
где ***file_i*** - это ПОЛНЫЙ ПУТЬ К ФАЙЛУ. Например, это ***/home/ubuntu/...***


#### Q: Могу ли я добавить свои пакеты для установки на сервер?
#### A:
Да, для этого открываем ***install_packages_for_Jupyter.sh*** и добавляем нужные пакеты.
