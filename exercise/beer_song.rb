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
    pronoun = num > 0 ? "one" : "it"
    "Take #{pronoun} down and pass it around, #{phrase(num)} of beer on the wall.\n"
  end

  def phrase(num)
    if num > 0
      "#{num} " + (num == 1 ? "bottle" : "bottles")
    else
      "no more bottles"
    end
  end

end
