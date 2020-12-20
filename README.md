# Postgrestex

Elixir Client library for Postgrest.

## Installation

If [available in Hex](https://hex.pm/docs/publish), the package can be installed
by adding `postgrestex` to your list of dependencies in `mix.exs`:

```elixir
def deps do
  [
    {:postgrestex, "~> 0.1.0"}
  ]
end
```


Documentation can be generated with [ExDoc](https://github.com/elixir-lang/ex_doc)
and published on [HexDocs](https://hexdocs.pm). Once published, the docs can
be found at [https://hexdocs.pm/postgrestex](https://hexdocs.pm/postgrestex).

## Getting Started


TODOS:
- [ ] Support Filter Requess
- [ ] Support Select Requests
- [ ] Write Tests
- [ ] Support Auth
- [ ] Document all functions

## Initialize and read from a table

```
 Client.init("api") |> Client.from("todos") |> Client.call()
 ```

### Create
```
Client.init("api") |> Client.from("todos") |> RequestBuilder.insert(%{"name": "Việt Nam", "capital": "Hà Nội" }, False) |> Client.call()
```

### Read
```
Client.init("api") |> Client.from("todos") |> RequestBuilder.select(["id", "name"]) |>Client.call()
```

### Update


### Delete

