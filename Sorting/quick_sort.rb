require_relative 'sorting_test_suite'

# divide array into 2 part with pivot in middle
# sort each array then merge with pavot
class QuickSort
  def sort(array)
    return array if array.length <= 1
  
    pivot = array[0]
    left  = array[1..].select { |x| x <= pivot }
    right = array[1..].select { |x| x > pivot }
  
    sort(left) + [pivot] + sort(right)
  end
end

test_suite = SortingTestSuite.new(QuickSort.new)
test_suite.run