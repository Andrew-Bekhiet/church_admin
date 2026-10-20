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
          {Credo.Check.Readability.ImplTrue, []},
          {Credo.Check.Readability.OneArityFunctionInPipe, []},
          {Credo.Check.Readability.SeparateAliasRequire, []},
          {Credo.Check.Design.SkipTestWithoutComment, []},
          {Credo.Check.Refactor.FilterReject, []},
          {Credo.Check.Refactor.RejectFilter, []},
          {Credo.Check.Refactor.MapMap, []},
          {Credo.Check.Refactor.NegatedIsNil, []},
          {Credo.Check.Refactor.PassAsyncInTestCases, []},
          {Credo.Check.Refactor.PipeChainStart, []},
          {Credo.Check.Refactor.VariableRebinding, []},
          {Credo.Check.Warning.LeakyEnvironment, []},
          {Credo.Check.Warning.MixEnv, []},
          # Codes defines one function per literal code at compile time; the names cannot already exist as atoms.
          {Credo.Check.Warning.UnsafeToAtom,
           [files: %{excluded: ["lib/church_admin/errors/codes.ex"]}]}
        ],
        disabled: []
      }
    }
  ]
}
