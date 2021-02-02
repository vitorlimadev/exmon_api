defmodule ExmonWeb.WelcomeController do
  use ExmonWeb, :controller

  def index(conn, _params) do
    text(conn, "Hello world!")
  end
end
