defmodule Teenager do
  def hey(input) do
    cond do
      String.last(input) == "?" -> "Sure."
      String.strip(input) == "" -> "Fine. Be that way!"
      String.upcase(input) == input and String.downcase(input) != input -> "Woah, chill out!"
      true -> "Whatever."
    end
  end
end
