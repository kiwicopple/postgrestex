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
  @spec auth(String.t(), String.t(), String.t()) :: String.t()
  def auth(token, username \\ "", password \\ "") do
    "samples"
  end

  @doc """
  Switch to another schema.

  ## Examples

      iex> Client.schema()
      :schema
  """
  @spec schema(String.t()) :: String.t()
  def schema(schema) do
    "asldkjf"
  end

  @doc """
  Perform a table operation

  ## Examples

      iex> Client.from()
      :from

  """
  @spec from(String.t()) :: String.t()
  def from(table) do
    "laksjdf"
  end

  def rpc(func, params) do
    :rpc
  end
end
