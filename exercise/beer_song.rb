class VerseStrategy
  def verse(num)
    "#{num} bottles of beer on the wall, #{num} bottles of beer.\n" +
    "Take one down and pass it around, #{num-1} bottles of beer on the wall.\n"
  end
end

class VerseTwoStrategy
  def verse(num)
    "2 bottles of beer on the wall, 2 bottles of beer.\n" +
    "Take one down and pass it around, 1 bottle of beer on the wall.\n"
  end
end

class BeerSong

  VERSE_STRATEGIES = {
    2 => VerseTwoStrategy
  }

  def verse(num)
    verse_strategy(num).verse(num)
  end

  def verses(from, downto=0)
  end

  private

  def verse_strategy(num)
    VERSE_STRATEGIES.fetch(num, VerseStrategy).new
  end

end
