require_relative 'sorting_test_suite'

# for each elements for first
# if it bigger than the neighbor, swap 2 element
# The bigger element is, the bigger position in array it will be
class BubbleSort
  def sort(array)
    n = array.length
    i = 0

    while i < n - 1
      if array[i] > array[i + 1]
        array[i], array[i + 1] = array[i + 1], array[i]
        i = 0
      else
        i += 1
      end
    end

    array
  end
end

test_suite = SortingTestSuite.new(BubbleSort.new)
test_suite.run