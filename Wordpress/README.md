## Running Wordpress in Docker

### Running Manually: 
```
docker run -p 3306:3306 -e MYSQL_ROOT_PASSWORD='<superSecretMySQLPassword>' mariadb 
```

Connect to your new mysql container with the mysql client and run the following:

```
$ mysql -h localhost -u root -p
Enter password: <enter your root password above> 
... 
mysql> create database wordpress;
Query OK, 1 row affected (0.00 sec)

mysql> create user 'wordpress'@'%' identified by '<superSecretWordpressPassword';
Query OK, 0 rows affected (0.00 sec)

mysql> grant all on wordpress.* to 'wordpress'@'%';
Query OK, 0 rows affected (0.00 sec)

mysql> flush privileges;
Query OK, 0 rows affected (0.00 sec)
```
After that, you can go ahead and run wordpress which will connect to that MySQL instance.

```
docker run -d -e WORDPRESS_DB_HOST=<LocalIPAddress> -e WORDPRESS_DB_USER='wordpress' -e WORDPRESS_DB_PASSWORD='<superSecretWordpressPassword>' -e WORDPRESS_DB_NAME='wordpress' -p 8080:80 -v <localPath>:/var/www/html wordpress
```
