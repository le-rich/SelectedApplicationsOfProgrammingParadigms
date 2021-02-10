defmodule Ex1 do
  # doesn't work: the values of condition, do_blk & else_blk are
  # passed to the function
  def fun_if(condition, do: do_blk, else: else_blk) do
    case condition do
      x when x in [false, nil] -> else_blk
      _ -> do_blk
    end
  end

  def fun_show(expr) do         # shows the value of expr
    IO.inspect(expr)
  end

  defmacro macro_show(expr) do  # shows the AST of expr
    IO.inspect(expr)
  end

  defmacro test() do            # 3 different scopes
    x = 2                       # 1) scope of macro definition
    quote do
      x = 1                     # 2) scope of quoted macro body
      IO.puts(x)
      IO.puts(unquote(x))
      var!(x) = 4               # 3) access x in scope of macro call
      # IO.puts(var!(x))
    end
  end

  ### bind_qupted option
  defmacro twice(x) do
    quote do
      IO.puts("just entered quote of twice")
      IO.puts(unquote(x) + unquote(x))   # x is "evaluated" twice
    end
  end

  defmacro once(x) do
    quote bind_quoted: [x: x] do         # x is "evaluated" once here
      IO.puts("just entered quote of once")
      IO.puts(x + x)
    end
  end

  defmacro mkhello() do
    quote do
      def hello() do
        IO.puts("hello")
      end
    end
  end

  defmacro macro_if(condition, do: do_blk, else: else_blk) do
    quote do
      case unquote(condition) do
        x when x in [false, nil] -> unquote(else_blk)
        _ -> unquote(do_blk)
      end
    end
  end
end

defmodule Ex1Test do
  require Ex1

  x = 3             # scope where macro is called
  Ex1.test()
#  Ex1.mkhello()
#  Ex1.twice(IO.inspect(2))
#  Ex1.once(IO.inspect(1))
  IO.puts(x)
end
