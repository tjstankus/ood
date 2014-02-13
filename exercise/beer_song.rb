class BeerSong
  def verse(num)
    verse_first_line(num) + verse_second_line(num-1)
  end

  def verses(from, downto=0)
  end

  private

  def verse_first_line(num)
    "#{phrase(num)} of beer on the wall, #{phrase(num)} of beer.\n"
  end

  def verse_second_line(num)
    if num > 0
      "Take one down and pass it around, #{phrase(num)} of beer on the wall.\n"
    else
      "Take it down and pass it around, no more bottles of beer on the wall.\n"
    end
  end

  def phrase(num)
    "#{num} " + (num == 1 ? "bottle" : "bottles")
  end

end
