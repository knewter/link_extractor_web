defmodule LinkExtractorWeb.Controllers.Messages do
  use Phoenix.Controller

  def create(conn, _params) do
    {:ok, message, conn} = Plug.Conn.read_body(conn)
    LinkExtractor.inject(message)
    send_resp(conn, 200, "")
  end
end
