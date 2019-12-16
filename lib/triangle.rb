class Triangle
  attr_accessor :length1, :length2, :length3
  @lengths=[]
  def initialize(length1, length2, length3)
    @lengths[0]=length1
    @lengths[1]=length2
    @lengths[2]=length3
  end
  class TriangeError < StandardError
    def message
      "Lengths provided are invalid"
    end
  end
  def kind
    if (@lengths.each {|l| l>0})&&(@lengths[0]+@lengths[1]>@lengths[2])
      if @lengths[0]==@lengths[1] && @lengths[2]==@lengths[1]
        :equilateral
      elsif @length[0]==@length[1] || @length[1]==@length[2]
        :isosceles
      else
        :scalene
      end
    else
      begin
        raise TrialngleError
      rescue TrialngleError => error
        puts error.message
      end
    end
  end
end
