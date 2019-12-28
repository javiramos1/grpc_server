CGO_ENABLED=0 GOOS=linux go build -o grpc_server -ldflags "-s -w -X 'main.build=$(git rev-parse --short HEAD)' -X 'main.buildDate=$(date --rfc-3339=seconds)'" -a -installsuffix cgo server.go
docker build -t javierramos1/grpc_server .
docker push javierramos1/grpc_server