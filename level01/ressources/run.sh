docker build -t john-image .
docker run -v $(pwd):/data john-image hash.txt