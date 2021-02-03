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

  def render("show.json", %{changeset: %Trainer{id: id, name: name, inserted_at: inserted_at}}) do
    %{
      id: id,
      name: name,
      inserted_at: inserted_at
    }
  end

  def render("delete.json", %{changeset: %Trainer{name: name}}) do
    %{
      message: "#{name} deleted."
    }
  end
end
