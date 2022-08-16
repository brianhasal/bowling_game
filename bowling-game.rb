class BowlingGame

  def bowling(array)
    total = 0
    i = 0
    frame_count = 0

    while i < array.length && frame_count < 20
      if array[i + 1] == "/"
        if array[i + 2] == 'X'
          total += 20
          i += 2

        else
          total += 10 + array[i + 2]
          i += 2
        end
        frame_count += 2
  
      elsif array[i] == "X"
        if array [i + 2] == '/'
          total += 20

        elsif array[i + 1] == 'X'
          if array[i + 2] == 'X'
            total += 30

          else
            total += 20 + array[i + 2]
          end

        else
          total += 10 + array[i + 1] + array[i + 2]
        end
        i += 1
        frame_count += 2
  
      elsif array[i] == '-'
        i += 1
        frame_count += 1

      else
        total += array[i]
        i += 1
        frame_count += 1
      end
  
    end
    return total
  end

############################################

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
        end
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

  def extra_frames(array)
    total = 0
    i = 0
    frame_count = 0
    while i < array.length && frame_count < 20
  
      if array[i + 1] == "/"
        if array[i + 2] == 'X'
          total += 20
          i += 2
        else
          total += 10 + array[i + 2]
          i += 2
        end
        frame_count += 2
  
      elsif array[i] == "X"
        if array [i + 2] == '/'
          total += 20
        elsif array[i + 1] == 'X'
          total += 20 + array[i + 2]
        else
          total += 10 + array[i + 1] + array[i + 2]
        end
        i += 1
        frame_count += 2

      elsif array[i] == '-'
        i += 1
        frame_count += 1
  
      else
        total += array[i]
        i += 1
        frame_count += 1
      end

    end
    return total
  end
  
  def triple_x(array)
    total = 0
    i = 0
    frame_count = 0
    while i < array.length && frame_count < 20
  
      if array[i + 1] == "/"
        if array[i + 2] == 'X'
          total += 20
          i += 2
        else
          total += 10 + array[i + 2]
          i += 2
        end
        frame_count += 2
  
      elsif array[i] == "X"
        if array [i + 2] == '/'
          total += 20
        elsif array[i + 1] == 'X'
          if array[i + 2] == 'X'
            total += 30
          else
            total += 20 + array[i + 2]
          end
        else
          total += 10 + array[i + 1] + array[i + 2]
        end
        i += 1
        frame_count += 2

      elsif array[i] == '-'
        i += 1
        frame_count += 1
  
      else
        total += array[i]
        i += 1
        frame_count += 1
      end

    end
    return total
  end
  
  def tricky_finish(array)
    total = 0
    i = 0
    frame_count = 0
    while i < array.length && frame_count < 20
      if array[i + 1] == "/"
        if array[i + 2] == 'X'
          total += 20
          i += 2
        else
          total += 10 + array[i + 2]
          i += 2
        end
        frame_count += 2
      elsif array[i] == "X"
        if array [i + 2] == '/'
          total += 20
        elsif array[i + 1] == 'X'
          if array[i + 2] == 'X'
            total += 30
          else
            total += 20 + array[i + 2]
          end
        else
          total += 10 + array[i + 1] + array[i + 2]
        end
        i += 1
        frame_count += 2
      elsif array[i] == '-'
        i += 1
        frame_count += 1
      else
        total += array[i]
        i += 1
        frame_count += 1
      end
    end
    return total
  end

end