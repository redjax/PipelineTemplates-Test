# containers/app1/Dockerfile
FROM golang:1.22-alpine AS build

WORKDIR /src

# simple inline app
RUN printf '%s\n' \
  'package main' \
  '' \
  'import ("fmt"; "net/http")' \
  '' \
  'func handler(w http.ResponseWriter, r *http.Request) {' \
  '  fmt.Fprintln(w, "app1: hello from container")' \
  '}' \
  '' \
  'func main() {' \
  '  http.HandleFunc("/", handler)' \
  '  fmt.Println("listening on :8080")' \
  '  if err := http.ListenAndServe(":8080", nil); err != nil {' \
  '    panic(err)' \
  '  }' \
  '}' \
  > main.go

RUN go build -o /out/app1 main.go

FROM alpine:3.19

WORKDIR /app
COPY --from=build /out/app1 ./app1

EXPOSE 8080
ENTRYPOINT ["./app1"]
