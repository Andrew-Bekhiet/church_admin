defmodule Mix.Tasks.ChurchAdmin.BootstrapAdmin do
  @shortdoc "Makes an email the first administrator"
  @moduledoc """
  Makes the user with `--email` an administrator (every permission and a
  servant person), linking its Firebase account when one exists. Refuses
  while another administrator exists unless `--force`.

      mix church_admin.bootstrap_admin --email admin@example.com [--force]
  """

  use Mix.Task

  @impl Mix.Task
  def run(args) do
    {opts, _rest} = OptionParser.parse!(args, strict: [email: :string, force: :boolean])
    email = opts[:email] || Mix.raise("--email is required")
    Mix.Task.run("app.config")

    case ChurchAdmin.Release.bootstrap_admin(email, force?: Keyword.get(opts, :force, false)) do
      {:ok, user} ->
        Mix.shell().info("#{email} is an administrator (uid #{user.uid})")

      {:error, error} ->
        Mix.raise(
          "Could not bootstrap #{email}: #{Exception.message(Ash.Error.to_error_class(error))}"
        )
    end
  end
end
