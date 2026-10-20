%{
  configs: [
    %{
      name: "default",
      files: %{
        included: ["lib/", "test/", "dev/", "config/", "priv/repo/seeds.exs", "priv/repo/seeds/"],
        excluded: []
      },
      strict: true,
      parse_timeout: 5000,
      color: true,
      checks: %{
        enabled: [
          {Credo.Check.Readability.NestedFunctionCalls, [min_pipeline_length: 2]},
          {Credo.Check.Refactor.PipeChainStart, []}
        ],
        disabled: []
      }
    }
  ]
}
