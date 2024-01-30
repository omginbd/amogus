defmodule AmogusTest do
  use ExUnit.Case
  doctest Amogus

  test "greets the world" do
    assert Amogus.hello() == :world
  end
end
