require 'rspec'
require_relative '../exercise/beer_song'

describe BeerSong do

  let(:beer_song) { BeerSong.new }

  describe "#verse" do

    context "for multiple bottles of beer" do
      it "sings verse correctly" do
        expected = "8 bottles of beer on the wall, 8 bottles of beer.\n" +
          "Take one down and pass it around, 7 bottles of beer on the wall.\n"
        expect(beer_song.verse(8)).to eq(expected)
      end
    end

    context "for 2 bottles of beer" do
      it "singularizes second part of verse" do
        expected = "2 bottles of beer on the wall, 2 bottles of beer.\n" +
          "Take one down and pass it around, 1 bottle of beer on the wall.\n"
        expect(beer_song.verse(2)).to eq(expected)
      end
    end

    context "for 1 bottle of beer" do
      it "delivers sad news for second part of verse" do
        expected = "1 bottle of beer on the wall, 1 bottle of beer.\n" +
          "Take it down and pass it around, no more bottles of beer on the wall.\n"
        expect(beer_song.verse(1)).to eq(expected)
      end
    end

    context "for 0 bottles of beer" do
      it "instructs to buy more" do
        expected = "No more bottles of beer on the wall, no more bottles of beer.\n" +
          "Go to the store and buy some more, 99 bottles of beer on the wall.\n"
        expect(beer_song.verse(0)).to eq(expected)
      end
    end

  end

  describe "#verses" do

    context "given two numbers, the first greater than the second" do
      it "sings verses from the first number down to the second" do
        expected = "8 bottles of beer on the wall, 8 bottles of beer.\n" +
          "Take one down and pass it around, 7 bottles of beer on the wall.\n\n" +
          "7 bottles of beer on the wall, 7 bottles of beer.\n" +
          "Take one down and pass it around, 6 bottles of beer on the wall.\n\n" +
          "6 bottles of beer on the wall, 6 bottles of beer.\n" +
          "Take one down and pass it around, 5 bottles of beer on the wall.\n\n"
        expect(beer_song.verses(8, 6)).to eq(expected)
      end
    end

    context "given a single number" do
      it "sings down to 0" do
        expected = "3 bottles of beer on the wall, 3 bottles of beer.\n" +
          "Take one down and pass it around, 2 bottles of beer on the wall.\n\n" +
          "2 bottles of beer on the wall, 2 bottles of beer.\n" +
          "Take one down and pass it around, 1 bottle of beer on the wall.\n\n" +
          "1 bottle of beer on the wall, 1 bottle of beer.\n" +
          "Take it down and pass it around, no more bottles of beer on the wall.\n\n" +
          "No more bottles of beer on the wall, no more bottles of beer.\n" +
          "Go to the store and buy some more, 99 bottles of beer on the wall.\n\n"
        expect(beer_song.verses(3)).to eq(expected)
      end
    end

  end

end

