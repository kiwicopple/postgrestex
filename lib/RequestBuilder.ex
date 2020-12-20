defmodule RequestBuilder do
  def select(req, columns) do
    Map.put(
      req,
      :headers,
      Map.merge(req.headers, %{select: Enum.join(columns, ","), method: "GET"})
    )
  end

  def insert(req, json, upsert \\ False) do
    prefer_option = if upsert, do: ",resolution=merge-duplicates", else: ""
    headers = Map.merge(req.headers, %{Prefer: prefer_option, method: "POST"})
    req |> Map.merge(headers) |> Map.merge(%{body: json})
  end

  def update(req, json) do
    updated_headers = Map.merge(req.headers, %{Prefer: "return=representation"})

    updated_headers
    |> Map.merge(%{method: "PATCH", body: json})
    |> Map.merge(req)
  end

  def delete(req, json) do
    req |> Map.merge(%{method: "DELETE", body: json})
  end
end
