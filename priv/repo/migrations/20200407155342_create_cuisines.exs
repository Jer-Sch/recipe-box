defmodule RecipeBox.Repo.Migrations.CreateCuisines do
  @moduledoc """
  This file is generated by mix ecto.gen.migration create_cuisines.
  Migrate with mix ecto.migrate.
  """ 
  use Ecto.Migration

  def change do
    create table(:cuisines) do
      add :name, :string

      timestamps()
    end
  end
end
