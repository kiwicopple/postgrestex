defmodule PostgrestexTest do
  use ExUnit.Case
  doctest Postgrestex

  test "init returns struct" do
    assert Client.init("todos") == %{
      headers: %{
        Accept: "application/json",
        "Content-Type": "application/json",
        "Accept-Profile": "todos",
        "Content-Profile": "todos",
      },
      path: "http://localhost:3000",
      schema: "todos",
      method: "GET",
    }
  end
  test "using schema changes the schema" do
    assert Client.init("api") |> Client.from("todos")  == %{
  headers: %{
    Accept: "application/json",
    "Accept-Profile": "api",
    "Content-Profile": "api",
    "Content-Type": "application/json"
  },
  method: "GET",
  path: "http://localhost:3000/todos",
  schema: "api"
}
  end
end
