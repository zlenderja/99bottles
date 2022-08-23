class Bottles
  def verse(number)
    "#{pluralize_bottle(number)} of beer on the wall, " +
      "#{pluralize_bottle(number)} of beer.\n" +
      (
        if number == 1
          "Take it down and pass it around, "
        else
          "Take one down and pass it around, "
        end
      ) +
      "#{pluralize_bottle(number - 1)} of beer on the wall.\n"
  end

  private

  def pluralize_bottle(count)
    if count == 1
      "1 bottle"
    elsif count == 0
      "no more bottles"
    else
      "#{count} bottles"
    end
  end
end
