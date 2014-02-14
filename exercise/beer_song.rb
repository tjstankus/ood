class VerseStrategy
  def self.verse(num)
    "#{num} bottles of beer on the wall, #{num} bottles of beer.\n" +
    "Take one down and pass it around, #{num-1} bottles of beer on the wall.\n"
  end
end

class VerseTwoStrategy
  def self.verse
    "2 bottles of beer on the wall, 2 bottles of beer.\n" +
    "Take one down and pass it around, 1 bottle of beer on the wall.\n"
  end
end

class Verse1Strategy
  def self.verse
    "1 bottle of beer on the wall, 1 bottle of beer.\n" +
    "Take it down and pass it around, no more bottles of beer on the wall.\n"
  end
end

class BeerSong

  VERSE_STRATEGIES = {
    2 => VerseTwoStrategy.verse,
    1 => Verse1Strategy.verse
  }

  def verse(num)
    verse_via_strategy(num)
  end

  def verses(from, downto=0)
  end

  private

  def verse_via_strategy(num)
    VERSE_STRATEGIES.fetch(num, VerseStrategy.verse(num))
  end

end
