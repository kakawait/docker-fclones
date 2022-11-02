FROM rust:1 AS builder
RUN cargo install fclones

FROM debian:stable-slim
COPY --from=builder /usr/local/cargo/bin/fclones /usr/bin
ENTRYPOINT ["/usr/bin/fclones"] 
