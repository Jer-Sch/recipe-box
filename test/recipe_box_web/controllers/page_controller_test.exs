defmodule RecipeBoxWeb.PageControllerTest do
  use RecipeBoxWeb.ConnCase

  test "GET /", %{conn: conn} do
    conn = get(conn, "/")
    assert html_response(conn, 200) =~ "Welcome to RecipeBox!"
  end
end
