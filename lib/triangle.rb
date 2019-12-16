class Triangle
  class TriangleError < StandardError
    p "Lengths provided are invalid."
  end
  attr_accessor :length1, :length2, :length3
  def initialize(length1, length2, length3)
    @length1=length1
    @length2=length2
    @length3=length3
  end
  def legal?
    @
  def kind
    if self.legal? == true
      if @length1==@length2&&@length2==@length3
        :equilateral
      elsif @length1==@length2 || @length2==@length3 || @length1==@length3
        :isosceles
      else
        :scalene
      end
    else
        raise TriangleError
    end
  end
end
