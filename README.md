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
sudo mysql -h 127.0.0.1 -P 3307 -u root -pexample_password
```

### Adminer page
Go to http://localhost:9091
```
Server: intro_db_index
Username: root
Passoword: example_password
```
