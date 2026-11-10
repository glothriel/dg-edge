FROM golang:1.26-alpine AS build
WORKDIR /src
COPY go.mod main.go ./
RUN CGO_ENABLED=0 go build -trimpath -ldflags="-s -w" -o /app .

FROM scratch
COPY --from=build /app /app
USER 65532:65532
ENTRYPOINT ["/app"]
