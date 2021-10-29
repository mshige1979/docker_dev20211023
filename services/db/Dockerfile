#vimage
FROM postgis/postgis

# 環境変数
ENV TZ Asia/Tokyo
ENV LANG C.UTF-8

# 開発用パッケージインストール
RUN apt-get upgrade -y && apt-get update -qq && \
    apt-get install -y vim && \
    apt-get install -y postgis && \
    apt-get clean && \
    rm -rf /var/cache/apt
