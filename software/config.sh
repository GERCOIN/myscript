# Config Ibus
im-config -n ibus
ibus restart

# Config SSH
sudo ex -s -c '3i|Port 61593' -c x /etc/ssh/sshd_config
sudo ex -s -c '4i|PermitRootLogin no' -c x /etc/ssh/sshd_config
service sshd restart

# change root
echo -e "abc@123\nabc@123" | sudo passwd root
