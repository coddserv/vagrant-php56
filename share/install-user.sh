# install plugin
sudo yum install -y php56-php-intl.x86_64
sudo cp /opt/remi/php56/root/usr/lib64/php/modules/intl.so /usr/lib64/php/modules/

# create swap space
sudo /bin/dd if=/dev/zero of=/var/swap.1 bs=1M count=1024
sudo /sbin/mkswap /var/swap.1
sudo /sbin/swapon /var/swap.1

# add ini file
sudo tee /etc/php.d/99-custom.ini <<EOF
extension=intl.so

[Date]
; Defines the default timezone used by the date functions
; http://php.net/date.timezone
date.timezone = "Asia/Tokyo"
EOF

# setup apache
sudo systemctl restart httpd.service
sudo systemctl start httpd.service
