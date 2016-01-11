defmodule Rumbl.UserController do
  use Rumbl.Web, :controller
  require Logger
  
  def index( conn, _params ) do
    users = Repo.all( Rumbl.User )
    render conn, "index.html", users: users
  end

  def show( conn, %{ "id" => id }) do
    Logger.debug inspect( id )
    user = Repo.get( Rambl.User, id )
    Logger.debug inspect( user )
    render conn, "show.html", user: user
  end

end

