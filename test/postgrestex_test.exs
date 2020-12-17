defmodule PostgrestexTest do
  use ExUnit.Case
  doctest Postgrestex

  test "greets the world" do
    assert Postgrestex.hello() == :world
  end
end
