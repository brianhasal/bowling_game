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
        total = 20 + array[i + 2]
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