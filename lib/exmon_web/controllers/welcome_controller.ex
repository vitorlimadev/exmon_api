defmodule ExmonWeb.WelcomeController do
  use ExmonWeb, :controller

  def index(conn, _params) do
    text(conn, "Exmon API v0.1.0")
  end
end
