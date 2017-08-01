# apache2.4
apache2.4 docker-container based on debian stretch

This is a raw apache2.4 install derived from Debian Stretch Bootstrap
Startcommand:
  docker run -v [local_html_dir]:/var/www/html -p [local_port]:80 spacecab/apache2.4
