defmodule Ex3 do
  defmacro mkfun(x) do
    quote do
      def unquote(x)() do
        unquote(x)
      end
    end
  end

  defmacro say(msg) do
    quote do
      def unquote(:"say_#{msg}")() do
        IO.puts unquote(msg)
      end
    end
  end
end

defmodule Ex3Test do
  require Ex3

  Ex3.say(:hello)
  Ex3.mkfun(:hello)

  def run() do
    say_hello()
    hello()
  end
end
