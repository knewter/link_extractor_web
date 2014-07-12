defmodule LinkExtractorWebTest do
  use ExUnit.Case
  alias LinkExtractor.Link

  @message """
  Augie,

  Ctrl-p: https://github.com/kien/ctrlp.vim

  That is probably my absolute favorite vim plugin
  """

  @expected_link %Link{
    url: "https://github.com/kien/ctrlp.vim",
    title: "kien/ctrlp.vim · GitHub"
  }

  test "when text is injected into the system, those links are stored" do
    response = post "/messages", @message
    assert response.status_code == 200
    :timer.sleep 3000
    response = get "/links"
    assert response.body =~ ~r/ctrlp.vim/
  end

  def post path, body do
    HTTPoison.post "http://localhost:4001#{path}", body
  end

  def get path do
    HTTPoison.get "http://localhost:4001#{path}"
  end
end
