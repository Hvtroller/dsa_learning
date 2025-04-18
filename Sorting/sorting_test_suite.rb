class SortingTestSuite
  def initialize(sorter)
    @sorter = sorter
    @tests_passed = 0
    @tests_failed = 0
  end

  def run
    test("empty list", [], [])
    test("single element", [42], [42])
    test("already sorted", [1, 2, 3], [1, 2, 3])
    test("reverse sorted", [3, 2, 1], [1, 2, 3])
    test("unsorted list", [3, 1, 4, 1, 5], [1, 1, 3, 4, 5])
    test("with duplicates", [2, 3, 2, 1, 3], [1, 2, 2, 3, 3])
    test("with negatives", [-1, 2, 0, -5], [-5, -1, 0, 2])
    test("with floats", [3.1, 2.2, 5.5, 1.0], [1.0, 2.2, 3.1, 5.5])
    test("with strings", ["banana", "apple", "cherry"], ["apple", "banana", "cherry"])

    puts "\nTotal: #{@tests_passed + @tests_failed}, Passed: #{@tests_passed}, Failed: #{@tests_failed}"
  end

  def test(name, input_data, expected_output)
    begin
      output = @sorter.sort(input_data.dup)
      if output == expected_output
        puts "✅ #{name} passed"
        @tests_passed += 1
      else
        puts "❌ #{name} failed: expected #{expected_output.inspect}, got #{output.inspect}"
        @tests_failed += 1
      end
    rescue => e
      puts "❌ #{name} raised exception: #{e}"
      @tests_failed += 1
    end
  end
end
