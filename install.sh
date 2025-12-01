#!/bin/bash

#sudo apt update && sudo apt upgarde -y

#sudo apt install python-pip3
#sudo apt install git
#sudo apt install screen

echo Enter java version:
read JAVAVER

case "$JAVAVER" in
  17)
    echo "Installing Java 17..."
    ;;
  21)
    echo "Installing Java 21..."
    ;;
  23)
    echo "Installing Java 23..."
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
else 
    echo Fail, enter another app .sh
    exit 1
fi
