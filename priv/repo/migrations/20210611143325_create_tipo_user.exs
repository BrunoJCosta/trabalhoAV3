defmodule Pfu.Repo.Migrations.CreateTipoUser do
  use Ecto.Migration

  def change do
    create table(:tipo_user) do
      add :tipo, :string

      timestamps()
    end

  end
end
