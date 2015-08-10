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
end
