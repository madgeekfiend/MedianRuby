# This program starts with an array of values sequential numeric values with 5 elements. This shows different
# ways to get the median of the array. One is to sort the array first using a simple O(n^2) bubble sort, my own implementation
# after reading it on Wikipedia http://en.wikipedia.org/wiki/Bubble_sort
#
# The next method is to not sort the array pick an arbitrary element, random, and determine if that is the median.

# Sort an array using the easiest to implement sorting function. This is bubblesort a naive approach where you compare
# the element of an array with the element next to it if the value is bigger swap it. It iterates through the loop until
# nothing is looped back
def bubblesort( unsorted )
  swapped = true
  while (swapped )
    swapped = false
    unsorted.each_with_index {
      |value,index|
      storage = 0
      if ( unsorted[index+1] )
        if value > unsorted[index+1]
          storage = value
          unsorted[index] = unsorted[index+1]
          unsorted[index+1] = storage
          swapped = true
        end
      end
    }
  end
  unsorted
end

# Pass in an array and return the median
def median( arrayofvalues )
  count = arrayofvalues.length
  if arrayofvalues.length%2 == 0 # It is even so return the average of the middle elements
    key = arrayofvalues.length/2
    key.round
    median = (arrayofvalues[key] + arrayofvalues[key-1])/2.to_f
  else
    # It's not even so return the element sup
    key = arrayofvalues.length/2
    key.round
    arrayofvalues[key]
  end
end

puts "Calculate the Median of an array of numbers without using built in functions. We will start with an unsorted array."
array = [2,1,3,5,4]
puts "Array [" + array.join(',') + "]"
sortedarray = bubblesort array
puts "Sorted array [" + sortedarray.join(',') + "]"
puts "Median of Array: [" + median(sortedarray).to_s + "]"
array2 = [4,6,5,7,2,3]
puts "Array 2 with even number elements [" + array2.join(',') + "]"
sortedarray = bubblesort array2
puts "Sorted array [" + sortedarray.join(',') + "]"
puts "Median of array: [" + median(sortedarray).to_s + "]"