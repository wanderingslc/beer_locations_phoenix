defmodule BeerLocations.PageController do
  use BeerLocations.Web, :controller

  def index(conn, _params) do
    render conn, "index.html"
  end
end
