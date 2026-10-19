[
  import_deps: [
    :ash_oban,
    :oban,
    :ash_graphql,
    :absinthe,
    :ash_postgres,
    :ash,
    :reactor,
    :ecto,
    :ecto_sql,
    :phoenix
  ],
  subdirectories: ["priv/*/migrations"],
  inputs: [
    "*.{ex,exs}",
    "{config,lib,test}/**/*.{ex,exs}",
    "dev/lib/**/*.{ex,exs}",
    "priv/*/seeds.exs"
  ],
  plugins: [Absinthe.Formatter, Spark.Formatter]
]
