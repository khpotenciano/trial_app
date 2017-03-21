defmodule TrialApp.UserView do
  use TrialApp.Web, :view

  def render("index.json", %{users: users}) do
    %{data: render_many(users, TrialApp.UserView, "user.json")}
  end

  def render("user.json", %{user: user}) do
    %{id: user.id, name: user.name, email: user.email}
  end

  def render("create.json", %{user: user}) do
    %{data: render_one(user, TrialApp.UserView, "user.json")}
  end
end
