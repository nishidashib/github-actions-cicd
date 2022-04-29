FROM golang:1.17.1-buster AS builder
ARG VERSION=dev
WORKDIR /go/src/app
COPY main.go .

# go build [コンパイル後のファイル名] [コンパイルしたいファイル名]　→ ./[コンパイル後のファイル名]
# go run [実行したいgoファイル] はコンパイル＋実行までを一つのコマンドでできる。
# ちなみに oなしだとエラー go build main main.go → can't load package: named files must be .go files: main
RUN go build -o main main.go

# なんで二つのイメージ? 軽くしてんだっけ？　このdebian:buster-slimはもうバイナリmainだけですもんね。
FROM debian:buster-slim
COPY --from=builder /go/src/app/main /go/bin/main
ENV PATH="/go/gin/:${PATH}"
CMD ["main"]