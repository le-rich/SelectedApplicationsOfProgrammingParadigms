# while
defmodule Ex2 do
  defmacro while(condition, do: block) do
    quote do
      try do
        for _ <- Stream.cycle([:ok]) do
          case unquote(condition) do
            x when x in [false, nil] -> Ex2.break
            _ -> unquote(block)
          end
        end
      catch
         :break -> :ok
      end
    end
  end

  def break do
    throw :break
  end
end

defmodule Ex2Test do
  require Ex2

  defp loop(count) do
    receive do
      _ when count >= 5 -> :ok
      _ -> 
        loop(count + 1)
    end
  end

  def runtest() do
    pid = spawn(fn -> loop(1) end)
    Ex2.while Process.alive?(pid) do
      send(pid, :hello)
      IO.puts("hello")
      Process.sleep(1000)
    end
  end
end
