class VerseStrategy

  def verse(num)
    "#{num} bottles of beer on the wall, #{num} bottles of beer.\n" +
    "Take one down and pass it around, #{num-1} bottles of beer on the wall.\n"
  end

end

class BeerSong

  def initialize
    @strategy = VerseStrategy.new
  end

  def verse(num)
    @strategy.verse(num)
  end

  def verses(from, downto=0)
  end
end
