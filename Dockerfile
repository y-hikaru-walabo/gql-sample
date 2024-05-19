FROM golang:1.22.3-bookworm
WORKDIR /app
RUN mkdir -p /go/pkg/mod/cache

# Go モジュールのキャッシュディレクトリをマウントするため、環境変数を設定
ENV GOCACHE=/go/pkg/mod/cache
