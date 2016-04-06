defmodule EctoTest.Repo.Migrations.CreateTables do
  use Ecto.Migration

  def change do
    create table(:users, primary_key: false) do
      add :id, :binary_id, primary_key: true
      add :email, :string
      timestamps
    end

    create index(:users, [:email], unique: true)

    create table(:accounts, primary_key: false) do
      add :id, :binary_id, primary_key: true
      add :name, :string
      timestamps
    end

    create table(:accounts_users_map, primary_key: false) do
      add :user_id, references(:users, type: :binary_id)
      add :account_id, references(:accounts, type: :binary_id)
    end
  end
end
