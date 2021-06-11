defmodule Pfu.TipoUser do
  use Ecto.Schema
  import Ecto.Changeset

  schema "tipo_user" do
    field :tipo, :string
    has_many :user, Pfu.User

    timestamps()
  end

  @doc false
  def changeset(tipo_user, attrs) do
    tipo_user
    |> cast(attrs, [:tipo])
    |> validate_required([:tipo])
  end
end
