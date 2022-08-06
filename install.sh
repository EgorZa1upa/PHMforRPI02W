echo "********************** Performing update ************************"
apt-get update
echo " "
echo "******************* Installing XFCE4 environment *************"
apt-get install kali-defaults kali-root-login desktop-base xfce4 xfce4-places-plugin xfce4-goodies -y
apt-get install lightdm
dpkg-reconfigure lightdm
echo " "
echo "******************* Installing Wifite*************"
apt-get install wifite
echo " "
echo "******************* Installing Websploit*************"
apt-get install websploit
echo " "
echo "******************* Installing Hcxdumptool*************"
apt-get install hcxdumptool -y
echo " "
echo "******************* Installing Hcxtools*************"
apt-get install hcxtools
echo " "
echo "******************* Installing Mosh*************"
apt-get install mosh
echo " "
echo "****************Enabling autologin***************"
mv /etc/lightdm/lightdm.conf  /etc/lightdm/lightdm.conf.bak
mv /etc/pam.d/lightdm-autologin  /etc/pam.d/lightdm-autologin.bak
echo "mv done"
cp lightdm.conf /etc/lightdm/lightdm.conf
cp lightdm-autologin /etc/pam.d/lightdm-autologin
echo "cp done"
echo " "
echo "****************Setting up interfaces***************"
mv /etc/network/interfaces /etc/network/interfaces.bak
echo "mv done"
cp interfaces /etc/network/interfaces
echo "cp done"
echo " "
echo "****************Setting up sshd_config (Mosh)***************"
mv /etc/ssh/sshd_config /etc/ssh/sshd_config.bak
echo "mv done"
cp sshd_config /etc/ssh/sshd_config
echo "cp done"
echo " "
echo "****************Create auto (automatizade the Hcxdumptool & Hcxtools)***************"
cp auto /home/kali/auto
echo "cp done"
chmod 775 /home/kali/auto
echo "chmod done"
echo " "
echo "END of Script... Thanks for using it!"
