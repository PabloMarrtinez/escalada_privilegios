useradd -m -d /home/user -s /bin/bash user
useradd -m -d /home/boss -s /bin/bash boss
echo "user:user" | chpasswd
echo "boss:3l3ct0" | chpasswd
service ssh start
service cron start
echo '#!/bin/bash' > /home/boss/script.sh
echo 'echo "La fecha actual es: $(date)" >> /tmp/mi_script_log.txt' >> /home/boss/script.sh
chmod 777 /home/boss/script.sh
(crontab -l 2>/dev/null; echo "* * * * * /home/boss/script.sh") | crontab -
echo 'export password="boss:3l3ct0"' >> /home/user/.bashrc
echo 'fl4g_1_l3ts_g0' > /root/flag.txt
