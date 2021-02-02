defmodule ExmonWeb.TrainersController do
  use ExmonWeb, :controller
  action_fallback ExmonWeb.FallbackController

  def create(conn, params) do
    params
    |> Exmon.create_trainer()
    |> handle_response(conn)
  end

  defp handle_response({:ok, changeset}, conn) do
    conn
    |> put_status(:created)
    |> render("create.json", changeset: changeset)
  end

  defp handle_response({:error, _changeset} = error, _conn), do: error
end
