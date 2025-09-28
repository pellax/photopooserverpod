FROM debian:bookworm-slim AS build-env

# Install required packages
RUN apt-get update && \
    apt-get install -y --no-install-recommends \
    curl \
    git \
    unzip \
    xz-utils \
    zip \
    libglu1-mesa \
    sudo \
    ca-certificates && \
    apt-get clean && \
    rm -rf /var/lib/apt/lists/* && \
    rm -rf /var/cache/apt/*

# Create a non-root user
RUN useradd -ms /bin/bash developer && \
    adduser developer sudo && \
    echo '%sudo ALL=(ALL) NOPASSWD:ALL' >> /etc/sudoers

# Switch to the non-root user
USER developer
WORKDIR /home/developer

# Clone Flutter
RUN git clone --depth 1 -b stable https://github.com/flutter/flutter.git

# Add flutter to PATH
ENV PATH="/home/developer/flutter/bin:${PATH}"

# Run flutter doctor
RUN flutter doctor

# Set up the project structure
WORKDIR /home/developer/app

# Copy the client project first
COPY --chown=developer:developer photopooserverpod_client ./photopooserverpod_client/

# Copy the Flutter web project
COPY --chown=developer:developer photopooserverpod_flutter ./photopooserverpod_flutter/

# Set working directory to Flutter project
WORKDIR /home/developer/app/photopooserverpod_flutter

# Get dependencies and build
RUN flutter pub get && \
    flutter build web --release

# Production stage
FROM nginx:alpine
COPY --from=build-env /home/developer/app/photopooserverpod_flutter/build/web /usr/share/nginx/html
COPY --from=build-env /home/developer/app/photopooserverpod_flutter/nginx.conf /etc/nginx/nginx.conf