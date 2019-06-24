defmodule FizzBuzzTest do
  use ExUnit.Case
  doctest FizzBuzz

  test "greets the world" do
    assert [:ok | _] = FizzBuzz.fizzbuzz(2..50)
  end

  # "FizzBuzz" | "Buzz" | "Fizz" | integer()
  test "testing for FizzBuzz output" do
    assert "FizzBuzz" == FizzBuzz.conditional(45)
    assert "FizzBuzz" == FizzBuzz.conditional(30)
    assert "FizzBuzz" == FizzBuzz.conditional(15)
    refute "FizzBuzz" == FizzBuzz.conditional(3)
    refute "FizzBuzz" == FizzBuzz.conditional(5)
  end

  test "testing for Buzz output" do
    assert "Buzz" == FizzBuzz.conditional(5)
    assert "Buzz" == FizzBuzz.conditional(10)
    assert "Buzz" == FizzBuzz.conditional(20)
    refute "Buzz" == FizzBuzz.conditional(3)
    refute "Buzz" == FizzBuzz.conditional(30)
  end
end
