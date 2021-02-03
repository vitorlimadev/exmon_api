defmodule Exmon.Trainer.Show do
  alias Ecto.UUID
  alias Exmon.{Trainer, Repo}

  def call(id) do
    case UUID.cast(id) do
      :error -> {:error, "Invalid ID. Please insert a valid UUID."}
      {:ok, uuid} -> show_trainer(uuid)
    end
  end

  defp show_trainer(uuid) do
    case Repo.get(Trainer, uuid) do
      nil -> {:error, "Trainer not found."}
      trainer -> {:ok, trainer}
    end
  end
end
