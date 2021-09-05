FROM golang:1.17-alpine as builder
WORKDIR /work

# enable gin gonic relase mode
ENV GIN_MODE=release

# add files
ADD api/ .
# compile app static
RUN go get ./...
RUN \
  CGO_ENABLED=0 \
  GOOS=linux \
  GOARCH=amd64 \
  go build -a -installsuffix cgo -ldflags="-w -s" -o go-rtmp-api .

FROM dvdgiessen/nginx-rtmp-docker

RUN apk --no-cache add ffmpeg

COPY --from=builder /work/go-rtmp-api /

# Set up config file
COPY conf/nginx.conf /etc/nginx/nginx.conf
RUN chmod 444 /etc/nginx/nginx.conf


