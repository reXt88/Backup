#!/bin/bash
#################################
#
# Backup to sdb1
#
################################

# Что будем резервировать
backup_files="logpass.py backup.sh settings_netplan.py settings_ifupdown.py"

# Куда резервируем?
dest="/root/backup"

# Имя архива
day=$(date +%A)
hostname=apache
archive_file="$hostname-$day.tgz"

# Вывод стартового сообщения
echo "Резервирование $backup_files в $dest/$archive_file"
date
echo

#Используем пакет TAR
tar cfz $dest/$archive_file $backup_files

# Сообщение о завершениии
echo
echo "Резервирование завершено"
date

# Общая сводка о резервировании
ls -lh $dest
