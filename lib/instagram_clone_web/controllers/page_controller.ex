defmodule InstagramCloneWeb.PageController do
  use InstagramCloneWeb, :controller

  def index(conn, _params) do
    render(conn, "index.html")
  end
end
