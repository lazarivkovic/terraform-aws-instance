#!/bin/bash

### install apache2

sudo apt update -y
sudo apt install apache2 -y
sudo systemctl enable apache2 && sudo systemctl start apache2

### install mariadb database

sudo apt install mariadb-server mariadb-client -y

### install php

sudo apt install php -y