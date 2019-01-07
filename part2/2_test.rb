require 'test/unit'
require_relative '2'

class MyTest < Test::Unit::TestCase

  # Called before every test method runs. Can be used
  # to set up fixture information.
  def setup
    @numb = rand(65555)
    @real = rand
    @len = @numb.to_s.size
    @first = My_number.new(@numb)
    @second = My_number_two.new(@numb, @real)

  end

  # Called after every test method runs. Can be used to tear
  # down fixture information.



  # Fake test
  def test_1
    assert_equal(@first.class > @second.class, true)
  end
  def test_2
    assert_equal(@second.get_value, @numb)
  end
  def test_3
    assert_equal(@second.get_real, @real)
  end
  def test_4
    assert_equal(@second.num_len, @len)
  end
end