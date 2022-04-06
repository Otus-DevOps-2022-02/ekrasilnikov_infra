# ekrasilnikov_infra

Подключение в одну команду: ssh -J user@ext_ip_bastion user@int_ip_someinternalhost
Подключение по алиасу: добавить ip и алиас в hosts, или прописать в переменную окружения (с именем someinternalhost) user и ip хоста.

bastion_IP = 51.250.10.23
someinternalhost_IP = 10.128.0.25