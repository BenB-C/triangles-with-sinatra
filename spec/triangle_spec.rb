require 'rspec'
require 'pry'
require 'triangle'

describe '#Triangle' do

  describe('#type') do
    it("returns 'Not a triangle' for sides 1, 1, 3") do
      expect(Triangle.new(1, 1, 3).type).to(eq('Not a triangle'))
    end

    it("returns 'Equilateral' for sides 5, 5, 5") do
      expect(Triangle.new(5, 5, 5).type).to(eq('Equilateral triangle'))
    end

    it("returns 'Isosceles triangle' for sides 3, 3, 2") do
      expect(Triangle.new(3, 3, 2).type).to(eq('Isosceles triangle'))
    end

    it("returns 'Scalene triangle' for sides 3, 4, 5") do
      expect(Triangle.new(3, 4, 5).type).to(eq('Scalene triangle'))
    end

    it("returns 'Scalene triangle' for sides 8, 9, 10") do
      expect(Triangle.new(8, 9, 10).type).to(eq('Scalene triangle'))
    end
  end
end
