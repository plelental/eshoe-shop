 @echo Launching mysql and prestashop containers

@start cmd /k docker-compose up

@echo Waiting 30 seconds or press any key to skip after docker finished.

@timeout /t 30

@echo Load database

@docker exec -i eshoe-shop_some-mysql_1 mysql -uroot -padmin prestashop < ./db/dbdump.sql

@echo Copying certificates

@docker exec -i eshoe-shop_some-prestashop_1 a2enmod rewrite
@docker exec -i eshoe-shop_some-prestashop_1 a2enmod rewrite ssl

@docker cp ./certs/eshoe-shop-ca.cert eshoe-shop_some-prestashop_1:/etc/ssl/certs/ssl-cert-snakeoil.pem
@docker cp ./certs/eshoe-shop-ca.key eshoe-shop_some-prestashop_1:/etc/ssl/private/ssl-cert-snakeoil.key

@docker exec -i eshoe-shop_some-prestashop_1 a2ensite default-ssl

@docker exec -i eshoe-shop_some-prestashop_1 service apache2 reload

@echo Prestashop ready: https://localhost/
@echo Admin panel: https://localhost/admin123