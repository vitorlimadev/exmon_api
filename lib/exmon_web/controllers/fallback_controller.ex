defmodule ExmonWeb.FallbackController do
  use ExmonWeb, :controller

  def call(conn, {:error, changeset}) do
    conn
    |> put_status(:bad_request)
    |> put_view(ExmonWeb.ErrorView)
    |> render("400.json", changeset: changeset)
  end
end
