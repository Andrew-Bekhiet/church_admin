ARG MIX_ENV=dev

FROM elixir:1.20.4-otp-29 AS build

ARG MIX_ENV
ENV MIX_ENV=${MIX_ENV}
WORKDIR /app

# vix publishes no NIF for OTP 29, and its libvips download fails under :httpc's header limit
RUN apt-get update && \
    apt-get install -y --no-install-recommends libvips-dev && \
    rm -rf /var/lib/apt/lists/*
ENV VIX_COMPILATION_MODE=PLATFORM_PROVIDED_LIBVIPS

RUN mix local.hex --force && mix local.rebar --force

COPY mix.exs mix.lock ./
COPY config config
RUN mix deps.get --only ${MIX_ENV} && mix deps.compile

COPY lib lib
COPY dev/lib dev/lib
COPY priv priv
RUN mix compile


FROM build AS dev

ENV HTTP_BIND_IP=0.0.0.0
EXPOSE 4100

CMD ["sh", "-c", "mix church_admin.setup $ASH_SETUP_ARGS && exec mix phx.server"]


FROM build AS release

RUN mix release


FROM debian:trixie-slim AS prod

RUN apt-get update && \
    apt-get install -y --no-install-recommends libvips42t64 libstdc++6 openssl libncurses6 ca-certificates && \
    rm -rf /var/lib/apt/lists/*
ENV LANG=C.UTF-8

WORKDIR /app
RUN chown nobody /app
COPY --from=release --chown=nobody:root /app/_build/prod/rel/church_admin ./
USER nobody

EXPOSE 4100

# PHX_SERVER is set here, not in the image, so `bin/church_admin eval` in a running container starts no second endpoint
CMD ["sh", "-c", "bin/church_admin eval 'ChurchAdmin.Release.migrate()' && PHX_SERVER=true exec bin/church_admin start"]


FROM ${MIX_ENV}
