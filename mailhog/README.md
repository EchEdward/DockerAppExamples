    docker build -t mailhog .
    docker run -d  --name=mailhog  -p 11025:1025 -p 12025:8025 mailhog