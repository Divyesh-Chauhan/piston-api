# Use docker-compose via docker CLI
FROM docker:20.10.16-dind

WORKDIR /app
COPY . .

# Install docker-compose
RUN apk add --no-cache py3-pip && pip3 install docker-compose

CMD ["docker-compose", "up"]
