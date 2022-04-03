FROM rust:1 as builder
WORKDIR /src
COPY . .
RUN cargo build --release

# Switching to alpine to get rid of rust dependencies.
# Thus helps decrease image size.
FROM debian:stable-slim as runner
COPY --from=builder /src/target/release/run-api /bin

CMD /bin/run-api