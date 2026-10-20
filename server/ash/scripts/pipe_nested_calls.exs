# Rewrites the sites `mix credo --strict` flags with Readability.NestedFunctionCalls
# and Refactor.PipeChainStart into pipelines.
#
#   MIX_ENV=test mix run --no-start scripts/pipe_nested_calls.exs [--dry-run]
#
# Only the flagged call expressions are patched in place; `mix format` runs
# afterwards. Sites it cannot rewrite safely (first argument not a plain value,
# `assert`-like macros, calls with a do block) stay flagged for a hand edit.
defmodule PipeNestedCalls do
  alias Credo.Check.Readability.NestedFunctionCalls.PipeHelper

  @binds_tighter_than_pipe ~w(** * / + - ++ -- +++ --- .. <> in ! ^ @)a

  @nested_message "Use a pipeline instead of nested function calls."
  @pipe_start_message "Pipe chain should start with a raw value."

  @never_piped_into ~w(assert refute assert_receive assert_received refute_receive
    refute_received assert_raise assert_in_delta if unless case cond with for raise
    reraise throw exit send expr test describe setup setup_all def defp defmacro
    defmacrop require import alias use quote unquote defstruct defmodule doctest
    on_exit from where select join order_by group_by having update insert
    fragment __block__ __aliases__ fn in and or not when)a

  def run(dry_run?) do
    findings_by_file()
    |> Enum.map(fn {file, findings} -> {file, patch_file(file, findings, dry_run?)} end)
    |> Enum.reject(fn {_file, patched} -> patched == 0 end)
    |> Enum.each(fn {file, patched} -> IO.puts("#{patched} patched  #{file}") end)
  end

  defp findings_by_file do
    {output, _status} =
      System.cmd("mix", ["credo", "--strict", "--format", "oneline"], stderr_to_stdout: false)

    ~r/^\[.\] → (\S+?):(\d+):(\d+) (.*)$/m
    |> Regex.scan(output)
    |> Enum.flat_map(fn
      [_, file, line, _column, @nested_message] ->
        [{file, {:nested, to_int(line)}}]

      [_, file, line, _column, @pipe_start_message] ->
        [{file, {:pipe_start, to_int(line)}}]

      _other ->
        []
    end)
    |> Enum.group_by(&elem(&1, 0), &elem(&1, 1))
  end

  defp to_int(text), do: String.to_integer(text)

  defp patch_file(file, findings, dry_run?) do
    source = File.read!(file)
    flagged = MapSet.new(findings)
    format_options = format_options(file)

    patches =
      source
      |> Sourceror.parse_string!()
      |> Macro.prewalk(&mark_calls_that_are_not_nested_calls/1)
      |> Macro.prewalk([], fn node, patches ->
        rewrite_outermost(node, patches, flagged, format_options)
      end)
      |> elem(1)

    unless dry_run? or patches == [] do
      File.write!(file, Sourceror.patch_string(source, patches))
    end

    length(patches)
  end

  defp format_options(file) do
    {_formatter, options} = Mix.Tasks.Format.formatter_for_file(file)
    Keyword.take(options, [:locals_without_parens, :line_length])
  end

  defp rewrite_outermost(node, patches, flagged, format_options) do
    with true <- flagged?(node, flagged),
         rewritten = Macro.postwalk(node, &rewrite_one(&1, flagged)),
         {:|>, _meta, _args} <- rewritten do
      change = Sourceror.to_string(rewritten, format_options)

      patch = %Sourceror.Patch{
        range: Sourceror.get_range(node),
        change: if(needs_parentheses?(node), do: "(" <> change <> ")", else: change)
      }

      {{:__block__, [], [:rewritten]}, [patch | patches]}
    else
      _unchanged -> {node, patches}
    end
  end

  defp needs_parentheses?({_callee, meta, _args}), do: Keyword.has_key?(meta, :needs_parentheses)

  defp mark_calls_that_are_not_nested_calls({:|>, meta, [left, {callee, call_meta, args}]})
       when is_list(args),
       do: {:|>, meta, [left, {callee, [not_nested: true] ++ call_meta, args}]}

  defp mark_calls_that_are_not_nested_calls({:@, meta, [{name, call_meta, args}]})
       when is_list(args),
       do: {:@, meta, [{name, [not_nested: true] ++ call_meta, args}]}

  defp mark_calls_that_are_not_nested_calls({:&, meta, [{callee, call_meta, args}]})
       when is_list(args),
       do: {:&, meta, [{callee, [not_nested: true] ++ call_meta, args}]}

  defp mark_calls_that_are_not_nested_calls({operator, meta, operands})
       when operator in @binds_tighter_than_pipe and is_list(operands),
       do: {operator, meta, Enum.map(operands, &mark_needs_parentheses/1)}

  defp mark_calls_that_are_not_nested_calls(
         {{:., dot_meta, [Access, :get]}, meta, [receiver, key]}
       ),
       do: {{:., dot_meta, [Access, :get]}, meta, [mark_needs_parentheses(receiver), key]}

  defp mark_calls_that_are_not_nested_calls({{:., dot_meta, [receiver, field]}, meta, []}),
    do: {{:., dot_meta, [mark_needs_parentheses(receiver), field]}, meta, []}

  defp mark_calls_that_are_not_nested_calls(node), do: node

  defp mark_needs_parentheses({callee, meta, args}) when is_list(args),
    do: {callee, [needs_parentheses: true] ++ meta, args}

  defp mark_needs_parentheses(node), do: node

  defp flagged?({:|>, meta, _args}, flagged),
    do: MapSet.member?(flagged, {:pipe_start, meta[:line]})

  defp flagged?({_callee, meta, args}, flagged) when is_list(args),
    do:
      not Keyword.has_key?(meta, :not_nested) and
        MapSet.member?(flagged, {:nested, meta[:line]})

  defp flagged?(_node, _flagged), do: false

  defp rewrite_one({:|>, _meta, [start, rest]} = node, flagged) do
    with true <- flagged?(node, flagged),
         {:ok, plain_start} <- start_with_plain_value(start) do
      put_elem(node, 2, [plain_start, rest])
    else
      _unchanged -> node
    end
  end

  defp rewrite_one({callee, meta, [first | rest]} = node, flagged) do
    with true <- flagged?(node, flagged),
         true <- can_be_piped_into?(node),
         {:ok, piped} <- piped_input(first) do
      {:|>, [], [piped, {callee, meta, rest}]}
    else
      _unchanged -> node
    end
  end

  defp rewrite_one(node, _flagged), do: node

  defp piped_input({:|>, _meta, _args} = pipe), do: {:ok, pipe}

  defp piped_input(call) do
    if can_be_in_pipeline?(call), do: start_with_plain_value(call), else: :error
  end

  defp start_with_plain_value({:|>, _meta, _args} = pipe), do: {:ok, pipe}

  defp start_with_plain_value({callee, meta, [first | rest]} = call) do
    if can_be_in_pipeline?(call) and can_be_piped_into?(call) and plain_value?(first) do
      {:ok, {:|>, [], [first, {callee, meta, rest}]}}
    else
      :error
    end
  end

  defp start_with_plain_value(_other), do: :error

  defp can_be_in_pipeline?(ast), do: not PipeHelper.cannot_be_in_pipeline?(ast, [], [])

  defp can_be_piped_into?({callee, meta, [_first | _rest]} = call) do
    callable?(callee) and not Keyword.has_key?(meta, :do) and not never_piped_into?(callee) and
      can_be_in_pipeline?(call)
  end

  defp can_be_piped_into?(_node), do: false

  defp callable?(callee) when is_atom(callee), do: Macro.classify_atom(callee) == :identifier
  defp callable?({:., _meta, [_receiver, function]}), do: is_atom(function)
  defp callable?({:., _meta, [_function]}), do: true
  defp callable?(_callee), do: false

  defp never_piped_into?(callee) when is_atom(callee), do: callee in @never_piped_into
  defp never_piped_into?({:., _meta, [_receiver, function]}), do: function in @never_piped_into
  defp never_piped_into?(_callee), do: false

  defp plain_value?({:__block__, _meta, [literal]}),
    do: not is_tuple(literal) or plain_literal_tuple?(literal)

  defp plain_value?({name, _meta, context}) when is_atom(name) and is_atom(context), do: true
  defp plain_value?({:__aliases__, _meta, _parts}), do: true
  defp plain_value?({:@, _meta, [{_name, _, context}]}) when is_atom(context), do: true
  defp plain_value?({:%{}, _meta, _fields}), do: true
  defp plain_value?({:%, _meta, _struct}), do: true
  defp plain_value?({:{}, _meta, _elements}), do: true

  defp plain_value?({{:., _, [receiver, field]}, _, []}) when is_atom(field),
    do: plain_value?(receiver)

  defp plain_value?({{:., _, [Access, :get]}, _, [receiver, _key]}), do: plain_value?(receiver)
  defp plain_value?({sigil, _meta, _args}) when is_atom(sigil), do: sigil?(sigil)
  defp plain_value?(_other), do: false

  defp plain_literal_tuple?({_first, _second}), do: true
  defp plain_literal_tuple?(_other), do: false

  defp sigil?(name), do: name |> Atom.to_string() |> String.starts_with?("sigil_")
end

PipeNestedCalls.run("--dry-run" in System.argv())
