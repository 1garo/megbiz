defmodule RestTest do
  use ExUnit.Case, async: true
  use Plug.Test

  @opts Rest.Router.init([])

  test "return ok" do
    conn = conn(:get, "/")

    conn = Rest.Router.call(conn, @opts)

    assert conn.state == :sent
    assert conn.status == 200
    assert conn.resp_body == "OK"

  end
end
