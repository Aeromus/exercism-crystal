class Triangle
  @sides : Array(Float64)
  def initialize(sides : { Number, Number, Number })
    @sides = sides.map { |x| x.to_f }.to_a
    a, b, c = @sides
    raise ArgumentError.new unless a + b > c && a + c > b && b + c > a
  end
  def equilateral?
    @sides.uniq.size == 1
  end
  def isosceles?
    @sides.uniq.size <= 2
  end
  def scalene?
    @sides.uniq.size == 3
  end
end
