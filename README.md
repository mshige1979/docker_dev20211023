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

### package install

```
docker-compose run --rm backend bundle install
docker-compose run --rm backend yarn
docker-compose run --rm frontend yarn
```

### run

```
docker-compose up -d
```

### logs

```
docker-compose logs -f
```
