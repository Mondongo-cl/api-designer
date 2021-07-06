# build stage
FROM alpine:latest
LABEL Name=raml-designer Version=0.1
RUN apk add --no-cache git gcc libc-dev npm
RUN apk --no-cache add ca-certificates
WORKDIR /app
RUN git clone https://github.com/Mondongo-cl/api-designer.git api-designer
WORKDIR /app/api-designer
# RUN npm build
RUN npm install -g request
RUN npm install -g api-designer
ENTRYPOINT api-designer
# ENTRYPOINT sh
EXPOSE 3000
