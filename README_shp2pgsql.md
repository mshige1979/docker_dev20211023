# shp2pgsql ツールインストール

## install

### Windows

以下の URL より Postgresql をダウンロードして、インストールする
PostgreSQL をインストールしないとスタックビルダで PostGIS を追加できないため、PostgreSQL を
インストールすること

```
https://www.enterprisedb.com/downloads/postgres-postgresql-downloads
```

#### コマンドの場所

```
C:\Program Files\PostgreSQL\13\bin\shp2pgsql
```

#### GUI の場所

```
C:\Program Files\PostgreSQL\13\bin\postgisgui
```

### Linux

Dockerfile でインストール済み  
基本、postgis/postgis にパッケージはインストール済み
ただ、バージョンが多少古くてツールが入っていないため、apt でアップデートする

```
apt-get upgrade -y
apt-get update -y
apt-get install -y postgis
```

#### コマンドの場所

```
/usr/bin/shp2pgsql
```

## シェープファイル変換

### 対象ファイル URL

```
https://nlftp.mlit.go.jp/ksj/index.html
```

### 変換コマンド

```
shp2pgsql -W cp932 -D -I -s 4612 C23-06_01-g_Coastline.shp test_table1 > C23-06_01-g_Coastline.sql
```

## 参考情報

https://zenn.dev/boiledorange73/books/b1de0a18073af70946e0
