#!/bin/bash
set -e

sudo apt install -y alien
SQLDeveloper(){
    wget https://objectstorage.ap-seoul-1.oraclecloud.com/n/cn9yc2hk0gzg/b/Oracle-Database-Development/o/sqldeveloper-20.4.0.379.2205-20.4.0-379.2205.noarch.rpm
    sudo alien -i --scripts sqldeveloper-*.rpm 
    rm sqldeveloper-*.rpm

    ## Creating a desktop entry
    echo "[Desktop Entry]
    Type=Application
    Name=Oracle SQL Developer
    Exec=sqldeveloper
    Icon=/opt/sqldeveloper/icon.png
    Terminal=false" >> ~/.local/share/applications/sqldeveloper.desktop
}
$@