#this shell is used to install xface desktop for ubuntu 14.04-desktop
#if you can't use tab to autocomplete, just reboot your server


apt-get -y install xrdp vnc4server xubuntu-desktop
echo "xfce4-session" > /root/.xsession
service xrdp restart
sed -i 's/<property name="&lt;Super&gt;Tab" type="string" value="switch_window_key"\/>/<property name="&lt;Super&gt;Tab" type="empty"\/>/g' /etc/xdg/xdg-xubuntu/xfce4/xfconf/xfce-perchannel-xml/xfce4-keyboard-shortcuts.xml
sed -i 's/<property name="&lt;Super&gt;Tab" type="string" value="switch_window_key"\/>/<property name="&lt;Super&gt;Tab" type="empty"\/>/g' /etc/xdg/xfce4/xfconf/xfce-perchannel-xml/xfce4-keyboard-shortcuts.xml
#reboot -h now

