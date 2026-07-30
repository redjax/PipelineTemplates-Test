# containers/app2/Dockerfile
FROM alpine:3.24

# Build args that you pass from the workflow
ARG GIT_SHA="unknown"
ARG BUILD_DATE="unknown"

# Set some OCI-style labels using the build args
LABEL org.opencontainers.image.source="https://github.com/redjax/pipelinetemplates-test" \
      org.opencontainers.image.revision="${GIT_SHA}" \
      org.opencontainers.image.created="${BUILD_DATE}"

RUN apk add --no-cache ca-certificates

WORKDIR /app

# Simple entrypoint that prints some info and then tails
CMD ["/bin/sh", "-c", "echo app2: running with GIT_SHA=${GIT_SHA} BUILD_DATE=${BUILD_DATE}; env | sort"]