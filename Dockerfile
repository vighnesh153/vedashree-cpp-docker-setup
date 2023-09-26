FROM ubuntu:latest

RUN apt-get update && apt-get install g++ -y

VOLUME [ "/app" ]

WORKDIR /app

# ENV CPP_FILE_NAME="main-pikachu.cpp"
ENV CPP_FILE_NAME="main-lucario.cpp"

CMD g++ -o output $CPP_FILE_NAME && ./output
