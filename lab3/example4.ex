defmodule Ex4 do
  for {x, y} <- [{"hello", 1}, {"world", 2}] do
    def f(unquote(x)) do   # unquote fragment
      unquote(y)
    end
  end

  def f(_), do: nil
end

