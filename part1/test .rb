require 'MiniTest/autorun'
require_relative 'src'

class FigureFileTest < Minitest::Test
  def test_file_1
    File.open('test_file.txt', 'w') {} # создаем файл
    rand(1..10).times do
      File.truncate('test_file.txt', 0) # очищаем файл
      n = rand(1..2) # отрезок (1) или окружность (2)
      arr_in = [n, rand(0..100), rand(0..100), n.odd? ? [rand(0..100), rand(0..100)] : rand(0..100)] # входной массив
      str_in = arr_in.join(' ') # ожидаемая строка в файле
      figure_to_file(arr_in, 'test_file.txt')
      str_out = ''
      File.open('test_file.txt', 'r') do |f|
        str_out = f.gets.chop # читаем строку из файла (удаляя |n конце)
      end
      assert_equal(str_in, str_out)
    end
    File.delete('test_file.txt')
  end
end
