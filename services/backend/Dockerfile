#vimage
FROM ruby:3.0.2

# 環境変数
ENV TZ Asia/Tokyo
ENV LANG C.UTF-8

# yarnのパッケージ取得
RUN curl -sS https://dl.yarnpkg.com/debian/pubkey.gpg | apt-key add - && \
    echo 'deb http://dl.yarnpkg.com/debian/ stable main' > /etc/apt/sources.list.d/yarn.list

# 開発用パッケージインストール
RUN apt-get update -qq && \
    apt-get install -y vim build-essential libpq-dev nodejs npm yarn postgresql-client && \
    apt-get clean && \
    rm -rf /var/cache/apt

# 作業ディレクトリ
WORKDIR /backend

# コピー
COPY ./services/backend/Gemfile /backend/Gemfile
COPY ./services/backend/Gemfile.lock /backend/Gemfile.lock
COPY ./services/backend/docker-entrypoint.sh /docker-entrypoint.sh

# バンドルインストール
RUN bundle install --path vendor/bundle

# パラメータ未指定時の起動コマンド
CMD ["/bin/bash", "/docker-entrypoint.sh"]
