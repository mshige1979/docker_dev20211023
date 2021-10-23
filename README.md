# docker_dev20211023

## 概要

docker を用いた開発環境もどき

- web(nginx)
- frontend(vue)
- backend(rails)
- db(postgresql)

## install

### git clone

```
git clone https://github.com/mshige1979/docker_dev20211023.git --recursive
```

### docker build

```
cd docker_dev20211023
docker-compose build --no-cache
```

### backend install

```
docker-compose run backend bundle install
docker-compose run backend yarn
```

### frontend install

```
TBD
```

### run

```
docker-compose up -d
```

---

## backend 設定

### 初回設定

#### Gemfile をコピー

```
cp -p ./services/backend/Gemfile ./projects/backend/.
cp -p ./services/backend/Gemfile.lock ./projects/backend/.
```

#### コンテナに入る

```
docker-compose exec backend bash
```

#### rails インストール

```
bundle install
bundle exec rails new . --force --no-deps --database=postgresql --skip-bundle
bundle install
bundle exec rails webpacker:install
bundle exec rails webpacker:install:vue
```

---

## 別プロジェクトの git をサブモジュール化

### サブモジュール追加

```
cd projects
git submodule add https://github.com/mshige1979/docker_dev20211023_frontend.git frontend
git submodule add https://github.com/mshige1979/docker_dev20211023_backend.git backend
```

### 親 git で変更を無視するようにする

#### .gitmodules

```
[submodule "projects/backend"]
	path = projects/backend
	url = https://github.com/mshige1979/docker_dev20211023_backend.git
	ignore = dirty
[submodule "projects/frontend"]
	path = projects/frontend
	url = https://github.com/mshige1979/docker_dev20211023_frontend.git
	ignore = dirty
```

---

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
