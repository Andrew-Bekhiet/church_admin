defimpl AshGraphql.Error, for: AshRateLimiter.LimitExceeded do
  def to_error(error) do
    %{
      message: Exception.message(error),
      short_message: Exception.message(error),
      code: ChurchAdmin.Errors.Codes.rate_limited(),
      fields: [],
      vars: %{}
    }
  end
end
