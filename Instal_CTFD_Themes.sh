#!/bin/bash

RED='\e[31m'
GREEN='\e[32m'
RESET='\e[0m'

logo() {
    echo -e "${RED}"
    echo " ######################################################### "
    echo " #               INSTALL TOOLS CTFD THEMES               # "
    echo " ######################################################### "
    echo " ███████ ███████ ███████ ██████  ███    ██ ███    ███ "
    echo "     ███ ██      ██      ██   ██ ████   ██ ████  ████ "
    echo "   ███   █████   █████   ██████  ██ ██  ██ ██ ████ ██ "
    echo " ███     ██      ██      ██   ██ ██  ██ ██ ██  ██  ██ "
    echo " ███████ ██      ███████ ██   ██ ██   ████ ██      ██ "
    echo -e "${RESET}"
    echo -e "${GREEN} Tools created by ZFERNM X META4SEC ${RESET}"
    echo ""
}

logo

echo "Pilih theme CTFd yang ingin diinstall:"
echo "0. Install Semua Theme"
echo "1. CTFd Theme Pixo"
echo "2. CTFd Theme Crimson"
echo "3. CTFd Theme Odin"
echo "4. CTFd Dark Theme"
echo "5. CTFd Xmas Theme"
echo "6. CTFd Neon Theme"
echo "7. CTFd Theme WreckIt5"
echo "8. CTFd Theme StormCTF"
echo "9. CTFd Theme SigSegV2"
echo "10. CTFd Theme TCP1P"

echo -n "Masukkan pilihan (0-10): "
read pilihan

themes=(
    "https://github.com/hmrserver/CTFd-theme-pixo.git"
    "https://github.com/0xdevsachin/CTFD-crimson-theme.git"
    "https://github.com/0xdevsachin/CTFD-odin-theme.git"
    "https://github.com/Milkdrop/CTFd-Dark-Theme.git"
    "https://github.com/iver-ics/CTFd-xmas-theme.git"
    "https://github.com/chainflag/ctfd-neon-theme.git"
    "https://github.com/jonscafe/ctfd-theme-wreckit5.git"
    "https://github.com/sctf2020/CTFd-Theme-StormCTF.git"
    "https://github.com/noraj/ctfd-theme-sigsegv2.git"
    "https://github.com/Leuthra/tcp1p-theme.git"
)

dirs=(
    "pixo"
    "crimson"
    "odin"
    "dark"
    "xmas"
    "neon"
    "wreckit5"
    "stormctf"
    "sigsegv2"
    "tcp1p"
)

cd ~/CTFd/CTFd/themes || exit

if [ "$pilihan" -eq 0 ]; then
    echo "Menginstall semua theme..."
    for i in "${!themes[@]}"; do
        git clone "${themes[$i]}" "${dirs[$i]}"
    done
else
    if [ "$pilihan" -ge 1 ] && [ "$pilihan" -le 10 ]; then
        index=$((pilihan - 1))
        echo "Menginstall ${dirs[$index]}..."
        git clone "${themes[$index]}" "${dirs[$index]}"
    else
        echo "Pilihan tidak valid!"
        exit 1
    fi
fi

echo "Restarting Docker services..."
sudo docker compose down
sudo docker compose up -d

echo "Selesai!"
