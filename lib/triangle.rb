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

  define_method(:isosceles?) do
    if @side_a == @side_b || @side_a == @side_c || @side_b == @side_c
      true
    else
      false
    end
  end

  define_method(:scalene?) do
    if !(@side_a == @side_b || @side_a == @side_c || @side_b == @side_c)
      true
    else
      false
    end
  end

  define_method(:triangle?) do
    ab_total = @side_a + @side_b
    ac_total = @side_b + @side_c
    bc_total = @side_b + @side_c

    if ab_total <= @side_c || ac_total <= @side_b || bc_total <= @side_a
      false
    else
      true
    end
  end

end
