class My_number

  attr_accessor :value

  def initialize(value)
    @value = value
  end

  def get_value
    @value
  end

  def change_value(value)
    @value = value
  end

  def num_len
    @value.to_s.size
  end
end

class My_number_two < My_number

  attr_accessor :real

  def initialize(value, real)
    super(value)
    @real = real
  end

  def get_real
    @real
  end

  def change_real(real)
    @real = real
  end
end

a = My_number.new(1234)
b = My_number_two.new(1234,0.1346)
a.change_value(101)
puts a.get_value

puts b.get_real
puts b.get_value
puts b.num_len
puts a.num_len

puts (a.class > b.class)