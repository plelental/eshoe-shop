# eshoe-shop
eCommerce project done for academic classes

## How to run with Docker Compose
1. Run install-prestashop.bat script.
2. It will start docker containers in separate cmd window
3. Wait 60 seconds
4. Database dump will be automatically loaded
5. You are ready to use prestashop `http://localhost:8888`


## How to run
1. Clone project
2. Pull latest MySQL docker image
3. Run mysql container  
`docker run --name some-mysql -e MYSQL_ROOT_PASSWORD=admin -d mysql:latest`
1. Download AMP and install it eg. MAMP
`https://www.mamp.info/`
5. Set document root of PrestaShop in your AMP
6. Go to `http://localhost:8888` - tada! Prestoshop eshoe-shop should work!
## How to run databse backup script inside Docker container

1. Copy SQL script into container  
`docker cp dbdump.sql some-mysql:/dbdump.sql`  
2. Check if file copied sucesfull  
`docker ps`  
3. Enter to the container  
`docker exec it some-mysql /bin/bash`
4. Login to mysql  
`mysql -u root -p` and use password `admin`
5. Create new Prestashop database  
`create db prestashop;`
6. Check if database is created  
`show databases;`
7. Go to newly created database  
`use prestashop;`
8. Exec our backup sql script  
`source dbdump.sql`
9. Check if tables are created succesfully  
`show tables;`


## Dump Prestashop database to file
```
docker exec some-mysql /usr/bin/mysqldump -u root --password=admin prestashop > dbdump.sql
```

## Restore Prestashop database from file
```
docker exec -i eshoe-shop_some-mysql mysql -uroot -padmin prestashop < ./db/dbdump.sql
```