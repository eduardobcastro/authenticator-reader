FROM debian:latest
RUN apt-get update && apt-get install -y curl oathtool gnupg2 \
&&  rm -rf /var/lib/apt/lists/*

RUN curl -s -L https://golang.org/dl/go1.16.3.linux-amd64.tar.gz | tar -C /usr/local -xvzf - \
&&  ln -s /usr/local/go/bin/go /usr/bin/go \
&&  go get github.com/dim13/otpauth

COPY docker-entrypoint /usr/bin

ENTRYPOINT ["docker-entrypoint"]
