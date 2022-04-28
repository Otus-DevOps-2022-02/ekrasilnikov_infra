# ekrasilnikov_infra

##ДЗ №3

Подключение в одну команду: ssh -J user@ext_ip_bastion user@int_ip_someinternalhost
Подключение по алиасу: добавить ip и алиас в hosts, или прописать в переменную окружения (с именем someinternalhost) user и ip хоста.

bastion_IP = 51.250.10.23
someinternalhost_IP = 10.128.0.25

##ДЗ№4

testapp_IP = 51.250.3.150
testapp_port = 9292

CLI:

yc compute instance create --name reddit-app --hostname reddit-app --memory=4 --create-boot-disk image-folder-id=standard-images,image-family=ubuntu-1604-lts,size=10GB --network-interface subnet-name=default-ru-central1-a,nat-ip-version=ipv4 --metadata serial-port-enable=1 --metadata-from-file user-data=.\metadata.yml

##ДЗ№5

Установлен Packer. Создан сервисный аккаунт. Подготовлен файл шаблона для Packer. Подготовлен образ. Добавлено параметризирование шаблона.

Проверка параметризированного шаблона:

packer validate -var-file=variables.json ./ubuntu16.json

Запуск сборки с параметрами:
packer build -var-file=variables.json ./ubuntu16.json

##ДЗ№6

Описан main.tf, добавлен ресурс yandex_compute_instance. Добавлены provisioner, входные и выходные переменные.

##ДЗ№7

Изменение конфигов для создания нескольких ВМ. Подключение модулей. Добавление конфигов для наката в разных средах (stage, prod). Вынос state с локального ресурса в S3.

##ДЗ№8

Выполнена локальная установка Ansible (+ Python). Созданы inventory и конфигурационный файлы. Ознакомление с простыми командами для взаимодействия с ВМ через Ansible. Написан простой playbook.

После выполнения "ansible app -m command -a 'rm -rf ~/reddit'" и повторного запуска плейбука счетчик changed меняет значение на 1, т.к. выполняется таска "Clone repo" из-за удаления каталога reddit.

##ДЗ№9

Создание общего плейбука, создание сценариев, создание хендлеров. Разбивка общего плейбука на раздельные плейбуки со своими сценариями (по логике задач). Замена провиженеров Packer на Ansible плейбуки. Билд образов с измененными провиженерами через Packer.

##ДЗ№10

Создание ролей на основе ранее созданных плейбуков. Проверка и вызов созданных ролей. Создание и конфигурирование окружений stage и prod для ansible. Добавление и проверка community роли jdauphant.nginx из ansible-galaxy. Создание пользователей и волтование credentials.

##ДЗ№11

Установка VirtualBox и Vagrant. Создание конфигурации для Vagrant. Правка провиженеров и ролей для раската через Vagrant. Установка Molecule и Testinfra, тестирование роли.
