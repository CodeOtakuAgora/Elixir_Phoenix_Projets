defmodule OmgneeringWeb.PageController do
  use OmgneeringWeb, :controller

  def index(conn, _params) do
    videos = Omgneering.Repo.all(Omgneering.Video)
    render(conn, "index.html", videos: videos)
  end
end
