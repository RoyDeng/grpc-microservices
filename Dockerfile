FROM golang

WORKDIR /app

COPY /authentication/authsvc /app/authsvc
COPY /api/apisvc /app/apisvc

EXPOSE 9000
EXPOSE 9001

CMD ["/app/authsvc", "/app/apisvc"]