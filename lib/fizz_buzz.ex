defmodule FizzBuzz do
  def check(x) do
    cond do
      rem(x, 3) == 0 and rem(x, 5) == 0 ->
        "FizzBuzz"
      rem(x, 3) == 0 ->
        "Fizz"
      rem(x, 5) == 0 ->
        "Buzz"
      true ->
        Integer.to_string(x)
    end
  end
end
