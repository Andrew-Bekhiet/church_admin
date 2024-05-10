FROM hasura/graphql-engine:v2.39.1.ubuntu

ENV HASURA_GRAPHQL_DEFAULT_NAMING_CONVENTION="graphql-default"
ENV HASURA_GRAPHQL_ENABLE_TELEMETRY="false"
ENV HASURA_GRAPHQL_EXPERIMENTAL_FEATURES="naming_convention"
ENV HASURA_GRAPHQL_LOG_LEVEL="info"
ENV HASURA_GRAPHQL_SERVER_HOST="0.0.0.0"
ENV HASURA_GRAPHQL_SERVER_PORT="${HASURA_GRAPHQL_SERVER_PORT:-8008}"
ENV HASURA_GRAPHQL_EVENTS_FETCH_INTERVAL="3600000"
ENV HASURA_FF_NAMING_CONVENTION_SEP_2023="True"

ENV TAILSCALE_HOSTNAME=${TAILSCALE_HOSTNAME:-"church-admin-hasura"}

EXPOSE ${HASURA_GRAPHQL_SERVER_PORT}

RUN apt-get update
RUN apt-get install -y net-tools tcpdump

# Download tailscale
RUN apt-get update && apt-get install -y wget ca-certificates iptables
RUN update-alternatives --set iptables /usr/sbin/iptables-legacy \
    && update-alternatives --set ip6tables /usr/sbin/ip6tables-legacy

RUN mkdir -p /tailscale.d /var/run/tailscale /var/cache/tailscale /var/lib/tailscale

ARG TAILSCALE_VERSION=latest
RUN wget https://pkgs.tailscale.com/stable/tailscale_${TAILSCALE_VERSION}_amd64.tgz && \
    tar xzf tailscale_${TAILSCALE_VERSION}_amd64.tgz --strip-components=1 -C /tailscale.d

CMD /tailscale.d/tailscaled --state=/var/lib/tailscale/tailscaled.state --socket=/var/run/tailscale/tailscaled.sock --tun=userspace-networking --socks5-server=localhost:1055 --outbound-http-proxy-listen=localhost:1055 & \
    /tailscale.d/tailscale up --authkey=${TAILSCALE_AUTHKEY} --hostname=${TAILSCALE_HOSTNAME} --ssh \
    && graphql-engine serve
