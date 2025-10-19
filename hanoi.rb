# frozen_string_literal: true

class Hanoi
  def run(n, from, to, aux)
    if n == 1
      puts "Перенести элемент #{n} от #{from} на #{to}"
      return
    end

    Hanoi.new.run n - 1, from, aux, to

    puts "Перенести элемент #{n} от #{from} на #{to}"

    Hanoi.new.run n - 1, aux, to, from
  end
end

Hanoi.new.run 5, 'A', 'C', 'B'
