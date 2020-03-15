defmodule FizzBuzzTest do
  use ExUnit.Case, async: false
  use ExCheck

  property :neither do
    for_all x in int() do
      implies rem(x, 3) != 0 and rem(x, 5) != 0 do
        FizzBuzz.check(x) == Integer.to_string(x)
      end
    end
  end

  property :fizz do
    for_all x in int() do
      implies rem(x, 3) == 0 and rem(x, 5) != 0 do
        FizzBuzz.check(x) == "Fizz"
      end
    end
  end

  property :buzz do
    for_all x in int() do
      implies rem(x, 3) != 0 and rem(x, 5) == 0 do
        FizzBuzz.check(x) == "Buzz"
      end
    end
  end

  property :fizz_buzz do
    for_all x in int() do
      implies rem(x, 3) == 0 and rem(x, 5) == 0 do
        FizzBuzz.check(x) == "FizzBuzz"
      end
    end
  end
end
