defmodule SelectRequestBuilder do
  def order(req, column, desc \\ False, nullsfirst \\ False) do
    desc = if desc, do: ".desc", else: ""
    nullsfirst = if nullsfirst, do: ".nullsfirst", else: ""
    # Modify this to use a session header
    merge(req, %{order: "#{column} #{desc} #{nullsfirst}"})
  end

  def limit(req, size, start) do
    # Modify this to use a session header
    merge(req, %{Range: "{#start}-#{start + size - 1}", "Range-Unit": "items"})
  end

  def range(req, start, _end) do
    # Modify this to use a session header
    merge(req, %{Range: "{#start}-#{_end - 1}", "Range-Unit": "items"})
  end

  def single(req) do
    # Modify this to use a session header
    merge(req.headers, %{Accept: "application/vnd.pgrst.object+json"})
  end
end
