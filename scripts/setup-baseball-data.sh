#!/bin/bash
set -ex

echo "Downloading baseball data from https://github.com/WebucatorTraining/lahman-baseball-mysql"
curl -O https://raw.githubusercontent.com/WebucatorTraining/lahman-baseball-mysql/master/updated-lahman-mysql.sql

echo "Importing baseball data into 'baseball' database on DDEV's db container from updated-lahman-mysql.sql."
ddev import-db --src=updated-lahman-mysql.sql --target-db=lahmanbaseballdb

echo "Done!"
