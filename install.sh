echo "********************** Performing update ************************"
apt-get update
echo " "
echo "******************* Installing XFCE4 environment *************"
apt-get install kali-defaults kali-root-login desktop-base xfce4 xfce4-places-plugin xfce4-goodies
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
apt-get install hcxdumptool
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
echo "setting up interafces file"
mv /etc/network/interfaces /etc/network/interfaces.bak
echo " "
echo "Your Current network configuration backed up as /etc/network/interfaces.bak file"
cp interfaces /etc/network/interfaces
echo " "
echo "END of Script... Thanks for using it"