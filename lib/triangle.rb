class Triangle
  class TriangleError < StandardError
    def message
      "Lengths provided are invalid."
    end
  end
  attr_accessor :length1, :length2, :length3
  def initialize(length1, length2, length3)
    @length1=length1
    @length2=length2
    @length3=length3
  end
  def kind
    if (@length1>0&&@length2>0&&@length3>0)&&(@length1+@length2>@length3)
      if @length1==@length2&&@length2==@length3
        :equilateral
      elsif @length1==@length2 || @length2==@length3 || @length1==@length3
        :isosceles
      else
        :scalene
      end
    else
      begin
        raise TriangleError
      rescue TriangleError => error
        puts error.message
      end
    end
  end
end
