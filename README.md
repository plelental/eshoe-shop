# eshoe-shop
eCommerce project done for academic classes

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