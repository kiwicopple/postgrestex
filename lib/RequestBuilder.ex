defmodule RequestBuilder do
  def select(req, columns) do
    merge(req.headers, %{select: Enum.join(columns, ",", method: "GET")})
  end

  def insert(req, json, upsert) do
    prefer_option = if upsert, do: ",resolution=merge-duplicates", else: ""
    headers = merge(req.headers, %{Prefer: prefer_option})
    headers
  end

  def update(req, json) do
    updated_headers = merge(req.headers, %{Prefer: "return=representation"})
    updated_headers |> merge(%{method: "PATCH", body: json})
    updated_headers
  end

  def delete(req, json) do
    req |> merge(%{method: "DELETE", body: json})
  end
end
