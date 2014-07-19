defmodule LinkExtractorWeb.Router do
  use Phoenix.Router

  plug Plug.Static, at: "/static", from: :link_extractor_web
  get "/", LinkExtractorWeb.Controllers.Links, :index
  get "/links", LinkExtractorWeb.Controllers.Links, :index
  post "/messages", LinkExtractorWeb.Controllers.Messages, :create
end
