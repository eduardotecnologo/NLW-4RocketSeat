defmodule Edupay.NumbersTest do
  use ExUnit.Case

  alias Edupay.Numbers

  describe "sum_from_file/1" do
    test "when there is a file with the given name, returns the sum of numbers" do
      response = Numbers.sum_from_file("numbers")

      expected_response = "manolooo"

      assert response == expected_response
    end
  end
end
