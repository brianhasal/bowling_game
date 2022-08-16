class BowlingGame

  def simple_test(array)
    total = 0
    array.each do |roll|
      if roll == '-'
        roll = 0
      end
      total += roll
    end
    return total
  end



end