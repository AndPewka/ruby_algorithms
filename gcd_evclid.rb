# frozen_string_literal: true

class GcdEvclid
  def run(a, b)
    a = a.abs
    b = b.abs
    p [a, b]
    return a if b.zero?

    GcdEvclid.new.run b, a % b
  end
end

p GcdEvclid.new.run(1, 2)
