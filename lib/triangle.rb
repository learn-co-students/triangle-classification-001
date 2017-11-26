class Triangle

  def initialize(side1, side2, side3)
    @side1 = side1
    @side2 = side2
    @side3 = side3
  end

  def kind
    test1 = @side1 <= 0 || @side2 <= 0 || @side3 <= 0
    test2 = @side1 + @side2 <= @side3 || @side1 + @side3 <= @side2 || @side2 + @side3 <= @side1
    if test1 || test2
      raise TriangleError
    else
       if @side1 == @side2 && @side1 == @side3
         :equilateral
       elsif @side1 == @side2 || @side1 == @side3 || @side2 == @side3
         :isosceles
       else
        :scalene
       end
     end
   end

end

class TriangleError < StandardError
end