defmodule YexTest do
  use ExUnit.Case
  doctest Yex

  test "greets the world" do
    assert Yex.hello() == :world
  end
end
