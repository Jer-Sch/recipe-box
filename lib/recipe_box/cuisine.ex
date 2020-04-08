defmodule RecipeBox.Cuisine do
  @moduledoc """
  This is the Cuisine context
  """

  use Ecto.Schema
  import Ecto.Changeset
  
  alias RecipeBox.Cuisine

  @doc "RecipeBox.Repo is the application's Ecto repository"
  alias RecipeBox.Repo
  
  @doc """
  This specifies the database table and corresponding Elixir struct at the same time.
  Generate a migration file by running mix ecto.gen.migration create_cuisines.
  """
  schema "cuisines" do
    field :name, :string

    timestamps()
  end
  
  @doc """
  Changesets allow Ecto to manage record changes.
  The cast function allows only the specified fields into the DB and nothing else.
  """
  def changeset(cuisine, attrs) do
    cuisine |> cast(attrs, [:name])
  end

  def change_cuisine(%Cuisine{} = cuisine) do
    Cuisine.changeset(cuisine, %{})
  end

  def create_cuisine(attrs \\ %{}) do
    %Cuisine{}
    |> Cuisine.changeset(attrs)
    |> Repo.insert()
  end
end
