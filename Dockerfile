FROM golang:1.22.3-bookworm

# SQLite3をインストール
RUN apt-get update && apt-get install -y sqlite3

WORKDIR /app
RUN mkdir -p /go/pkg/mod/cache

# Go モジュールのキャッシュディレクトリをマウントするため、環境変数を設定
ENV GOCACHE=/go/pkg/mod/cache

RUN go install github.com/volatiletech/sqlboiler/v4@latest github.com/volatiletech/sqlboiler/v4/drivers/sqlboiler-sqlite3@latest
