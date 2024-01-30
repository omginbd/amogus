defmodule ScrollHat.Font.Hachicro do
  @moduledoc """
  Hachicro font

  Transposed from https://github.com/pimoroni/scroll-phat-hd/blob/master/library/scrollphathd/fonts/fonthachicro.py
  """
  @behaviour ScrollHat.Font

  def char_matrix(char, brightness \\ 0xFF)

  def char_matrix(0x20, _b) do
    [
      [0x0],
      [0x0],
      [0x0],
      [0x0],
      [0x0],
      [0x0],
      [0x0]
    ]
  end

  def char_matrix(0x30, b) do
    [
      [b, b, b, b, b, b, b],
      [b, 0x0, 0x0, 0x0, 0x0, 0x0, b],
      [b, 0x0, b, b, b, 0x0, b],
      [b, 0x0, b, 0x0, b, 0x0, b],
      [b, 0x0, b, b, b, 0x0, b],
      [b, 0x0, 0x0, 0x0, 0x0, 0x0, b],
      [b, b, b, b, b, b, b]
    ]
  end

  def char_matrix(0x31, b) do
    [
      [b, b, b, b],
      [b, 0x0, 0x0, b],
      [b, b, 0x0, b],
      [0x0, b, 0x0, b],
      [0x0, b, 0x0, b],
      [0x0, b, 0x0, b],
      [0x0, b, b, b]
    ]
  end

  def char_matrix(0x32, b) do
    [
      [b, b, b, b, b, b, b],
      [b, 0x0, 0x0, 0x0, 0x0, 0x0, b],
      [b, b, b, b, b, 0x0, b],
      [b, 0x0, 0x0, 0x0, 0x0, 0x0, b],
      [b, 0x0, b, b, b, b, b],
      [b, 0x0, 0x0, 0x0, 0x0, 0x0, b],
      [b, b, b, b, b, b, b]
    ]
  end

  def char_matrix(0x33, b) do
    [
      [b, b, b, b, b, b, b],
      [b, 0x0, 0x0, 0x0, 0x0, 0x0, b],
      [b, b, b, b, b, 0x0, b],
      [b, 0x0, 0x0, 0x0, 0x0, 0x0, b],
      [b, b, b, b, b, 0x0, b],
      [b, 0x0, 0x0, 0x0, 0x0, 0x0, b],
      [b, b, b, b, b, b, b]
    ]
  end

  def char_matrix(0x34, b) do
    [
      [b, b, b, 0x0, b, b, b],
      [b, 0x0, b, 0x0, b, 0x0, b],
      [b, 0x0, b, b, b, 0x0, b],
      [b, 0x0, 0x0, 0x0, 0x0, 0x0, b],
      [b, b, b, b, b, 0x0, b],
      [0x0, 0x0, 0x0, 0x0, b, 0x0, b],
      [0x0, 0x0, 0x0, 0x0, b, b, b]
    ]
  end

  def char_matrix(0x35, b) do
    [
      [b, b, b, b, b, b, b],
      [b, 0x0, 0x0, 0x0, 0x0, 0x0, b],
      [b, 0x0, b, b, b, b, b],
      [b, 0x0, 0x0, 0x0, 0x0, 0x0, b],
      [b, b, b, b, b, 0x0, b],
      [b, 0x0, 0x0, 0x0, 0x0, 0x0, b],
      [b, b, b, b, b, b, b]
    ]
  end

  def char_matrix(0x36, b) do
    [
      [b, b, b, b, b, b, b],
      [b, 0x0, 0x0, 0x0, 0x0, 0x0, b],
      [b, 0x0, b, b, b, b, b],
      [b, 0x0, 0x0, 0x0, 0x0, 0x0, b],
      [b, 0x0, b, b, b, 0x0, b],
      [b, 0x0, 0x0, 0x0, 0x0, 0x0, b],
      [b, b, b, b, b, b, b]
    ]
  end

  def char_matrix(0x37, b) do
    [
      [b, b, b, b, b, b, b],
      [b, 0x0, 0x0, 0x0, 0x0, 0x0, b],
      [b, 0x0, b, b, b, 0x0, b],
      [b, b, b, 0x0, b, 0x0, b],
      [0x0, 0x0, 0x0, 0x0, b, 0x0, b],
      [0x0, 0x0, 0x0, 0x0, b, 0x0, b],
      [0x0, 0x0, 0x0, 0x0, b, b, b]
    ]
  end

  def char_matrix(0x38, b) do
    [
      [b, b, b, b, b, b, b],
      [b, 0x0, 0x0, 0x0, 0x0, 0x0, b],
      [b, 0x0, b, b, b, 0x0, b],
      [b, 0x0, 0x0, 0x0, 0x0, 0x0, b],
      [b, 0x0, b, b, b, 0x0, b],
      [b, 0x0, 0x0, 0x0, 0x0, 0x0, b],
      [b, b, b, b, b, b, b]
    ]
  end

  def char_matrix(0x39, b) do
    [
      [b, b, b, b, b, b, b],
      [b, 0x0, 0x0, 0x0, 0x0, 0x0, b],
      [b, 0x0, b, b, b, 0x0, b],
      [b, 0x0, 0x0, 0x0, 0x0, 0x0, b],
      [b, b, b, b, b, 0x0, b],
      [b, 0x0, 0x0, 0x0, 0x0, 0x0, b],
      [b, b, b, b, b, b, b]
    ]
  end

  def char_matrix(0x41, b) do
    [
      [0x0, b, b, b, b, b, 0x0],
      [b, b, 0x0, 0x0, 0x0, b, b],
      [b, 0x0, b, b, b, 0x0, b],
      [b, 0x0, 0x0, 0x0, 0x0, 0x0, b],
      [b, 0x0, b, b, b, 0x0, b],
      [b, 0x0, b, 0x0, b, 0x0, b],
      [b, b, b, 0x0, b, b, b]
    ]
  end

  def char_matrix(0x42, b) do
    [
      [b, b, b, b, b, b, 0x0],
      [b, 0x0, 0x0, 0x0, 0x0, b, b],
      [b, 0x0, b, b, b, 0x0, b],
      [b, 0x0, 0x0, 0x0, 0x0, b, b],
      [b, 0x0, b, b, b, 0x0, b],
      [b, 0x0, 0x0, 0x0, 0x0, b, b],
      [b, b, b, b, b, b, 0x0]
    ]
  end

  def char_matrix(0x43, b) do
    [
      [0x0, b, b, b, b, b, 0x0],
      [b, b, 0x0, 0x0, 0x0, b, b],
      [b, 0x0, b, b, b, 0x0, b],
      [b, 0x0, b, 0x0, b, b, b],
      [b, 0x0, b, b, b, 0x0, b],
      [b, b, 0x0, 0x0, 0x0, b, b],
      [0x0, b, b, b, b, b, 0x0]
    ]
  end

  def char_matrix(0x44, b) do
    [
      [b, b, b, b, b, b, 0x0],
      [b, 0x0, 0x0, 0x0, 0x0, b, b],
      [b, 0x0, b, b, b, 0x0, b],
      [b, 0x0, b, 0x0, b, 0x0, b],
      [b, 0x0, b, b, b, 0x0, b],
      [b, 0x0, 0x0, 0x0, 0x0, b, b],
      [b, b, b, b, b, b, 0x0]
    ]
  end

  def char_matrix(0x45, b) do
    [
      [b, b, b, b, b, b, b],
      [b, 0x0, 0x0, 0x0, 0x0, 0x0, b],
      [b, 0x0, b, b, b, b, b],
      [b, 0x0, 0x0, 0x0, 0x0, 0x0, b],
      [b, 0x0, b, b, b, b, b],
      [b, 0x0, 0x0, 0x0, 0x0, 0x0, b],
      [b, b, b, b, b, b, b]
    ]
  end

  def char_matrix(0x46, b) do
    [
      [b, b, b, b, b, b, b],
      [b, 0x0, 0x0, 0x0, 0x0, 0x0, b],
      [b, 0x0, b, b, b, b, b],
      [b, 0x0, 0x0, 0x0, 0x0, 0x0, b],
      [b, 0x0, b, b, b, b, b],
      [b, 0x0, b, 0x0, 0x0, 0x0, 0x0],
      [b, b, b, 0x0, 0x0, 0x0, 0x0]
    ]
  end

  def char_matrix(0x47, b) do
    [
      [b, b, b, b, b, b, b],
      [b, 0x0, 0x0, 0x0, 0x0, 0x0, b],
      [b, 0x0, b, b, b, b, b],
      [b, 0x0, b, 0x0, 0x0, 0x0, b],
      [b, 0x0, b, b, b, 0x0, b],
      [b, 0x0, 0x0, 0x0, 0x0, 0x0, b],
      [b, b, b, b, b, b, b]
    ]
  end

  def char_matrix(0x48, b) do
    [
      [b, b, b, 0x0, b, b, b],
      [b, 0x0, b, 0x0, b, 0x0, b],
      [b, 0x0, b, b, b, 0x0, b],
      [b, 0x0, 0x0, 0x0, 0x0, 0x0, b],
      [b, 0x0, b, b, b, 0x0, b],
      [b, 0x0, b, 0x0, b, 0x0, b],
      [b, b, b, 0x0, b, b, b]
    ]
  end

  def char_matrix(0x49, b) do
    [
      [b, b, b, b, b],
      [b, 0x0, 0x0, 0x0, b],
      [b, b, 0x0, b, b],
      [0x0, b, 0x0, b, 0x0],
      [b, b, 0x0, b, b],
      [b, 0x0, 0x0, 0x0, b],
      [b, b, b, b, b]
    ]
  end

  def char_matrix(0x4A, b) do
    [
      [0x0, 0x0, b, b, b, b, b],
      [0x0, 0x0, b, 0x0, 0x0, 0x0, b],
      [0x0, 0x0, b, b, 0x0, b, b],
      [b, b, b, b, 0x0, b, 0x0],
      [b, 0x0, b, b, 0x0, b, 0x0],
      [b, b, 0x0, 0x0, b, b, 0x0],
      [0x0, b, b, b, b, 0x0, 0x0]
    ]
  end

  def char_matrix(0x4B, b) do
    [
      [b, b, b, 0x0, b, b, b],
      [b, 0x0, b, b, b, 0x0, b],
      [b, 0x0, b, b, 0x0, b, b],
      [b, 0x0, 0x0, 0x0, b, b, 0x0],
      [b, 0x0, b, b, 0x0, b, b],
      [b, 0x0, b, b, b, 0x0, b],
      [b, b, b, 0x0, b, b, b]
    ]
  end

  def char_matrix(0x4C, b) do
    [
      [b, b, b, 0x0, 0x0, 0x0, 0x0],
      [b, 0x0, b, 0x0, 0x0, 0x0, 0x0],
      [b, 0x0, b, 0x0, 0x0, 0x0, 0x0],
      [b, 0x0, b, 0x0, b, b, b],
      [b, 0x0, b, b, b, 0x0, b],
      [b, 0x0, 0x0, 0x0, 0x0, 0x0, b],
      [b, b, b, b, b, b, b]
    ]
  end

  def char_matrix(0x4D, b) do
    [
      [b, b, b, 0x0, b, b, b],
      [b, 0x0, b, b, b, 0x0, b],
      [b, 0x0, 0x0, b, 0x0, 0x0, b],
      [b, 0x0, b, 0x0, b, 0x0, b],
      [b, 0x0, b, b, b, 0x0, b],
      [b, 0x0, b, 0x0, b, 0x0, b],
      [b, b, b, 0x0, b, b, b]
    ]
  end

  def char_matrix(0x4E, b) do
    [
      [b, b, b, 0x0, b, b, b],
      [b, 0x0, b, b, b, 0x0, b],
      [b, 0x0, 0x0, b, b, 0x0, b],
      [b, 0x0, b, 0x0, b, 0x0, b],
      [b, 0x0, b, b, 0x0, 0x0, b],
      [b, 0x0, b, b, b, 0x0, b],
      [b, b, b, 0x0, b, b, b]
    ]
  end

  def char_matrix(0x4F, b) do
    [
      [0x0, b, b, b, b, b, 0x0],
      [b, b, 0x0, 0x0, 0x0, b, b],
      [b, 0x0, b, b, b, 0x0, b],
      [b, 0x0, b, b, b, 0x0, b],
      [b, 0x0, b, b, b, 0x0, b],
      [b, b, 0x0, 0x0, 0x0, b, b],
      [0x0, b, b, b, b, b, 0x0]
    ]
  end

  def char_matrix(0x50, b) do
    [
      [b, b, b, b, b, b, 0x0],
      [b, 0x0, 0x0, 0x0, 0x0, b, b],
      [b, 0x0, b, b, b, 0x0, b],
      [b, 0x0, 0x0, 0x0, 0x0, b, b],
      [b, 0x0, b, b, b, b, 0x0],
      [b, 0x0, b, 0x0, 0x0, 0x0, 0x0],
      [b, b, b, 0x0, 0x0, 0x0, 0x0]
    ]
  end

  def char_matrix(0x51, b) do
    [
      [0x0, b, b, b, b, b, 0x0],
      [b, b, 0x0, 0x0, 0x0, b, b],
      [b, 0x0, b, b, b, 0x0, b],
      [b, 0x0, b, 0x0, b, 0x0, b],
      [b, 0x0, b, b, 0x0, b, b],
      [b, b, 0x0, 0x0, b, 0x0, b],
      [b, b, b, b, b, b, b]
    ]
  end

  def char_matrix(0x52, b) do
    [
      [b, b, b, b, b, b, 0x0],
      [b, 0x0, 0x0, 0x0, 0x0, b, b],
      [b, 0x0, b, b, b, 0x0, b],
      [b, 0x0, 0x0, 0x0, 0x0, b, b],
      [b, 0x0, b, 0x0, b, b, b],
      [b, 0x0, b, b, 0x0, 0x0, b],
      [b, b, b, b, b, b, b]
    ]
  end

  def char_matrix(0x53, b) do
    [
      [0x0, b, b, b, b, b, b],
      [b, b, 0x0, 0x0, 0x0, 0x0, b],
      [b, 0x0, b, b, b, b, b],
      [b, b, 0x0, 0x0, 0x0, b, b],
      [b, b, b, b, b, 0x0, b],
      [b, 0x0, 0x0, 0x0, 0x0, b, b],
      [b, b, b, b, b, b, 0x0]
    ]
  end

  def char_matrix(0x54, b) do
    [
      [b, b, b, b, b, b, b],
      [b, 0x0, 0x0, 0x0, 0x0, 0x0, b],
      [b, b, b, 0x0, b, b, b],
      [0x0, 0x0, b, 0x0, b, 0x0, 0x0],
      [0x0, 0x0, b, 0x0, b, 0x0, 0x0],
      [0x0, 0x0, b, 0x0, b, 0x0, 0x0],
      [0x0, 0x0, b, b, b, 0x0, 0x0]
    ]
  end

  def char_matrix(0x55, b) do
    [
      [b, b, b, 0x0, b, b, b],
      [b, 0x0, b, 0x0, b, 0x0, b],
      [b, 0x0, b, 0x0, b, 0x0, b],
      [b, 0x0, b, 0x0, b, 0x0, b],
      [b, 0x0, b, b, b, 0x0, b],
      [b, b, 0x0, 0x0, 0x0, b, b],
      [0x0, b, b, b, b, b, 0x0]
    ]
  end

  def char_matrix(0x56, b) do
    [
      [b, b, b, 0x0, b, b, b],
      [b, 0x0, b, 0x0, b, 0x0, b],
      [b, 0x0, b, 0x0, b, 0x0, b],
      [b, 0x0, b, b, b, 0x0, b],
      [b, b, 0x0, b, 0x0, b, b],
      [0x0, b, b, 0x0, b, b, 0x0],
      [0x0, 0x0, b, b, b, 0x0, 0x0]
    ]
  end

  def char_matrix(0x57, b) do
    [
      [b, b, b, 0x0, b, b, b],
      [b, 0x0, b, b, b, 0x0, b],
      [b, 0x0, b, 0x0, b, 0x0, b],
      [b, 0x0, b, 0x0, b, 0x0, b],
      [b, 0x0, 0x0, b, 0x0, 0x0, b],
      [b, 0x0, b, b, b, 0x0, b],
      [b, b, b, 0x0, b, b, b]
    ]
  end

  def char_matrix(0x58, b) do
    [
      [b, b, b, 0x0, b, b, b],
      [b, 0x0, b, b, b, 0x0, b],
      [b, b, 0x0, b, 0x0, b, b],
      [0x0, b, b, 0x0, b, b, 0x0],
      [b, b, 0x0, b, 0x0, b, b],
      [b, 0x0, b, b, b, 0x0, b],
      [b, b, b, 0x0, b, b, b]
    ]
  end

  def char_matrix(0x59, b) do
    [
      [b, b, b, 0x0, b, b, b],
      [b, 0x0, b, b, b, 0x0, b],
      [b, b, 0x0, b, 0x0, b, b],
      [0x0, b, b, 0x0, b, b, 0x0],
      [0x0, 0x0, b, 0x0, b, 0x0, 0x0],
      [0x0, 0x0, b, 0x0, b, 0x0, 0x0],
      [0x0, 0x0, b, b, b, 0x0, 0x0]
    ]
  end

  def char_matrix(0x5A, b) do
    [
      [b, b, b, b, b, b, b],
      [b, 0x0, 0x0, 0x0, 0x0, 0x0, b],
      [b, b, b, b, 0x0, b, b],
      [0x0, b, b, 0x0, b, b, 0x0],
      [b, b, 0x0, b, b, b, b],
      [b, 0x0, 0x0, 0x0, 0x0, 0x0, b],
      [b, b, b, b, b, b, b]
    ]
  end

  def char_matrix(0x61, b) do
    [
      [b, b, b, b, b, b, 0x0],
      [b, 0x0, 0x0, 0x0, 0x0, b, 0x0],
      [b, b, b, b, b, b, b],
      [b, b, 0x0, 0x0, 0x0, 0x0, b],
      [b, 0x0, b, b, b, 0x0, b],
      [b, b, 0x0, 0x0, 0x0, 0x0, b],
      [0x0, b, b, b, b, b, b]
    ]
  end

  def char_matrix(0x62, b) do
    [
      [b, b, b, 0x0, 0x0, 0x0, 0x0],
      [b, 0x0, b, b, b, b, 0x0],
      [b, 0x0, 0x0, 0x0, 0x0, b, b],
      [b, 0x0, b, b, b, 0x0, b],
      [b, 0x0, b, b, b, 0x0, b],
      [b, 0x0, 0x0, 0x0, 0x0, b, b],
      [b, b, b, b, b, b, 0x0]
    ]
  end

  def char_matrix(0x63, b) do
    [
      [0x0, b, b, b, b, b, b],
      [b, b, 0x0, 0x0, 0x0, 0x0, b],
      [b, 0x0, b, b, b, b, b],
      [b, 0x0, b, 0x0, 0x0, 0x0, 0x0],
      [b, 0x0, b, b, b, b, b],
      [b, b, 0x0, 0x0, 0x0, 0x0, b],
      [0x0, b, b, b, b, b, b]
    ]
  end

  def char_matrix(0x64, b) do
    [
      [0x0, 0x0, 0x0, 0x0, b, b, b],
      [0x0, b, b, b, b, 0x0, b],
      [b, b, 0x0, 0x0, 0x0, 0x0, b],
      [b, 0x0, b, b, b, 0x0, b],
      [b, 0x0, b, b, b, 0x0, b],
      [b, b, 0x0, 0x0, 0x0, 0x0, b],
      [0x0, b, b, b, b, b, b]
    ]
  end

  def char_matrix(0x65, b) do
    [
      [0x0, b, b, b, b, b, 0x0],
      [b, b, 0x0, 0x0, 0x0, b, b],
      [b, 0x0, b, b, b, 0x0, b],
      [b, 0x0, 0x0, 0x0, 0x0, b, b],
      [b, 0x0, 0x0, b, b, b, b],
      [b, b, 0x0, 0x0, 0x0, 0x0, b],
      [0x0, b, b, b, b, b, b]
    ]
  end

  def char_matrix(0x66, b) do
    [
      [0x0, 0x0, b, b, b, b, 0x0],
      [0x0, b, b, 0x0, 0x0, b, b],
      [b, b, 0x0, b, b, 0x0, b],
      [b, 0x0, 0x0, 0x0, b, b, b],
      [b, b, 0x0, b, b, b, 0x0],
      [0x0, b, 0x0, b, 0x0, 0x0, 0x0],
      [0x0, b, b, b, 0x0, 0x0, 0x0]
    ]
  end

  def char_matrix(0x67, b) do
    [
      [0x0, b, b, b, b, b, 0x0],
      [b, b, 0x0, 0x0, 0x0, b, b],
      [b, 0x0, b, b, b, 0x0, b],
      [b, b, 0x0, 0x0, 0x0, 0x0, b],
      [b, b, b, b, b, 0x0, b],
      [b, 0x0, 0x0, 0x0, 0x0, b, b],
      [b, b, b, b, b, b, 0x0]
    ]
  end

  def char_matrix(0x68, b) do
    [
      [b, b, b, 0x0, 0x0, 0x0, 0x0],
      [b, 0x0, b, 0x0, 0x0, 0x0, 0x0],
      [b, 0x0, b, b, b, b, 0x0],
      [b, 0x0, 0x0, 0x0, 0x0, b, b],
      [b, 0x0, b, b, b, 0x0, b],
      [b, 0x0, b, 0x0, b, 0x0, b],
      [b, b, b, 0x0, b, b, b]
    ]
  end

  def char_matrix(0x69, b) do
    [
      [b, b, b],
      [b, 0x0, b],
      [b, b, b],
      [b, 0x0, b],
      [b, 0x0, b],
      [b, 0x0, b],
      [b, b, b]
    ]
  end

  def char_matrix(0x6A, b) do
    [
      [0x0, 0x0, b, b, b],
      [0x0, 0x0, b, 0x0, b],
      [0x0, 0x0, b, b, b],
      [0x0, 0x0, b, 0x0, b],
      [b, b, b, 0x0, b],
      [b, 0x0, 0x0, b, b],
      [b, b, b, b, 0x0]
    ]
  end

  def char_matrix(0x6B, b) do
    [
      [b, b, b, 0x0, 0x0, 0x0, 0x0],
      [b, 0x0, b, 0x0, b, b, b],
      [b, 0x0, b, 0x0, b, 0x0, b],
      [b, 0x0, b, b, b, 0x0, b],
      [b, 0x0, 0x0, 0x0, 0x0, b, b],
      [b, 0x0, b, b, b, 0x0, b],
      [b, b, b, 0x0, b, b, b]
    ]
  end

  def char_matrix(0x6C, b) do
    [
      [b, b, b, 0x0],
      [b, 0x0, b, 0x0],
      [b, 0x0, b, 0x0],
      [b, 0x0, b, 0x0],
      [b, 0x0, b, b],
      [b, b, 0x0, b],
      [0x0, b, b, b]
    ]
  end

  def char_matrix(0x6D, b) do
    [
      [b, b, b, b, b, b, 0x0],
      [b, 0x0, 0x0, 0x0, 0x0, b, b],
      [b, 0x0, b, 0x0, b, 0x0, b],
      [b, 0x0, b, 0x0, b, 0x0, b],
      [b, 0x0, b, 0x0, b, 0x0, b],
      [b, 0x0, b, 0x0, b, 0x0, b],
      [b, b, b, b, b, b, b]
    ]
  end

  def char_matrix(0x6E, b) do
    [
      [b, b, b, b, b, b, 0x0],
      [b, 0x0, 0x0, 0x0, 0x0, b, b],
      [b, 0x0, b, b, b, 0x0, b],
      [b, 0x0, b, 0x0, b, 0x0, b],
      [b, 0x0, b, 0x0, b, 0x0, b],
      [b, 0x0, b, 0x0, b, 0x0, b],
      [b, b, b, 0x0, b, b, b]
    ]
  end

  def char_matrix(0x6F, b) do
    [
      [0x0, 0x0, b, b, b, 0x0, 0x0],
      [0x0, b, b, 0x0, b, b, 0x0],
      [b, b, 0x0, b, 0x0, b, b],
      [b, 0x0, b, b, b, 0x0, b],
      [b, b, 0x0, b, 0x0, b, b],
      [0x0, b, b, 0x0, b, b, 0x0],
      [0x0, 0x0, b, b, b, 0x0, 0x0]
    ]
  end

  def char_matrix(0x70, b) do
    [
      [b, b, b, b, b, b, 0x0],
      [b, 0x0, 0x0, 0x0, 0x0, b, b],
      [b, 0x0, b, b, b, 0x0, b],
      [b, 0x0, b, b, b, 0x0, b],
      [b, 0x0, 0x0, 0x0, 0x0, b, b],
      [b, 0x0, b, b, b, b, 0x0],
      [b, b, b, 0x0, 0x0, 0x0, 0x0]
    ]
  end

  def char_matrix(0x71, b) do
    [
      [0x0, b, b, b, b, b, b],
      [b, b, 0x0, 0x0, 0x0, 0x0, b],
      [b, 0x0, b, b, b, 0x0, b],
      [b, 0x0, b, b, b, 0x0, b],
      [b, b, 0x0, 0x0, 0x0, 0x0, b],
      [0x0, b, b, b, b, 0x0, b],
      [0x0, 0x0, 0x0, 0x0, b, b, b]
    ]
  end

  def char_matrix(0x72, b) do
    [
      [b, b, b, b, b, b, 0x0],
      [b, 0x0, b, 0x0, 0x0, b, b],
      [b, 0x0, 0x0, b, b, 0x0, b],
      [b, 0x0, b, b, b, b, b],
      [b, 0x0, b, 0x0, 0x0, 0x0, 0x0],
      [b, 0x0, b, 0x0, 0x0, 0x0, 0x0],
      [b, b, b, 0x0, 0x0, 0x0, 0x0]
    ]
  end

  def char_matrix(0x73, b) do
    [
      [0x0, b, b, b, b, b, 0x0],
      [b, b, 0x0, 0x0, 0x0, b, 0x0],
      [b, 0x0, b, b, b, b, 0x0],
      [b, b, 0x0, 0x0, 0x0, b, b],
      [0x0, b, b, b, b, 0x0, b],
      [0x0, b, 0x0, 0x0, 0x0, b, b],
      [0x0, b, b, b, b, b, b]
    ]
  end

  def char_matrix(0x74, b) do
    [
      [0x0, b, b, b, 0x0, 0x0, 0x0],
      [b, b, 0x0, b, b, b, 0x0],
      [b, 0x0, 0x0, 0x0, 0x0, b, 0x0],
      [b, b, 0x0, b, b, b, b],
      [0x0, b, 0x0, b, b, 0x0, b],
      [0x0, b, b, 0x0, 0x0, b, b],
      [0x0, 0x0, b, b, b, b, 0x0]
    ]
  end

  def char_matrix(0x75, b) do
    [
      [b, b, b, 0x0, b, b, b],
      [b, 0x0, b, 0x0, b, 0x0, b],
      [b, 0x0, b, 0x0, b, 0x0, b],
      [b, 0x0, b, 0x0, b, 0x0, b],
      [b, 0x0, b, b, b, 0x0, b],
      [b, b, 0x0, 0x0, 0x0, 0x0, b],
      [0x0, b, b, b, b, b, b]
    ]
  end

  def char_matrix(0x76, b) do
    [
      [b, b, b, 0x0, b, b, b],
      [b, 0x0, b, 0x0, b, 0x0, b],
      [b, 0x0, b, 0x0, b, 0x0, b],
      [b, 0x0, b, b, b, 0x0, b],
      [b, 0x0, b, 0x0, 0x0, b, b],
      [b, 0x0, 0x0, b, b, b, 0x0],
      [b, b, b, b, 0x0, 0x0, 0x0]
    ]
  end

  def char_matrix(0x77, b) do
    [
      [b, b, b, b, b, b, b],
      [b, 0x0, b, 0x0, b, 0x0, b],
      [b, 0x0, b, 0x0, b, 0x0, b],
      [b, 0x0, b, 0x0, b, 0x0, b],
      [b, 0x0, b, 0x0, b, 0x0, b],
      [b, b, 0x0, 0x0, 0x0, 0x0, b],
      [b, b, b, b, b, b, b]
    ]
  end

  def char_matrix(0x78, b) do
    [
      [b, b, b, b, b, b, b],
      [b, 0x0, 0x0, b, 0x0, 0x0, b],
      [b, b, b, 0x0, b, b, b],
      [0x0, b, 0x0, b, 0x0, b, 0x0],
      [b, b, b, 0x0, b, b, b],
      [b, 0x0, 0x0, b, 0x0, 0x0, b],
      [b, b, b, b, b, b, b]
    ]
  end

  def char_matrix(0x79, b) do
    [
      [b, b, b, 0x0, b, b, b],
      [b, 0x0, b, 0x0, b, 0x0, b],
      [b, 0x0, b, b, b, 0x0, b],
      [b, b, 0x0, 0x0, 0x0, 0x0, b],
      [0x0, b, b, b, b, 0x0, b],
      [0x0, b, 0x0, 0x0, 0x0, b, b],
      [0x0, b, b, b, b, b, 0x0]
    ]
  end

  def char_matrix(0x7A, b) do
    [
      [b, b, b, b, b, b, b],
      [b, 0x0, 0x0, 0x0, 0x0, 0x0, b],
      [b, b, b, b, b, 0x0, b],
      [b, b, 0x0, 0x0, 0x0, b, b],
      [b, 0x0, b, b, b, b, b],
      [b, 0x0, 0x0, 0x0, 0x0, 0x0, b],
      [b, b, b, b, b, b, b]
    ]
  end
end
