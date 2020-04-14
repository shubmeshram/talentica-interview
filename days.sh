#!/bin/bash

          read -p "Enter the from last X days to zip the logs" days
          mkdir  /tmp/myzipdata/ -p
          sudo find /var/log/ -type f -mtime +$days -exec cp {}  /tmp/myzipdata/ -rf \;
          cd /tmp/myzipdata/
          sudo zip /tmp/mylog.zip ./ -r
           ls -lh /tmp/mylog.zip