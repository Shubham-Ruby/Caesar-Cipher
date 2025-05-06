# Pseudo code - stockpicker
# checks first index and adjacent index and swaps if the first index is higher. 
# returns sorted array 

require 'pry-byebug'

def bubble_sort (array) 
  first_loop_freq = array.length 
  sort_complete = 0 

  
  while sort_complete == 0 
    sort_complete = 1 
    for index in 0..(first_loop_freq-2) do
       
      first_element= array[index]
      second_element = array[index + 1]

      if first_element >  second_element
        array[index] = second_element
        array[index+1] = first_element
        sort_complete = 0 
      end
    end
  end
  return array
end


puts bubble_sort([4,3,78,2,0,2])