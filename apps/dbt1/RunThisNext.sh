#!/bin/bash
cd $HOME
cd dbt1-pgsql
export CFLAGS=-I/usr/local/pgsql/include
export LDFLAGS=-L/usr/local/pgsql/lib
export PATH=/usr/local/pgsql/bin:$PATH
export LD_LIBRARY_PATH=/usr/local/pgsql/lib
. scripts/pgsql/set_run_env.sh
cd data_collect/pgsql
sudo ./dbt1_master.pl -f run.config

#The respond time data are in ~/finaloutput/BT.
