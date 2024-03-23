pacman -S --needed git base-devel ; git clone https://aur.archlinux.org/yay.git ; cd yay ; makepkg -si # modified from https://github.com/Jguer/yay
echo -e "blacklist pcspkr\nblacklist snd_pcsp" > sudo /etc/modprobe.d/nobeep.conf
yay -S envycontrol pamac-all ibus-pinyin ntfs-3g touchegg timeshift extension-manager microsoft-edge-stable-bin noto-fonts noto-fonts-cjk noto-fonts-emoji noto-fonts-extra dccutil xournalpp ncdu yt-dlp dropbox megasync okular cpupower cpupower-gui btop fzf ncdu vim --noconfirm
sudo systemctl enable --now cronie
sudo systemctl enable --now bluetooth
sudo systemctl enable --now touchegg
sudo timeshift-gtk &
sudo envycontrol -s hybrid --rtd3 3

echo -e "\n\nYou should now reboot and, if everything went along the rails, have the first automatic backup ten minutes after login in. The system WILL REBOOT in 60 seconds. Remember to setup timeshift with daily, hourly and every boot for backups."
sleep 60
reboot
