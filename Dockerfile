FROM dvdgiessen/nginx-rtmp-docker

RUN apk --no-cache add ffmpeg

# Set up config file
COPY conf/nginx.conf /etc/nginx/nginx.conf
RUN chmod 444 /etc/nginx/nginx.conf
