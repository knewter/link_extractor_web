defmodule LinkExtractorWeb.Router do
  use Phoenix.Router

  plug Plug.Static, at: "/static", from: :link_extractor_web
  get "/", LinkExtractorWeb.Controllers.Pages, :index, as: :page
  get "/links", LinkExtractorWeb.Controllers.Links, :index
  post "/messages", LinkExtractorWeb.Controllers.Messages, :create
end
