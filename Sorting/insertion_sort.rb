require_relative 'sorting_test_suite'

# divide list into 2 part: sorted and unsorted
# for each iteration, take 1 element for unsorted part to insert into it's right position in sorted part
class InsertionSort
  def sort(array)
    n = array.length

    for i in (1...n)
      j = i - 1
      key = array[i]

      while j >= 0 && key < array[j]
        array[j + 1] = array[j]
        j -= 1
      end

      array[j + 1] = key
    end

    array
  end
end

test_suite = SortingTestSuite.new(InsertionSort.new)
test_suite.run