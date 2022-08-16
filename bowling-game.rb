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

  def spares(array)
    total = 0
    i = 0
    while i < array.length
      if array[i + 1] == "/"
        total += 10 + array[i + 2]
        i += 2
      elsif array[i] == '-'
        i += 1
      else
        total += array[i]
        i += 1
      end
    end
    return total
  end

  def strikes_a(array)
    total = 0
    i = 0
    while i < array.length
      if array[i + 1] == "/"
        total += 10 + array[i + 2]
        i += 2
      elsif array[i] == "X"
        total += 10 + array[i + 1] + array[i + 2]
        i += 1
      elsif array[i] == '-'
        i += 1
      else
        total += array[i]
        i += 1
      end
    end
    return total
  end


end