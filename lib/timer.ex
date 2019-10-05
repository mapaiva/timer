defmodule Timer do
  @moduledoc """
  Timer is a simple time handling module.
  """

  @type seconds :: integer()

  @hour_in_seconds 3600
  @minute_in_seconds 60

  @doc """
  Hours converts a number of hours into seconds.

  ## Examples

      iex> Timer.hours(24)
      86400

  """
  @spec hours(integer()) :: seconds()
  def hours(hours) do
    hours * @hour_in_seconds
  end

  @doc """
  Minutes converts a number of minutes into seconds.

  ## Examples

      iex> Timer.minutes(10)
      600

  """
  @spec minutes(integer()) :: seconds()
  def minutes(minutes) do
    minutes * @minute_in_seconds
  end
end
