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
  def init(schema, path \\ "https://localhost:3000") do
    %{
      Accept: "application/json",
      "Content-Type": "application/json",
      "Accept-Profile": schema,
      "Content-Profile": schema,
      path: path
    }
  end

  @spec auth(String.t(), String.t(), String.t()) :: String.t()
  def auth(token, username \\ "", password \\ "") do
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
    Map.merge(req, %{schema: schema})
  end

  @doc """
  Perform a table operation

  ## Examples

      iex> Client.from()
      :from

  """
  @spec from(map(), String.t()) :: map()
  def from(req, table) do
    req.merge(%{path: "#{Map.fetch(req, :path)}/#{table}"})
  end

  def rpc(func, params) do
    :rpc
  end

  def rpc_path(req, func, params) do
  end

  def call do
  end
end
