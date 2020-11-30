defmodule Number do
  @moduledoc """
  Documentation for `Number`.
  Permet de fire des tests sur les nombres

  """

  @doc """
  Hello world.
  Vérifie si un nombre est pair
  vérifie si un nombre est premier
  Trouve le premiier nombre premier d'une liste

  ## Examples

      iex> Number.hello()
      :world

      iex> Number.is_pair?(14)
      true

      iex> Number.is_pair?(3)
      false

      iex> Number.is_prime?(29)
      true

      iex> Number.is_prime(14)
      false

      iex> Number.first_prime([2, 14, 29, 12, 3])
      29

      ie> Number.first_prime([10, 6, 9])
      nil

  """
  def hello do
    :world
  end

  @spec is_pair?(integer()) :: boolean()
  def is_pair?(number) do
    rem(number, 2) == 0
  end

  @spec is_prime?(integer()) :: boolean()
  def is_prime?(number) do
    is_prime?(number, number - 1)
  end
  defp is_prime?(number, 2), do: rem(number, 2) != 0
  defp is_prime?(number, divider) do
    if rem(number, divider) == 0 do
      false
    else
      is_prime?(number, divider - 1)
    end
  end

  @spec first_prime(list(integer())) :: integer()
  def first_prime(numbers) do
    numbers
      |> Enum.filter(fn (number) -> is_prime?(number) end)
      |> List.first
  end

end
