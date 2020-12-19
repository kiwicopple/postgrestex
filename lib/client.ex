defmodule Client do
  @moduledoc """
  Documentation for `Postgrestex`.
  """

  @doc """
  Authenticate the client with either the bearer token or basic authentication

  ## Examples

      iex> Client.auth()
      :world

  """
  def init(schema, path \\ "http://localhost:3000") do
    %{
      headers: %{
        Accept: "application/json",
        "Content-Type": "application/json",
        "Accept-Profile": schema,
        "Content-Profile": schema
      },
      path: path,
      schema: schema,
      method: "GET"
    }
  end

  @spec auth(map(), String.t(), String.t(), String.t()) :: String.t()
  def auth(req, token, username \\ nil, password \\ "") do
    # authenticate using the hackney client
    hackney = [basic_auth: {username, password}]
    # add the auth bearer token
    ""
  end

  @doc """
  Switch to another schema.

  ## Examples

      iex> Client.schema()
      :schema
  """
  @spec schema(map(), String.t()) :: map()
  def schema(req, schema) do
    Map.merge(req, %{schema: schema, method: "GET"})
  end

  @doc """
  Perform a table operation

  ## Examples

    iex> Client.from()
    :from

  """
  @spec from(map(), String.t()) :: map()
  def from(req, table) do
    Map.merge(req, %{path: "#{req.path}/#{table}"})
  end

  def rpc(req, func, params) do
    # Append to path and set req type to post 
    :rpc
  end

  @spec call(map()) :: :ok | :error
  def call(req) do
    url = req.path
    headers = req.headers

    case req.method do
      "GET" -> HTTPoison.get!(url, headers)
      "POST" -> IO.puts("TODO")
      "PUT" -> IO.puts("TODO")
      _ -> IO.puts("Some other stuff")
    end

    :ok
  end
end
