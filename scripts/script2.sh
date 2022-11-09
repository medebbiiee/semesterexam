cd  /etc/apache2/sites-available

touch examproject.conf

cat /home/ubuntu/examproject.conf >  examproject.conf

a2enmod rewrite

a2dissite 000-default.conf

a2ensite  examproject.conf

systemctl restart apache2
