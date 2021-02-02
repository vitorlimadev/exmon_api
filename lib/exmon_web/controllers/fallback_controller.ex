defmodule ExmonWeb.FallbackController do
  use ExmonWeb, :controller

  def call(conn, {:error, info}) do
    conn
    |> put_status(:bad_request)
    |> put_view(ExmonWeb.ErrorView)
    |> render("400.json", info: info)
  end
end
