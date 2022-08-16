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
      if array[i] == '-'
        roll = 0
        total += roll
        i += 1
      elsif roll == '/'
        

      end
      total += roll
    end
    return total

    # i = 0
    # while i < array.length
    #   if array[i] == '-'
    #     roll = 0
    #     total += roll
    #     i += 1
    #   elsif array[i + 1] == "/"
    #     roll = 10 + array[i + 2]
    #     total += roll
    #     i += 2
    #   else
    #     total += array[i]
    #     i += 1
    #   end
      
    
    end
    return total
  end



end