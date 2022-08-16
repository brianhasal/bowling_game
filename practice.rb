pins = [1,5,  4,4,  8,'/',  5,3,  '-','-',  4,5,  2,3,  8,'/',  7,1,  1,1]

def spares(array)
  total = 0
  i = 0
  while i < array.length
    if array[i + 1] == "/"
      total += 10 + array[i + 2]
      i += 2
      p "First #{total}"
    elsif array[i] == '-'
      i += 1
      p "Second #{total}"

    else
      total += array[i]
      i += 1
      p "Third #{total}"

    end
  end
  return total
end

p spares(pins)