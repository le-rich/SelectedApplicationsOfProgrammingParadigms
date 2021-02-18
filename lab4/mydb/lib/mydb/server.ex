# COMP 4958 - Richard Le - SET 4V - A01080411
# Lab 3

defmodule Mydb.Server do
  use GenServer

  #client API
  def start_link(_) do 
    GenServer.start_link(__MODULE__, nil, name: Mydb)
  end

  def store(key, value) do
    GenServer.cast(Mydb, {:store, key, value})
  end

  def find(key) do
    GenServer.call(Mydb, {:find, key})
  end

  def match(value) do
    GenServer.call(Mydb, {:match, value})
  end

  def list() do
    GenServer.call(Mydb, {:list})
  end

  def stop() do
    GenServer.stop(Mydb, reason: :normal)
  end

  #callbacks
  def init(_arg) do
    {:ok, Map.new()} 
  end 
    
  def handle_cast({:store, key, value}, map) do
    {:noreply, Map.put(map, key, value)}
  end
  
  def handle_call({:find, key}, _from, map) do
    if Map.has_key?(map, key) do
      val = Map.get(map, key) 
      {:reply, val, map}
    else
      {:reply, nil, map}
    end
  end                    
  
  def handle_call({:match, value}, _from, map) do
    acc = Enum.filter(map, fn {_k, v} -> v == value end)
    acc = Enum.unzip(acc) |> elem(0)
    {:reply, acc, map}
  end

  def handle_call({:list}, _from, map) do
    {:reply, Map.to_list(map), map}
  end
end
