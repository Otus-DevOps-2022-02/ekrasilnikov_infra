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
