useradd -m -d /home/user -s /bin/bash user
useradd -m -d /home/boss -s /bin/bash boss
echo "user:user" | chpasswd
echo "boss:barcel0na1832" | chpasswd
echo 'root:r00t_p4ss_12345' | chpasswd
service ssh start
service cron start
service mariadb start
mysql -u root  < /root/bd.sql
echo 'boss ALL=(root) NOPASSWD: /usr/bin/7z' | sudo tee /etc/sudoers.d/boss_7z_as_root > /dev/null
cp /root/logs.sh /var/logs.sh
sudo chown :boss /var/logs.sh
echo "r00t_p4ss_12345" > /root/password
echo "fl4g_3_7zzz" > /root/flag.txt
tail -f /dev/null

