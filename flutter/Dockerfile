## Base image for Flutter, prepared for web.

FROM ubuntu:22.04
ARG DEBIAN_FRONTEND=noninteractive

RUN apt-get update && \
    apt-get install -y \
        curl \
        git \
        wget \
        unzip \
        libgconf-2-4 \
        gdb \
        libstdc++6 \
        libglu1-mesa \
        fonts-droid-fallback \
        lib32stdc++6 \
        python3 \
    && \
    apt-get clean
RUN git clone --depth 1 --branch stable https://github.com/flutter/flutter.git /usr/local/flutter
ENV PATH="/usr/local/flutter/bin:/usr/local/flutter/bin/cache/dart-sdk/bin:${PATH}"
RUN flutter precache --web
