defmodule ChurchAdmin.MixProject do
  use Mix.Project

  def project do
    [
      app: :church_admin,
      version: "0.1.0",
      elixir: "~> 1.17",
      elixirc_paths: elixirc_paths(Mix.env()),
      start_permanent: Mix.env() == :prod,
      aliases: aliases(),
      deps: deps(),
      listeners: [Phoenix.CodeReloader],
      consolidate_protocols: Mix.env() != :dev,
      usage_rules: usage_rules()
    ]
  end

  # Configuration for the OTP application.
  #
  # Type `mix help compile.app` for more information.
  def application do
    [
      mod: {ChurchAdmin.Application, []},
      extra_applications: [:logger, :runtime_tools]
    ]
  end

  def cli do
    [
      preferred_envs: [precommit: :test]
    ]
  end

  defp usage_rules do
    [
      file: "AGENTS.md",
      usage_rules: [
        {:usage_rules, sub_rules: ["elixir", "otp"]},
        {:ash, sub_rules: []},
        {~r/^ash_/, sub_rules: []},
        :igniter,
        "phoenix:phoenix",
        "phoenix:ecto"
      ],
      skills: [
        location: ".claude/skills",
        package_skills: [:ash, ~r/^ash_/, :reactor, :spark, :igniter, :phoenix, :oban],
        build: [
          "ash-framework": [
            description:
              "Use this skill when working with Ash Framework or any of its extensions (AshPostgres, AshGraphql, AshOban). Always consult it before changing resources, domains, actions, policies or migrations.",
            usage_rules: [:ash, ~r/^ash_/, :reactor, :spark]
          ],
          "phoenix-framework": [
            description:
              "Use this skill when working on the Phoenix web layer: endpoint, router, controllers, plugs, channels and Ecto usage.",
            usage_rules: [:phoenix, ~r/^phoenix_/]
          ],
          "igniter-generators": [
            description:
              "Use this skill when generating or modifying project code with Igniter tasks (mix igniter.install, mix ash.gen.*, installers and codemods).",
            usage_rules: [:igniter]
          ]
        ]
      ]
    ]
  end

  # Specifies which paths to compile per environment.
  defp elixirc_paths(:test), do: ["lib", "dev/lib", "test/support"]
  defp elixirc_paths(:dev), do: ["lib", "dev/lib"]
  defp elixirc_paths(_), do: ["lib"]

  # Specifies your project dependencies.
  #
  # Type `mix help deps` for examples and options.
  defp deps do
    [
      {:usage_rules, "~> 1.0", only: [:dev]},
      {:sourceror, "~> 1.8", only: [:dev, :test]},
      {:oban, "~> 2.0"},
      {:ash_oban, "~> 0.10"},
      {:ash_graphql, "~> 1.0"},
      {:ash_postgres, "~> 2.0"},
      {:ash, "~> 3.0"},
      {:igniter, "~> 0.6", only: [:dev, :test]},
      {:phoenix, "~> 1.8.15"},
      {:phoenix_ecto, "~> 4.5"},
      {:ecto_sql, "~> 3.13"},
      {:geo_postgis, "~> 3.7"},
      {:postgrex, ">= 0.0.0"},
      {:telemetry_metrics, "~> 1.0"},
      {:telemetry_poller, "~> 1.0"},
      {:jason, "~> 1.2"},
      {:dns_cluster, "~> 0.2.0"},
      {:bandit, "~> 1.5"},
      {:req, "~> 0.7"},
      {:jose, "~> 1.11"},
      {:corsica, "~> 2.1"},
      {:picosat_elixir, "~> 0.2"},
      {:goth, "~> 1.4"},
      {:elixlsx, "~> 0.6"},
      {:image, "~> 0.62"},
      {:ash_rate_limiter, "~> 2.0"},
      {:hammer, "~> 7.5"}
    ]
  end

  # Aliases are shortcuts or tasks specific to the current project.
  # For example, to install project dependencies and perform other setup tasks, run:
  #
  #     $ mix setup
  #
  # See the documentation for `Mix` for more info on aliases.
  defp aliases do
    [
      setup: ["deps.get", "ash.setup", "run priv/repo/seeds.exs"],
      "ecto.setup": ["ecto.create", "ecto.migrate", "run priv/repo/seeds.exs"],
      "ecto.reset": ["ecto.drop", "ecto.setup"],
      test: ["ash.setup --quiet", "test"],
      precommit: ["compile --warnings-as-errors", "deps.unlock --unused", "format", "test"]
    ]
  end
end
