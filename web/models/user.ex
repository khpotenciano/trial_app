defmodule TrialApp.User do
  use TrialApp.Web, :model

  schema "users" do
    field :name, :string
    field :age, :integer
    field :email, :string
    field :password, :string

    timestamps()
  end

  @doc """
  Builds a changeset based on the `struct` and `params`.
  """
  def changeset(struct, params \\ %{}) do
    struct
    |> cast(params, [:name, :age, :email, :password])
    |> validate_required([:name, :email, :password])
  end
end
