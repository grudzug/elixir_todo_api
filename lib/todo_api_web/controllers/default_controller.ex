defmodule TodoApiWeb.DefaultController do
  use TodoApiWeb, :controller

  def index(conn, _params) do
    text(conn, "Welcome to TODO API")
  end
end
