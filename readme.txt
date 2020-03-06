при первом запуске контейнера сделать принудительное копирование логов с зарегестрированых серверов (слотов) в бармане.
barman switch-xlog --force --archive barman-slot-name

чтобы работал крон - права на файлы ./barman_cron.d/* 0644 root root
Чтобы barman подключался к слоту репликации - права на .pgpass в контейнере chmod 400 / chown barman:barman

при восстановлении с timestamp’ом, сильно отличным от текущего — на сервере pg выполнить SELECT pg_xlog_replay_resume();
---------------
