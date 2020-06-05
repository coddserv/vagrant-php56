## setup

```
# hostpc
vagrant up
vagrant ssh
```

```
# vagrant@localhost
sudo bash share/install-root.sh; bash share/install-user.sh
```

## example

```
# vagrant@localhost
cd ~/share
composer self-update
composer create-project --prefer-dist cakephp/app:^3.8 myapp --no-interaction
cd myapp
composer install --no-interaction
cp config/app.default.php config/app.php
chmod +x bin/cake
```

```
$ bin/cake server -H 0.0.0.0

Welcome to CakePHP v3.8.12 Console
---------------------------------------------------------------
App : src
Path: /home/vagrant/share/myapp/src/
DocumentRoot: /home/vagrant/share/myapp/webroot
Ini Path:
---------------------------------------------------------------
built-in server is running in http://0.0.0.0:8765/
You can exit with `CTRL-C`
```

http://192.168.33.10:8765/

