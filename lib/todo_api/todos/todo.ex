defmodule TodoApi.Todos.Todo do
  use Ecto.Schema
  import Ecto.Changeset

  @primary_key {:id, :binary_id, autogenerate: true}
  @foreign_key_type :binary_id
  schema "todos" do
    field :done, :boolean, default: false
    field :priority, :integer
    field :text, :string

    timestamps()
  end

  @doc false
  def changeset(todo, attrs) do
    todo
    |> cast(attrs, [:text, :priority, :done])
    |> validate_required([:text, :priority, :done])
  end
end
