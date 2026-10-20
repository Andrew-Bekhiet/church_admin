FROM elixir:1.20.4-otp-29

ENV MIX_ENV=dev
WORKDIR /app

RUN mix local.hex --force && mix local.rebar --force

COPY mix.exs mix.lock ./
COPY config config
RUN mix deps.get && mix deps.compile

COPY lib lib
COPY dev/lib dev/lib
COPY priv priv
RUN mix compile

ENV HTTP_BIND_IP=0.0.0.0
EXPOSE 4100

CMD ["sh", "-c", "mix church_admin.setup $ASH_SETUP_ARGS && exec mix phx.server"]
