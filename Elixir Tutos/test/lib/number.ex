defmodule Number do
  @spec is_pair?(integer()) :: boolean()
  def is_pair?(number) do
    rem(number, 2) == 0
  end
end
