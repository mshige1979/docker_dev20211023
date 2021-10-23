# docker_dev20211023

docker-compose 環境（nginx(80) + vue(5000) + rails(3000) + postgresql(5432)）

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

## docker コマンド

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
