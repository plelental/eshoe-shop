@echo Launching mysql and prestashop containers

@start cmd /k docker-compose up

@echo Waiting 60 seconds or press any key to skip after docker finished.

@timeout /t 60

@echo Load database

@docker exec -i eshoe-shop_some-mysql_1 mysql -uroot -padmin prestashop < ./db/dbdump.sql

@echo Prestashop ready: http://localhost:8080/