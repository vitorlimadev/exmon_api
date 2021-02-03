defmodule ExmonWeb.TrainersController do
  use ExmonWeb, :controller
  action_fallback ExmonWeb.FallbackController

  def create(conn, params) do
    params
    |> Exmon.create_trainer()
    |> handle_response(conn, "create.json", :created)
  end

  def show(conn, %{"id" => id}) do
    id
    |> Exmon.show_trainer()
    |> handle_response(conn, "show.json", :ok)
  end

  def update(conn, params) do
    params
    |> Exmon.update_trainer()
    |> handle_response(conn, "show.json", :ok)
  end

  def delete(conn, %{"id" => id}) do
    id
    |> Exmon.delete_trainer()
    |> handle_response(conn, "delete.json", :ok)
  end

  defp handle_response({:ok, changeset}, conn, view, status) do
    conn
    |> put_status(status)
    |> render(view, changeset: changeset)
  end

  defp handle_response({:error, _changeset} = error, _, _, _), do: error
end
