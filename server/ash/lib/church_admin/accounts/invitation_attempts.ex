defmodule ChurchAdmin.Accounts.InvitationAttempts do
  @moduledoc """
  Counts invitation-code attempts per Firebase account (the `ash_rate_limiter`
  backend of `User.apply_invitation_code`) in a sliding window kept in ETS by
  `Counter`, which the application starts. The counts live in this node's
  memory and reset on restart, which one instance with a handful of users can
  afford.
  """

  @behaviour AshRateLimiter.Backend

  defmodule Counter do
    @moduledoc false
    use Hammer, backend: :ets, algorithm: :sliding_window
  end

  @impl AshRateLimiter.Backend
  def hit(key, window_ms, limit), do: Counter.hit(key, window_ms, limit)

  @spec key(Ash.ActionInput.t(), map()) :: String.t()
  def key(_input, %{actor: %{principal: %{auth_id: auth_id}}}),
    do: "apply_invitation_code:" <> auth_id
end
