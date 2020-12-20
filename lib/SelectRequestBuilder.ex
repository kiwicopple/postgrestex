defmodule SelectRequestBuilder do
  def order(req, column, desc \\ False, nullsfirst \\ False) do
    desc = if desc, do: ".desc", else: ""
    nullsfirst = if nullsfirst, do: ".nullsfirst", else: ""
    headers = Map.merge(req.headers, %{order: "#{column} #{desc} #{nullsfirst}"})
  end

  def limit(req, size, start) do
    headers =
      Map.merge(req.headers, %{Range: "#{start}-#{start + size - 1}", "Range-Unit": "items"})
  end

  def range(req, start, _end) do
    updated_headers =
      Map.merge(req.headers, %{Range: "#{start}-#{_end - 1}", "Range-Unit": "items"})

    updated_headers |> Map.merge(req)
  end

  def single(req) do
    # Modify this to use a session header
    headers = Map.merge(req.headers, %{Accept: "application/vnd.pgrst.object+json"})
  end
end
