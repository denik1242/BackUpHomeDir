#!/bin/bash
#
# Цель задания
# Попрактиковаться в использовании программ для архивации файлов, вспомнить основы работы с планировщиком cron, использовать знания полученные в модуле.
# 
# Что нужно сделать
# Создайте скрипт бэкапа всех файлов и папок в /home/username:
# 
# 1. Заархивируйте все файлы в вашей домашней директории.
# 2. В названии архива должна быть дата создания архива.
# 3. Получившийся архив нужно сохранить в папку /home/devops.

# Скрипт должен запускаться при помощи планировщика cron: 
# каждую пятницу в 22:30.
# 30 22 * * 5 30 22 * * 5 $HOME/Desktop/Bash_Scripts/8.7_Practical_work/8.7.3_BackUp-Home-User.sh

HOME_DIR="$HOME"
DATE=$(date +%d-%m-%y)
NameArhive="BackUp_home_dir_$DATE.tar.gz"

# Выводим информацию
echo "Home place: $HOME_DIR"
echo "Current date: $DATE"
echo "NameArhive: $NameArhive"

# Создаем архив
sudo tar -czvf "$HOME_DIR/$NameArhive" -C "$HOME_DIR" .

# Выводим сообщение о завершении
echo "Архив создан: $HOME_DIR/$NameArhive"
ls -aC $HOME_DIR

