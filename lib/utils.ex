defmodule Utils do
  def sanitize_params(str) do
    reserved_chars = String.graphemes(",.:()")
    if String.contains(str, reserved_chars), do: str, else: "#{str}"
  end
end
