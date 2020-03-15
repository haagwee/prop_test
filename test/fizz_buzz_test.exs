defmodule FizzBuzzTest do
  use ExUnit.Case
  use ExUnitProperties

  property "neither" do
    check all x <- integer(),
              rem(x, 3) != 0 and rem(x, 5) != 0 do
      assert FizzBuzz.check(x) == Integer.to_string(x)
    end
  end

  property "fizz" do
    data = gen(all x <- integer(), rem(x, 5) != 0, do: x * 3)
    check all x <- data do
      assert FizzBuzz.check(x) == "Fizz"
    end
  end

  property "buzz" do
    data = gen(all x <- integer(), rem(x, 3) != 0, do: x * 5)
    check all x <- data do
      assert FizzBuzz.check(x) == "Buzz"
    end
  end

  property "fizz_buzz" do
    data = gen(all x <- integer(), do: x * 15)
    check all x <- data do
      assert FizzBuzz.check(x) == "FizzBuzz"
    end
  end
end
