require_relative 'sorting_test_suite'

# for each elements for first
# swap its position with smallest element in the rest of array
class SelectionSort
  def sort(array)
    n = array.length

    n.times do |i|
      min_idx = i

      for j in (i...n)
        if array[j] < array[min_idx]
          min_idx = j
        end
      end

      array[i], array[min_idx] = array[min_idx], array[i]
    end

    array
  end
end

test_suite = SortingTestSuite.new(SelectionSort.new)
test_suite.run