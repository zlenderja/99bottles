class Bottles
  def verse(number)
    if number == 0
      "No more bottles of beer on the wall, " +
        "no more bottles of beer.\n" +
        "Go to the store and buy some more, " +
        "99 bottles of beer on the wall.\n"
    elsif number == 1
      "1 bottle of beer on the wall, " +
        "1 bottle of beer.\n" +
        "Take it down and pass it around, " +
        "no more bottles of beer on the wall.\n"
    else
      "#{number} bottles of beer on the wall, " +
        "#{number} bottles of beer.\n" +
        "Take one down and pass it around, " +
        "#{pluralize_bottle(number-1)} of beer on the wall.\n"
    end
  end

  def verses(first, last)
    verses = (last..first).to_a.map do |number|
      verse(number)
    end
    verses.reverse.join("\n")
  end

  def song
    verses(99, 0)
  end

  private

  def pluralize_bottle(count)
    if count == 0
      "no more bottles"
    elsif count == 1
      "1 bottle"
    else
      "#{count} bottles"
    end
  end
end
