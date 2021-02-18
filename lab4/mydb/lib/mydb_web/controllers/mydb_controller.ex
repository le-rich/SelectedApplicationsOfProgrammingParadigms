defmodule MydbWeb.MydbController do
  use MydbWeb, :controller

  defp to_tuple_list(list) do
    Enum.map(list, fn {key, value} -> %{"key" => key, "value" => value} end)
  end


  def store(conn, %{"key" => key, "value" => value}) do
    Mydb.Server.store(key, value)
    render(conn, "result.json", data: %{"key": key, "value": value})
  end

  def find(conn, %{"key" => key}) do
    data = Mydb.Server.find(key)
    render(conn, "result.json", data: data)
  end

  def match(conn, %{"value" => value}) do
    data = Mydb.Server.match(value)
    render(conn, "result.json", data: data)
  end

  def list(conn, _params) do
    data = Mydb.Server.list() |> to_tuple_list()
    render(conn, "result.json", data: data)
  end
end
