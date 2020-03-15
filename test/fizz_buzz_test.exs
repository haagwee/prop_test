defmodule FizzBuzzTest do
  use ExUnit.Case
  use PropCheck

  doctest FizzBuzz

  property "neither" do
    forall x <- integer(1, 1000) do
      if rem(x, 5) == 0 or rem(x, 3) == 0 do
        true
      else
        FizzBuzz.check(x) == Integer.to_string(x)
      end
    end
  end

  property "fizz" do
    forall x <- integer(1, 1000) do
      if rem(x, 5) == 0 do
        true
      else
        FizzBuzz.check(x * 3) == "Fizz"
      end
    end
  end

  property "buzz" do
    forall x <- integer(1, 1000) do
      if rem(x, 3) == 0 do
        true
      else
        FizzBuzz.check(x * 5) == "Buzz"
      end
    end
  end

  property "fizz_buzz" do
    forall x <- integer(1, 1000) do
      FizzBuzz.check(x * 15) == "FizzBuzz"
    end
  end
end
