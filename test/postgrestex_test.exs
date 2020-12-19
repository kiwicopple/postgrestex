defmodule PostgrestexTest do
  use ExUnit.Case
  doctest Postgrestex

  test "init returns struct" do
    assert Client.init("todos") == %{
      Accept: "application/json",
      "Accept-Profile": "todos",
      "Content-Profile": "todos",
      "Content-Type": "application/json",
      path: "https://localhost:3000",
    }
  end
  test "using schema changes the schema" do
    assert Client.init("todos") |> Client.schema("yada") == %{
        Accept: "application/json",
        "Accept-Profile": "todos",
        "Content-Profile": "todos",
        "Content-Type": "application/json",
        path: "https://localhost:3000",
        schema: "yada"
      }
  end
end
