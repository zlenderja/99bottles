class Bottles
  def verse(number)
    "#{pluralize_bottle(number)} of beer on the wall, " +
      "#{pluralize_bottle(number)} of beer.\n" +
      "Take one down and pass it around, " +
      "#{pluralize_bottle(number - 1)} of beer on the wall.\n"
  end

  private

  def pluralize_bottle(count)
    if count == 1
      "1 bottle"
    else
      "#{count} bottles"
    end
  end
end
