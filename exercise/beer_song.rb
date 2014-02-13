class BeerSong
  def verse(num)
    "#{num} bottles of beer on the wall, #{num} bottles of beer.\n" +
    verse_second_line(num-1)
  end

  def verses(from, downto=0)
  end

  private

  def verse_second_line(num)
    "Take one down and pass it around, #{phrase(num)} of beer on the wall.\n"
  end

  def phrase(num)
    "#{num} " + (num == 1 ? "bottle" : "bottles")
  end

end
