class Triangle
  def initialize(side1, side2, side3)
    @sides = [side1, side2, side3]
  end

  def type
    longest_side = @sides.max
    other_sides = @sides.clone
    other_sides.delete_at(@sides.index(longest_side))
    # binding.pry
    if other_sides[0] + other_sides[1] <= longest_side
      "Not a triangle"
    elsif @sides == [longest_side] * 3
      "Equilateral triangle"
    elsif @sides.to_set.length == 2
      "Isosceles triangle"
    else
      "Scalene triangle"
    end
  end
end
