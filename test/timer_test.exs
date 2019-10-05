defmodule TimerTest do
  use ExUnit.Case
  doctest Timer

  describe "#hours" do
    test "converts the number of hours to seconds" do
      assert Timer.hours(24) == 86400
    end
  end

  describe "#minutes" do
    test "converts the number of minutes to seconds" do
      assert Timer.minutes(10) == 600
    end
  end
end
