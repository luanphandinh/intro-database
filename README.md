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

# Session 1
## Start up docker
```
docker compose up
```

## Connect to DB
### Option 1: Command line terminal
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

### Option 2: Adminer page
#### without index
Go to http://localhost:9091
```
Server: intro_db
Username: root
Passoword: root
```

#### with index
Go to http://localhost:9091
```
Server: intro_db_index
Username: root
Passoword: root
```

### Clean up
```
docker compose down
docker volume prune
```


# Session 2
# Start up docker 10m records
```
docker compose -f ./docker-compose-10m.yml up
```

## Connect to DB
### Option 1: Command line terminal
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
### Option 2: Adminer page 
#### 10m records without index
Go to http://localhost:9091
```
Server: intro_db_10m
Username: root
Passoword: root
```

#### 10m records with index
Go to http://localhost:9091
```
Server: intro_db_index_10m
Username: root
Passoword: root
```

### Clean up
```
docker compose -f ./docker-compose-10m.yml down
docker volume prune
```
