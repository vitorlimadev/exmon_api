defmodule Exmon.Trainer.Delete do
  alias Ecto.UUID
  alias Exmon.{Trainer, Repo}

  def call(id) do
    case UUID.cast(id) do
      :error -> {:error, "Invalid ID. Please insert a valid UUID."}
      {:ok, uuid} -> delete_trainer(uuid)
    end
  end

  defp delete_trainer(uuid) do
    case Repo.get(Trainer, uuid) do
      nil -> {:error, "Trainer not found."}
      trainer -> Repo.delete(trainer)
    end
  end
end
