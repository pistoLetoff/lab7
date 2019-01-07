def figure_to_file(*figure_info, filename)
  str = figure_info.join(' ')
  File.open(filename, 'a') do |f|
    f.puts str
  end
end
