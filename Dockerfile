FROM gradle:8.1.1-jdk17

ARG PLANTON_CLI_VERSION=v0.0.61

RUN apt update -y && \
    apt install -y build-essential && \
    wget https://storage.googleapis.com/planton-cli/$PLANTON_CLI_VERSION/planton-cli-$PLANTON_CLI_VERSION-linux && \
    chmod +x planton-cli-$PLANTON_CLI_VERSION-linux && \
    mv planton-cli-$PLANTON_CLI_VERSION-linux planton && \
    cp planton /usr/local/bin
