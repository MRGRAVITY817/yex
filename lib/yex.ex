defmodule Yex do
  @external_resource "README.md"

  @moduledoc "README.md"
             |> File.read!()
             |> String.split("<!-- MDOC -->")
             |> Enum.fetch!(1)

  @doc """
  Hello world.

  ## Examples

      iex> Yex.hello()
      :world

  """
  def hello do
    :world
  end
end
