FROM ubuntu:latest AS builder
WORKDIR /app/
RUN apt update
RUN apt install -y build-essential git gnutls-dev
RUN git clone https://github.com/dotse/bbk.git
RUN cd bbk/src/cli && make GNUTLS=1
# COPY /app/bbk/src/cli/cli /app/bbk_cli

FROM ubuntu:latest
LABEL version="0.1.0"
WORKDIR /root/
COPY --from=builder /app/bbk/src/cli/cli bbk_cli
CMD [ "./bbk_cli", "--test", "--ssl"]
