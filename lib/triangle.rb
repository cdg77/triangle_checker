class Triangle
  define_method(:initialize) do |side_a, side_b, side_c|
    @side_a = side_a
    @side_b = side_b
    @side_c = side_c
  end

  define_method(:equilateral?) do
    if @side_a == @side_b && @side_b == @side_c
      true
    else
      false
    end
  end
end
