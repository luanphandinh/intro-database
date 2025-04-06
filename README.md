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
docker compose up
```


# Connect to DB
### Command line terminal
```
sudo apt install mysql-client
```

without index
```
sudo mysql -h 127.0.0.1 -P 3308 -u root -proot
```

with index
```
sudo mysql -h 127.0.0.1 -P 3309 -u root -proot
```

### Adminer page without index
Go to http://localhost:9091
```
Server: intro_db_10m
Username: root
Passoword: root
```

### Adminer page with index
Go to http://localhost:9091
```
Server: intro_db_index_10m
Username: root
Passoword: root
```


### Clean up
```
docker compose down
docker volume prune
```
