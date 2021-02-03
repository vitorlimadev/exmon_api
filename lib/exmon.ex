defmodule Exmon do
  alias Exmon.Trainer

  defdelegate create_trainer(params), to: Trainer.Create, as: :call
  defdelegate delete_trainer(params), to: Trainer.Delete, as: :call
  defdelegate show_trainer(params), to: Trainer.Show, as: :call
end
