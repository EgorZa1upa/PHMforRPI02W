echo "**********************Performing update************************"
apt-get update
echo "**********************Installing xfce4 GUI**********************"
apt-get install kali-defaults kali-root-login desktop-base xfce4 xfce4-places-plugin xfce4-goodies
apt-get install lightdm
dpkg-reconfigure lightdm
echo "****************Enabling autologin***************"

mv /etc/lightdm/lightdm.conf  /etc/lightdm/lightdm.conf.bak
mv /etc/pam.d/lightdm-autologin  /etc/pam.d/lightdm-autologin.bak
cp lightdm.conf /etc/lightdm/lightdm.conf
cp lightdm-autologin /etc/pam.d/lightdm-autologin
