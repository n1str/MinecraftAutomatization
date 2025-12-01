#!/bin/bash

sudo apt update && sudo apt upgarde -y

sudo apt install python-pip3
sudo apt install git
sudo apt install screen

echo Enter java version:
read JAVAVER

case "$JAVAVER" in
  8)
    echo "Installing Java 8..."
    sudo apt install openjdk-8-jre
    ;;
  17)
    echo "Installing Java 17..."
    sudo apt install openjdk-17-jre
    ;;
  21)
    echo "Installing Java 21..."
    sudo apt install openjdk-21-jre
    ;;
  23)
    echo "Installing Java 23..."
    sudo apt install openjdk-23-jre
    ;;
  *)
    echo "Error"
    exit 1
    ;;
esac

echo Enter name of minecraft runner file:
read RUNNER

if [ -f "$RUNNER" ]; then
    echo Running minecraft server...
    bash $RUNNER
else 
    echo Fail, enter another app .sh
    exit 1
fi
