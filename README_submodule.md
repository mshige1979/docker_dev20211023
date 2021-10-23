# Git(submodules)

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

### リモートより最新を取得

```
git submodule update --remote
```
