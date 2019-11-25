#!/bin/bash

curl -i -X PUT 172.17.0.1:9999/datas?machine=$(hostname)\&type=mysql --upload-file datas.csv

