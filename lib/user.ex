defmodule EctoTest.User do
  use EctoTest.Model

  schema "users" do
    field :email
    timestamps
  end

  def changeset(model, params \\ :empty) do
    model
    |> cast(params, ~w(first_email))
    |> validate_required(~w[email]a)
    |> validate_length(:email, max: 255)
    |> unique_constraint(:email)
  end
end
