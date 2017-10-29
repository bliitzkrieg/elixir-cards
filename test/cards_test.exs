defmodule CardsTest do
  use ExUnit.Case
  doctest Cards

  test "create deck makes 52 cards" do
    deck_length = length(Cards.create_deck)
    assert deck_length == 52
  end

  test "shuffling a deck randomizes it" do
    deck = Cards.create_deck
    assert deck != Cards.shuffle(deck) # Could fail but highly unlikely
  end

  test "should return true if deck contains card" do
    deck = Cards.create_deck
    assert Cards.contains?(deck, "Ace of Spades")
  end

  test "should return false if deck does not contains card" do
    deck = Cards.create_deck
    assert !Cards.contains?(deck, "Ace of Cats")
  end
end
