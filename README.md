# docker_dev20211023

docker-compose 環境（nginx(80) + vue(5000) + rails(3000) + postgresql(5432)）

## docker コマンド

#### 全て削除

```
docker-compose down --rmi all --volumes --remove-orphans
```

#### image を削除

```
docker-compose down --rmi all
```

#### volume を削除

```
docker-compose down --volumes
```
