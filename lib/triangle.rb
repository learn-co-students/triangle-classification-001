require 'pry'
class Triangle

  attr_accessor :kind

  def initialize(side1, side2, side3)

    sides = [side1, side2, side3]
    unique_sides = [side1.to_f, side2.to_f, side3.to_f].uniq


    if unique_sides.any? {|x| x <= 0}
      begin
        raise TriangleError
      end
    end

    sides.permutation(3).to_a.each do |a|
      if a[0] + a[1] <= a[2]
        begin
          raise TriangleError
        end
      end
    end

    if unique_sides.count == 1
      self.kind = :equilateral
    elsif unique_sides.count == 2
      self.kind = :isosceles
    else
      self.kind = :scalene
    end

  end

end

class TriangleError < StandardError
  def message
    "Must be >0"
  end
end
