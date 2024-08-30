FROM hasura/graphql-engine:v2.43.0.ubuntu

ENV HASURA_GRAPHQL_DEFAULT_NAMING_CONVENTION="graphql-default"
ENV HASURA_GRAPHQL_DEV_MODE="true"
ENV HASURA_GRAPHQL_ENABLE_CONSOLE="true"
ENV HASURA_GRAPHQL_ENABLE_TELEMETRY="false"
ENV HASURA_GRAPHQL_EXPERIMENTAL_FEATURES="naming_convention"
ENV HASURA_GRAPHQL_JWT_SECRET="{\"jwk_url\": \"https://www.googleapis.com/service_accounts/v1/jwk/securetoken@system.gserviceaccount.com\",\"audience\": \"church-data-admin\",\"issuer\": \"https://securetoken.google.com/church-data-admin\",\"claims_namespace_path\": \"$\",\"claims_format\": \"json\"}"
ENV HASURA_GRAPHQL_LOG_LEVEL="info"
ENV HASURA_GRAPHQL_SERVER_HOST="0.0.0.0"
ENV HASURA_GRAPHQL_SERVER_PORT="${HASURA_GRAPHQL_SERVER_PORT:-8008}"
ENV HASURA_GRAPHQL_EVENTS_FETCH_INTERVAL="3600000"
ENV HASURA_FF_NAMING_CONVENTION_SEP_2023="True"
ENV TAILSCALE_HOSTNAME="church-admin-hasura"

EXPOSE ${HASURA_GRAPHQL_SERVER_PORT}

HEALTHCHECK NONE

RUN apt-get update
RUN apt-get install -y net-tools tcpdump

# Download tailscale
WORKDIR /tailscale.d


RUN apt-get update
RUN apt-get install -y wget
RUN apt-get install -y ca-certificates iptables
RUN update-alternatives --set iptables /usr/sbin/iptables-legacy \
    && update-alternatives --set ip6tables /usr/sbin/ip6tables-legacy

ARG TAILSCALE_VERSION=latest
RUN wget https://pkgs.tailscale.com/stable/tailscale_${TAILSCALE_VERSION}_amd64.tgz && \
    tar xzf tailscale_${TAILSCALE_VERSION}_amd64.tgz --strip-components=1

RUN mkdir -p /var/run/tailscale /var/cache/tailscale /var/lib/tailscale

CMD /tailscale.d/tailscaled --state=/var/lib/tailscale/tailscaled.state --socket=/var/run/tailscale/tailscaled.sock & \
    /tailscale.d/tailscale up --authkey=${TAILSCALE_AUTHKEY} --hostname=${TAILSCALE_HOSTNAME} --ssh --stateful-filtering \
    && graphql-engine serve
