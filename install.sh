##########################################
##########################################
### https://github.com/keralahacker/termux3.0      ###
###                                                                                      ###
###                  https://keralahacker.github.io               ###
###                                                                                      ###
##########################################
##########################################
clear
pkg install figlet -y
clear
echo ""
echo ""
echo ""
figlet 1
sleep 3
clear
figlet 2
sleep 2
clear
figlet 3
sleep 1
clear
mkdir $HOME/.termux/ ;echo "extra-keys = [['ESC','/','-','HOME','UP','END','PGUP'],['TAB','CTRL','ALT','LEFT','DOWN','RIGHT','PGDN']]" >> $HOME/.termux/termux.properties && termux-reload-settings && sleep 1
clear 
##...................... Read well & do copy cat
##............. this tool helps you to custom termux welcome page + prompt header in zsh
pkg update -y
pkg upgrade -y
pkg install git -y
pkg install root-repo -y
pkg install unstable-repo -y
pkg install x11-repo -y
pkg install pv -y
pkg install neofetch  -y
pkg install toilet -y
pkg install zsh -y
pkg install nano -y
cd
rm -rf  .bashrc
rm -rf  .zshrc
rm -rf  /data/data/com.termux/files/usr/etc/motd
echo "   " >> /data/data/com.termux/files/usr/etc/motd
## echoing .bashrc file

echo "  zsh
                figlet see you | pv -qL 100
                echo "......................................!" | pv -qL 100
                echo "hack_with_vyshu" | pv -qL 15
                exit
                echo "hack_with_vyshu" | pv -qL 500  " >> .bashrc
## echoing .zshrc file
echo "
sleep 3
neofetch | pv -qL 500
sleep 4
clear
toilet -f smblock --filter border:metal 'Termux 3.0v'
PROMPT=$'%F{%(#.blue.green)}👽[root]-[%B%F{reset}%b%F{%(#.blue.green)}㉿]\n└─%B%(#.%F{red}#.%F{blue}$)%b%F{reset} '
    RPROMPT=$'%(?.. %? %F{red}%B⨯%b%F{reset})%(1j. %j %F{yellow}%B⚙%b%F{reset}.)'  " >> .zshrc
sleep 2
rm -rf termux3.0
exit
