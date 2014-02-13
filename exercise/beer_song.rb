class BeerSong
  def verse(num)
    "#{num} bottles of beer on the wall, #{num} bottles of beer.\n" +
    verse_second_line(num-1)
  end

  def verses(from, downto=0)
  end

  private

  def verse_second_line(num)
    if num == 1
      "Take one down and pass it around, #{num} bottle of beer on the wall.\n"
    else
      "Take one down and pass it around, #{num} bottles of beer on the wall.\n"
    end
  end

end
