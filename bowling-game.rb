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

  def run_marks(array)
    total = 0
    i = 0
    while i < array.length
      if array[i + 1] == "/"
        total += 10 + array[i + 2]
        i += 2
      elsif array[i] == "X"
        if array [i + 2] == '/'
          total += 20
        else
          total += 10 + array[i + 1] + array[i + 2]
        end
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

  def run_strike(array)
    total = 0
    i = 0
    while i < array.length
      if array[i + 1] == "/"
        total += 10 + array[i + 2]
        i += 2
      elsif array[i] == "X"
        if array [i + 2] == '/'
          total += 20
        elsif array[i + 1] == 'X'
          total += 20 + array[i + 2]
        else
          total += 10 + array[i + 1] + array[i + 2]
        end
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

  def late_strike(array)
    total = 0
    i = 0
    while i < array.length
      if array[i + 1] == "/"
        if array[i + 2] == 'X'
          total += 20
          i += 2
        else
          total += 10 + array[i + 2]
          i += 2
          p "Outer If #{total}"
        end
      elsif array[i] == "X"
        if array [i + 2] == '/'
          total += 20
          p "Inner Elsif If #{total}"
        elsif array[i + 1] == 'X'
          total += 20 + array[i + 2]
          p "Inner Elsif Elsif #{total}"
        else
          total += 10 + array[i + 1] + array[i + 2]
          p "Inner Elsif Else #{total}"
        end
        i += 1
      elsif array[i] == '-'
        i += 1
        p "Outer Second Elsif #{total}"
      else
        total += array[i]
        i += 1
        p "Outer Else #{total}"
  
      end
    end
    return total
  end


end