
FROM iron/go
WORKDIR /app

ADD grpc_server /app/

CMD [ "./grpc_server" ]

