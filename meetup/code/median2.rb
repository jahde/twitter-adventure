def array_median(array)
  x = array.count
  n = x/(2.to_i)
  new_array = array[n-2..n+2]
  new_array.map! do |tweet|
    tweet[1]
  end
end