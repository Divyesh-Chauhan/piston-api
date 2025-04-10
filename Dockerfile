FROM docker:20.10.16-dind

# Install required dependencies
RUN apk add --no-cache py3-pip python3 make libffi-dev openssl-dev gcc musl-dev python3-dev

# Install docker-compose properly
RUN pip3 install docker-compose

WORKDIR /app
COPY . .

CMD ["docker-compose", "up"]
