FROM rust:1.60

WORKDIR /greet

COPY Cargo.toml Cargo.toml
COPY ./src ./src

RUN cargo build --release

RUN cargo install --path .

CMD ["greet"]