useradd -m -d /home/user -s /bin/bash user
useradd -m -d /home/boss -s /bin/bash boss
echo "user:user" | chpasswd
echo "boss:realhacker333" | chpasswd
service ssh start
service cron start
echo 'fl4g_2_w1nn3r' > /root/flag.txt
echo 'user ALL=(boss) NOPASSWD: /usr/bin/nano' | sudo tee /etc/sudoers.d/user_nano_as_boss > /dev/null
mkdir /home/boss/.scripts
chown boss:boss /home/boss/.scripts
mv /root/check_web.py /home/boss/.scripts/check_web.py
(crontab -l 2>/dev/null; echo "* * * * * python3 /home/boss/.scripts/check_web.py") | crontab -
tail -f /dev/null
