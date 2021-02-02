#!/bin/bash
set -e
Basic() {
  ## https://oracle.github.io/node-oracledb/INSTALL.html#3214-install-the-free-oracle-instant-client-basic-zip-file
  sudo apt-get install -y libaio1
  sudo mkdir -p /opt/oracle
  cd /opt/oracle
  wget https://download.oracle.com/otn_software/linux/instantclient/instantclient-basic-linuxx64.zip
  unzip instantclient-basic-linuxx64.zip
  rm instantclient-basic-linuxx64.zip
  cd -
}

SQLPlus() {
  ## TODO https://download.oracle.com/otn_software/linux/instantclient/instantclient-sqlplus-linuxx64.zip
  :
}


"$@"
