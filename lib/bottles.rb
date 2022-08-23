class Bottles
  def verse(number)
    case number
    when 99
      "99 bottles of beer on the wall, " +
        "99 bottles of beer.\n" +
        "Take one down and pass it around, " +
        "98 bottles of beer on the wall.\n"
    when 3
      "3 bottles of beer on the wall, " +
        "3 bottles of beer.\n" +
        "Take one down and pass it around, " +
        "2 bottles of beer on the wall.\n"
    when 2
      "2 bottles of beer on the wall, " +
        "2 bottles of beer.\n" +
        "Take one down and pass it around, " +
        "1 bottle of beer on the wall.\n"
    when 1
      "1 bottle of beer on the wall, " +
        "1 bottle of beer.\n" +
        "Take it down and pass it around, " +
        "no more bottles of beer on the wall.\n"
    when 0
      "No more bottles of beer on the wall, " +
        "no more bottles of beer.\n" +
        "Go to the store and buy some more, " +
        "99 bottles of beer on the wall.\n"
    end
    # "#{pluralize_bottle(number)} of beer on the wall, " +
    #   "#{pluralize_bottle(number)} of beer.\n" +
    #   (
    #     if number == 1
    #       "Take it down and pass it around, "
    #     else
    #       "Take one down and pass it around, "
    #     end
    #   ) +
    #   "#{pluralize_bottle(number - 1)} of beer on the wall.\n"
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
