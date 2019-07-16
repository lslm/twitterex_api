defmodule TwitterexApiWeb.Router do
  use TwitterexApiWeb, :router

  pipeline :api do
    plug :accepts, ["json"]
  end

  scope "/api", TwitterexApiWeb do
    pipe_through :api
  end
end
