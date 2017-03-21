defmodule TrialApp.UserController do
  use TrialApp.Web, :controller

  alias TrialApp.Repo
  alias TrialApp.User

  require IEx
  def index(conn, _params) do
    users = Repo.all(User)
    render conn, "index.json", users: users
  end

  def create(conn, %{"body" => user_params}) do
    user = %User{name: user_params["name"], email: user_params["email"], password: user_params["password"]}
    case Repo.insert(user) do
      {:ok, user} ->
        conn
        |> render("create.json", user: user)
      {:error, changeset} ->

    end

    render conn, "user.json", user: user
  end
end
