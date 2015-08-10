require('rspec')
require('triangle')

describe('Triangle') do
  describe('#equilateral?') do
    it('checks that all sides are equal') do
      new_triangle = Triangle.new(2, 2, 2)
      expect(new_triangle.equilateral?()).to(eq(true))
    end
  end
  describe('#isosceles?') do
    it('checks that two sides are equal') do
      new_triangle = Triangle.new(2, 3, 3)
      expect(new_triangle.isosceles?()).to(eq(true))
    end
  end
  describe('#scalene?') do
    it('checks that none of the sides are equal') do
      new_triangle = Triangle.new(2, 3, 4)
      expect(new_triangle.scalene?()).to(eq(true))
    end
  end
  describe('#triangle?') do
    it('checks to see if this object is a triangle') do
      new_triangle = Triangle.new(4, 2, 1)
      expect(new_triangle.triangle?()).to(eq(true))
    end
  end
end
