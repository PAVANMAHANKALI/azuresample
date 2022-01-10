@echo off
@echo Executing my TSQL scripts

mysql -h 192.168.10.56:3306 -u Pavan -p Pavan@#123 Maintenance_Scheduler < ./Dump20220104.sql 