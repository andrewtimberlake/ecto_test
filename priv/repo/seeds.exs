alias EctoTest.{Repo,Account,User}

defmodule DatabaseSeeder do
  def run do
    Repo.transaction(fn ->
      user = Repo.insert!(%User{id: uuid, email: "test@example.com"})
      account = Repo.insert!(%Account{id: uuid, name: "Test account"})
      IO.puts(inspect(Repo.all Ecto.assoc(account, :users)))
    end)
  end

  defp uuid, do: Ecto.UUID.generate
end

DatabaseSeeder.run
