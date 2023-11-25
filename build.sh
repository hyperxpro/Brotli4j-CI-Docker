docker buildx build --platform linux/arm64/v8 -t hyperxpro/brotli4j-ci:centos7-jdk8 -f aarch64/centos7-jdk8/Dockerfile . --output type=docker
docker buildx build --platform linux/arm64/v8 -t hyperxpro/brotli4j-ci:centos7-jdk11 -f aarch64/centos7-jdk11/Dockerfile . --output type=docker
docker buildx build --platform linux/arm64/v8 -t hyperxpro/brotli4j-ci:centos7-jdk17 -f aarch64/centos7-jdk17/Dockerfile . --output type=docker
docker buildx build --platform linux/arm64/v8 -t hyperxpro/brotli4j-ci:centos7-jdk21 -f aarch64/centos7-jdk21/Dockerfile . --output type=docker
