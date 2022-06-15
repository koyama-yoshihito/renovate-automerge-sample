FROM golang:1.18
ENV TZ="Asia/Tokyo"
WORKDIR /go/src/app
COPY . .
ENV AQUA_ROOT_DIR=$GOPATH
RUN curl -sSfL https://raw.githubusercontent.com/aquaproj/aqua-installer/v1.0.0/aqua-installer | sh -s -- -i /usr/local/bin/aqua
RUN aqua i
RUN go run main.go
