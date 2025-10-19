# frozen_string_literal: true

class BinarySearch
  def run(elements, find_el)
    first = 0
    last = elements.size - 1
    while first <= last
      middle = (first + last) / 2

      if elements[middle] > find_el
        last = middle - 1
      elsif elements[middle] < find_el
        first = middle + 1
      else
        puts "Find #{middle}"
        break
      end
    end
  end
end

BinarySearch.new.run([0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23], 13)
