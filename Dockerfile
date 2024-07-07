FROM rust:latest AS build

RUN rustc --version

# copy source code
COPY ./ /opt/src

# Set working directory
WORKDIR /opt/src

# update to latest debian packages
RUN apt-get update -y

# release build
RUN cargo build --release --verbose