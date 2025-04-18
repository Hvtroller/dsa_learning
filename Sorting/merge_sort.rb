require_relative 'sorting_test_suite'

# divide array to smaller array
# merge and sort each small piece
class MergeSort
  def sort(array)
    return array if array.length <= 1
  
    mid = array.length / 2
    left = sort(array[0...mid])
    right = sort(array[mid..-1])
  
    merge(left, right)
  end
  
  def merge(left, right)
    result = []
  
    until left.empty? || right.empty?
      if left.first <= right.first
        result << left.shift
      else
        result << right.shift
      end
    end
  
    result + left + right
  end  
end

test_suite = SortingTestSuite.new(MergeSort.new)
test_suite.run