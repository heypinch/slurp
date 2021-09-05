https://github.com/arut/nginx-rtmp-module/wiki/Control-module

https://nginx-rtmp.blogspot.com/2013/06/secure-links-in-nginx-rtmp.html

https://github.com/arut/nginx-rtmp-module/wiki/Building-a-docker-image-with-nginx---rtmp-module

https://github.com/arut/nginx-rtmp-module/wiki/Directives#exec_record_done we can use this to upload and cleanup the recording

http://supervisord.org/introduction.html

# Usage
## stream in 
ffmpeg -i 39v5lpj1xq.mp4  -f flv rtmp://127.0.0.1:1935/zoom/codesoda

## Capture audio stream
ffmpeg -i rtmp://localhost/live/codesoda_audio -c copy audio_only.flv
