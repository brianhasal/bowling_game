endgame = [1,5,   4,4,    8,'/',    5,3,    'X',    'X',    2,3,    8,'/',    7,1,    'X',    5,4]

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
        p "Outer If #{total}"


      end
      frame_count += 2



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
      frame_count += 2




    elsif array[i] == '-'
      i += 1
      frame_count += 1
      p "Outer Second Elsif #{total}"




    else
      total += array[i]
      i += 1
      frame_count += 1
      p "Outer Else #{total}"
    end




    p "Frame Count #{frame_count}"
    p "##########################"
  end
  return total
end

p extra_frames(endgame)
