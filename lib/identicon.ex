defmodule Identicon do
  def main(input) do
    input
    |> hash_input
    |> pick_color
    |> build_grid
    |> mirror_row
  end

  def build_grid(%Identicon.Image{hex: hex} = image) do
    hex
    |> Enum.chunk_every(3)
   
  end

  def mirror_row(incomplete_grid) do
    for [a,b,c] <- incomplete_grid, do:[a,b,c,b,a]
  end
  end

  end

  def pick_color(image) do
    %Identicon.Image{hex: [r,g,b | _tail]} = image

    %Identicon.Image{image | color: {r,g,b}}
  end

  def hash_input(input) do
    hex = :crypto.hash(:md5, input)
    |> :binary.bin_to_list

    %Identicon.Image{hex: hex}
  end
end
