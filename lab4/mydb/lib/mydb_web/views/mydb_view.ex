defmodule MydbWeb.MydbView do
  use MydbWeb, :view

  def render("result.json", %{data: data}) do
    %{data: data}
  end

end
