# Rewrites `@impl true` to `@impl <BehaviourModule>` for the sites Credo's
# Readability.ImplTrue flags.
#
#   MIX_ENV=test mix run --no-start scripts/qualify_impl_true.exs [--dry-run]
#
# The behaviour comes from the compiled module: the one declaring a callback
# with the name and arity of the function that follows the attribute. Sites
# where no behaviour, or more than one, declares that callback are printed and
# left alone for a hand edit.
defmodule QualifyImplTrue do
  @definitions ~w(def defp defmacro defmacrop)a
  @source_globs ["lib/**/*.ex", "dev/**/*.ex", "test/**/*.ex", "test/**/*.exs", "config/**/*.exs"]

  def run(dry_run?) do
    @source_globs
    |> Enum.flat_map(&Path.wildcard/1)
    |> Enum.sort()
    |> Enum.map(&qualify_file(&1, dry_run?))
    |> Enum.sum()
    |> then(&IO.puts("#{&1} sites qualified"))
  end

  defp qualify_file(file, dry_run?) do
    source = File.read!(file)

    if String.contains?(source, "@impl true") do
      {:ok, ast} = Code.string_to_quoted(source)
      sites = ast |> collect_sites([]) |> List.flatten()
      replacements = Enum.flat_map(sites, &resolve(&1, file))
      write(file, source, replacements, dry_run?)
      length(replacements)
    else
      0
    end
  end

  defp collect_sites({:defmodule, _, [{:__aliases__, _, parts}, [do: body]]}, outer) do
    module = Module.concat(outer ++ parts)
    body |> statements() |> collect_statements(module, nil, [])
  end

  defp collect_sites({:__block__, _, statements}, outer) do
    Enum.map(statements, &collect_sites(&1, outer))
  end

  defp collect_sites(_other, _outer), do: []

  defp collect_statements([], _module, _pending, found), do: Enum.reverse(found)

  defp collect_statements([statement | rest], module, pending, found) do
    case statement do
      {:@, meta, [{:impl, _, [true]}]} ->
        collect_statements(rest, module, meta[:line], found)

      {definition, _, [head | _]} when definition in @definitions and pending != nil ->
        {name, arities} = signature(head)
        site = {pending, module, definition, name, arities}
        collect_statements(rest, module, nil, [site | found])

      {:defmodule, _, _} ->
        nested = collect_sites(statement, module_parts(module))
        collect_statements(rest, module, pending, [nested | found])

      _other ->
        collect_statements(rest, module, pending, found)
    end
  end

  defp module_parts(module), do: module |> Module.split() |> Enum.map(&String.to_atom/1)

  defp statements({:__block__, _, statements}), do: statements
  defp statements(single), do: [single]

  defp signature({:when, _, [head | _]}), do: signature(head)

  defp signature({name, _, args}) do
    args = args || []
    defaults = Enum.count(args, &match?({:\\, _, _}, &1))
    {name, (length(args) - defaults)..length(args)}
  end

  defp resolve({line, module, definition, name, arities}, file) do
    behaviours = declaring_behaviours(module, definition, name, arities)

    case behaviours do
      [behaviour] ->
        [{line, inspect(behaviour)}]

      other ->
        IO.puts("UNRESOLVED #{file}:#{line} #{inspect(module)}.#{name} -> #{inspect(other)}")
        []
    end
  end

  defp declaring_behaviours(module, definition, name, arities) do
    callback_name = if definition in [:defmacro, :defmacrop], do: :"MACRO-#{name}", else: name
    callback_arities = if callback_name == name, do: arities, else: Enum.map(arities, &(&1 + 1))

    with {:module, _} <- Code.ensure_loaded(module) do
      module.__info__(:attributes)
      |> Keyword.get_values(:behaviour)
      |> List.flatten()
      |> Enum.uniq()
      |> Enum.filter(fn behaviour ->
        Enum.any?(behaviour.behaviour_info(:callbacks), fn {callback, arity} ->
          callback == callback_name and arity in callback_arities
        end)
      end)
    else
      _not_loaded -> []
    end
  end

  defp write(_file, _source, [], _dry_run?), do: :ok
  defp write(_file, _source, _replacements, true), do: :ok

  defp write(file, source, replacements, false) do
    lines = String.split(source, "\n")

    patched =
      Enum.reduce(replacements, lines, fn {line, behaviour}, acc ->
        List.update_at(acc, line - 1, &String.replace(&1, "@impl true", "@impl #{behaviour}"))
      end)

    File.write!(file, Enum.join(patched, "\n"))
  end
end

QualifyImplTrue.run("--dry-run" in System.argv())
