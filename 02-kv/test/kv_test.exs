defmodule KVTest do
  use ExUnit.Case
  doctest KV

  test "the truth" do
    assert 1 + 1 == 2
  end
  
  test "another test" do
    refute 1 + 1 == 3
  end
end
