# Install Docker
## Mac
```
https://docs.docker.com/desktop/install/mac-install/
```

## Linux
```
https://docs.docker.com/engine/install/ubuntu/
```

## Window WSL
```
https://docs.docker.com/desktop/windows/wsl/
```


# Start up docker
```
docker-compose up
```


# Connect to DB
### Command line terminal
```
sudo apt install mysql-client
```

master db
```
sudo mysql -h 127.0.0.1 -P 3306 -u root -proot
```

slave db
```
sudo mysql -h 127.0.0.1 -P 3307 -u root -proot
```

### Adminer page master db
Go to http://localhost:9091
```
Server: intro_db_master
Username: root
Passoword: root
```

### Adminer page slave db
Go to http://localhost:9091
```
Server: intro_db_slave
Username: root
Passoword: root
```


### Clean up
```
docker ps -a | grep "intro_db" | cut -d' ' -f1 | xargs docker stop
docker ps -a | grep "intro_db" | cut -d' ' -f1 | xargs docker rm
docker volume prune
```
