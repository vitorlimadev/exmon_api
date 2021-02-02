defmodule ExmonWeb.TrainersView do
  use ExmonWeb, :view

  alias Exmon.Trainer

  def render("create.json", %{changeset: %Trainer{id: id, name: name, inserted_at: inserted_at}}) do
    %{
      message: "Trainer created!",
      trainer: %{
        id: id,
        name: name,
        inserted_at: inserted_at
      }
    }
  end
end
