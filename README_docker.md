# docker コマンドメモ

## docker コマンド

### ビルド

```
docker-compose build --no-cache
```

#### 起動

```
docker-compose up -d
```

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
