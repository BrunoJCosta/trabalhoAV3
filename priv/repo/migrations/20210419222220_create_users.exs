defmodule Pfu.Repo.Migrations.CreateUsers do
  use Ecto.Migration


  def change do
    execute("CREATE TYPE tipo_user AS ENUM ('PROFESSOR','ALUNO_GRADUACAO','ALUNO_MESTRADO')")
    create table(:users) do
      add :name, :string
      add :username, :string, null: false
      add :password_hash, :string
      #add :tipo, :tipo, null: false

      timestamps()
    end
    execute("alter table users add tipo tipo_user")

    create unique_index(:users, [:username])
  end
end
