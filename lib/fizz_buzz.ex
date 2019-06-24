defmodule FizzBuzz do
  @type fizzbuzz_range() :: Range.t()
  @type fizzbuzz_outputs() :: String.t() | integer()
  @spec fizzbuzz(fizzbuzz_range()) :: list()

  def fizzbuzz(range) do
    Enum.map(range, fn x -> conditional(x) |> IO.puts() end)
  end

  @spec conditional(integer()) :: fizzbuzz_outputs()

  def conditional(x) when rem(x, 3) == 0 and rem(x, 5) == 0 do
    IO.puts(x)
    "FizzBuzz"
  end

  def conditional(x) when rem(x, 5) == 0, do: "Buzz"

  def conditional(x) when rem(x, 3) == 0, do: "Fizz"

  def conditional(x), do: x
end
