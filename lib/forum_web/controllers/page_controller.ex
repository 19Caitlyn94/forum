defmodule ForumWeb.PageController do
  use ForumWeb, :controller

  def home(conn, _params) do
    render(conn, :home)
  end

  def users(conn, _params) do
    users = [%{id: 1, name: "John Doe", email: "john.doe@example.com"}, %{id: 2, name: "Jane Doe", email: "jane.doe@example.com"}]
   json(conn, %{users: users})
  end
end
