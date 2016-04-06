defmodule EctoTest.Account do
  use EctoTest.Model

  alias EctoTest.User

  schema "accounts" do
    field :name

    timestamps

    many_to_many :users, User, join_through: "accounts_users_map"
  end

  def changeset(model, params \\ :empty) do
    model
    |> cast(params, ~w(name))
    |> cast_assoc(:users)
    |> validate_required(~w[name]a)
    |> validate_length(:name, max: 200)
  end
end
