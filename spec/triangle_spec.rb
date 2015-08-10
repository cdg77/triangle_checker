require('rspec')
require('triangle')

describe('Triangle') do
  describe('#equilateral?') do
    it('checks that all sides are equal') do
      new_triangle = Triangle.new(2, 2, 2)
      expect(new_triangle.equilateral?()).to(eq(true))
    end
  end

end
