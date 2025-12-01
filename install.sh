#!/bin/bash
set -e

# Обновление системы и установка зависимостей
sudo apt update && sudo apt upgrade -y

sudo apt install -y python3-pip git screen

echo Enter java version:
read JAVAVER

case "$JAVAVER" in
  8)
    echo "Installing Java 8..."
    sudo apt install -y openjdk-8-jre
    ;;
  17)
    echo "Installing Java 17..."
    sudo apt install -y openjdk-17-jre
    ;;
  21)
    echo "Installing Java 21..."
    sudo apt install -y openjdk-21-jre
    ;;
  *)
    echo "Error: unsupported Java version"
    exit 1
    ;;
esac

echo Enter name of minecraft runner file:
read RUNNER

if [ -f "$RUNNER" ]; then
    echo Running minecraft server...
    bash "$RUNNER"
else 
    echo Fail, enter another app .sh
    exit 1
fi
