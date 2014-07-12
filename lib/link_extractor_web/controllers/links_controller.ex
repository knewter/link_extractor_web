defmodule LinkExtractorWeb.Controllers.Links do
  use Phoenix.Controller

  def index(conn, _params) do
    links = LinkExtractor.get_links
    render conn, "index", links: links
  end
end
