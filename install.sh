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
cp lightdm.conf /etc/lightdm/lightdm.conf
cp lightdm-autologin /etc/pam.d/lightdm-autologin
echo " "
echo "****************Setting up interfaces***************"
mv /etc/network/interfaces /etc/network/interfaces.bak
cp interfaces /etc/network/interfaces
echo " "
echo "****************Setting up wpa_supplicant***************"
mv /etc/wpa_supplicant/wpa_supplicant.conf /etc/wpa_supplicant/wpa_supplicant.conf.bak
cp wpa_supplicant.conf /etc/wpa_supplicant/wpa_supplicant.conf
echo " "
echo "****************Setting up sshd_config (Mosh)***************"
mv /etc/ssh/sshd_config etc/ssh/sshd_config.bak
cp sshd_config /etc/ssh/sshd_config
echo " "
echo "****************Create auto (automatizade the Hcxdumptool & Hcxtools)***************"
cp auto /home/kali/auto
echo " "
echo "END of Script... Thanks for using it"