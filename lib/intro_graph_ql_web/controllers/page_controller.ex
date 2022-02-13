defmodule IntroGraphQlWeb.PageController do
  use IntroGraphQlWeb, :controller

  def index(conn, _params) do
    render(conn, "index.html")
  end
end
