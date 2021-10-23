# backend Settings

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
