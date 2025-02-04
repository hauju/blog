FROM --platform=linux/amd64 ghcr.io/getzola/zola:v0.19.2 AS zola

COPY . /project
WORKDIR /project
RUN ["zola", "build"]

FROM --platform=linux/amd64 ghcr.io/static-web-server/static-web-server:2
WORKDIR /
COPY --from=zola /project/public /public