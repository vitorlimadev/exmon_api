defmodule Exmon.Trainer.Update do
  alias Ecto.UUID
  alias Exmon.{Trainer, Repo}

  def call(%{"id" => id} = params) do
    case UUID.cast(id) do
      :error -> {:error, "Invalid ID. Please insert a valid UUID."}
      {:ok, uuid} -> trainer_exists?(uuid, params)
    end
  end

  defp trainer_exists?(uuid, params) do
    case Repo.get(Trainer, uuid) do
      nil -> {:error, "Trainer not found."}
      trainer -> update_trainer(trainer, params)
    end
  end

  defp update_trainer(trainer, params) do
    trainer
    |> Trainer.changeset(params)
    |> Repo.update()
  end
end
