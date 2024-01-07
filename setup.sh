#!/bin/bash

cat src/bnr.txt

if [[ "$PATH" == *com.termux* ]]; then
    echo -e "\n\033[1;32mInstalling Tool in your termux.\033[0m\n"
    apt update -y
    apt upgrade -y
    apt install python3 python-pip
    pip install lolcat
    
elif [[ -e /proc/version ]]; then

    echo -e "\n\033[1;32mInstalling Tool in your Linux OS\033[0m\n"
    apt-get update -y
    apt-get upgrade -y
    apt-get install python3 -y
    apt-get install python3-pip -y
    pip install lolcat
    
else
    echo -e "\n\033[1;31mUnsupported OS.\033[0m\n"
fi
