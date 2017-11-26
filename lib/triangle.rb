class Triangle
    attr_accessor :kind
    
    def initialize(a, b, c)
        if a == 0 || b == 0 || c == 0 || a+b<=c || a+c<=b || b+c<=a
            raise TriangleError
        end
        
        if a == b && a == c
            @kind = :equilateral
        elsif a != b && b != c && a != c
            @kind = :scalene
        else
            @kind = :isosceles
        end
    end
end

class TriangleError < StandardError
end