FROM ghcr.io/railwayapp-templates/timescale-postgis-ssl:pg16-ts2.13

ENV POSTGRES_DB="church_admin"
ENV POSTGRES_USER=${POSTGRES_USER:-"postgres"}
ENV PGDATA=${PGDATA:-"/var/lib/postgresql/data/pgdata"}

ENV TAILSCALE_HOSTNAME="local-church-admin-db"

# Install tailscale
USER root
RUN mkdir -p /var/lib/apt/lists/partial && chmod 777 /var/lib/apt/lists/partial
RUN apt update && apt install ca-certificates wget iptables iftop -y

RUN mkdir -p /tailscale.d /var/run/tailscale /var/cache/tailscale /var/lib/tailscale

ARG TAILSCALE_VERSION="latest"
RUN wget https://pkgs.tailscale.com/stable/tailscale_${TAILSCALE_VERSION}_amd64.tgz && \
    tar xzf tailscale_${TAILSCALE_VERSION}_amd64.tgz --strip-components=1 -C /tailscale.d

# Allow postgres user to run tailscale
RUN echo "postgres ALL=(root) NOPASSWD: /usr/bin/mkdir, /bin/chown, /tailscale.d/tailscaled, /tailscale.d/tailscale" > /etc/sudoers.d/postgres

COPY ./initdb.d/ /docker-entrypoint-initdb.d/

USER postgres

CMD sudo /tailscale.d/tailscaled --state=/var/lib/tailscale/tailscaled.state --socket=/var/run/tailscale/tailscaled.sock --tun=userspace-networking --socks5-server=localhost:1055 --outbound-http-proxy-listen=localhost:1055 & \
    sudo /tailscale.d/tailscale up --authkey=${TAILSCALE_AUTHKEY} --hostname=${TAILSCALE_HOSTNAME} --ssh \
    && wrapper.sh postgres --port=5432
