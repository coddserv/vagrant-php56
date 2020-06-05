set -aux

yum install -y nano
yum install -y tree
yum install unzip -y
yum install -y tmux

yum install -y epel-release
rpm -Uvh http://rpms.famillecollet.com/enterprise/remi-release-7.rpm
yum install -y --enablerepo=remi,remi-php56 php php-devel php-mbstring php-pdo php-gd php-xml php-mcrypt
yum install -y --enablerepo=remi,remi-php56 php-mysqlnd

curl -s https://getcomposer.org/installer | php
mv composer.phar /usr/local/bin/composer

echo -e "<?php\nphpinfo();" | tee /var/www/html/pinfo.php

systemctl restart httpd.service
systemctl enable httpd.service

timedatectl set-timezone Asia/Tokyo
date

rpm -Uvh http://dev.mysql.com/get/mysql-community-release-el7-5.noarch.rpm
yum -y install mysql-community-client
