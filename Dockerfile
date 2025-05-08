FROM rust:1.85

RUN apt-get update && \
  apt-get upgrade -y && \
  rustup target add x86_64-unknown-linux-gnu

RUN apt-get install -y git clang gcc cmake build-essential

RUN git clone https://github.com/CyanProjects/done done

RUN cd done && \
  cargo build --release --verbose
