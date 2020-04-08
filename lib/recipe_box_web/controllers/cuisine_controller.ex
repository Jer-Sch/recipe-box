defmodule RecipeBoxWeb.CuisineController do
  use RecipeBoxWeb, :controller

  alias RecipeBox.Cuisine
  
  @doc """
  The conn is the Plug connection. 
  The Plug takes a connection and returns a connection,
  and the conn is a struct that
  contains all the information (body, cookies, headers ...).
  """
  def new(conn, _params) do
    changeset = Cuisine.change_cuisine(%Cuisine{})
    render(conn, "new.html", changeset: changeset)
  end

  def create(conn, %{"cuisine" => cuisine_params}) do
    {:ok, cuisine} = Cuisine.create_cuisine(cuisine_params)

    conn
    |> put_flash(:info, "Success! #{cuisine.name} created!")
    |> redirect(to: Routes.cuisine_path(conn, :show))
  end
end
