# COMP 4959 - SET 4V - Richard Le - A01080411

defmodule Lab3 do
  
  def read_atomic_weights() do
    File.read("atomic-weights.txt") |> elem(1) |> String.split("\n") |>
    Enum.map(fn x -> String.split(x, "\t") |> List.to_tuple() end) 
  end
  
  defmacro atomic_weight(sym) do
    quote do
      atm = Lab3.read_atomic_weights() 
      IO.puts(Enum.find(atm, nil, fn {num, sym2, name, weight} -> String.downcase(unquote(sym)) == String.downcase(sym2) end) |> elem(3))
    end
  end

  for {num, sym, name, weight} <- 
end
