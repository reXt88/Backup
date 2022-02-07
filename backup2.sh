#!/bin/bash
#################################
#
# Backup to sdb1
#
################################

# Что будем резервировать
echo "Путь к файлам для резервирования "
read backup_files

# Куда резервируем?
echo "Куда будем резервировать"
read dest

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
