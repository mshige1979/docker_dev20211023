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

## frontend 設定

### 初回設定

```
cd projects/frontend
npm init -y
```

### vue cli インストール

```
npm install -g @vue/cli
```

### 直下で project を作成する

```
vue create . --no-git
```

↓

```
Vue CLI v4.5.14
? Generate project in current directory? (Y/n) Y
```

↓

```
Vue CLI v4.5.14
? Please pick a preset:
  Default ([Vue 2] babel, eslint)
  Default (Vue 3) ([Vue 3] babel, eslint)
❯ Manually select features

```

↓

```
? Check the features needed for your project:
 ◉ Choose Vue version
 ◉ Babel
 ◉ TypeScript
 ◯ Progressive Web App (PWA) Support
 ◉ Router
❯◉ Vuex
 ◉ CSS Pre-processors
 ◉ Linter / Formatter
 ◉ Unit Testing
 ◯ E2E Testing
```

↓

```
? Choose a version of Vue.js that you want to start the project with
  2.x
❯ 3.x

```

↓

```
? Use class-style component syntax? (y/N) Y
```

↓

```
? Use Babel alongside TypeScript (required for modern mode, auto-detected polyfills, transpiling JSX)? (Y/n) Y
```

↓

```
 Use history mode for router? (Requires proper server setup for index fallback in production) (Y/n) Y
```

↓

```
? Pick a CSS pre-processor (PostCSS, Autoprefixer and CSS Modules are supported by default): (Use arrow keys)
❯ Sass/SCSS (with dart-sass)
  Sass/SCSS (with node-sass)
  Less
  Stylus
```

↓

```
? Pick a linter / formatter config:
  ESLint with error prevention only
  ESLint + Airbnb config
  ESLint + Standard config
❯ ESLint + Prettier
  TSLint (deprecated)
```

↓

```
? Pick additional lint features: (Press <space> to select, <a> to toggle all, <i> to invert selection)
❯◉ Lint on save
 ◯ Lint and fix on commit
```

↓

```
? Pick a unit testing solution:
  Mocha + Chai
❯ Jest
```

↓

```
? Where do you prefer placing config for Babel, ESLint, etc.? (Use arrow keys)
❯ In dedicated config files
  In package.json
```

↓

```
? Save this as a preset for future projects? (y/N) Ns
```

#### vue.config.js

```
module.exports = {
  devServer: {
    port: 5000,
    disableHostCheck: true,
  },
};
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
