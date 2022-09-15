def sandwich
  puts 'top'
  yield
  puts 'bottom'
end

sandwich do
  puts 'lettuce and tomotto'
end

def tag(tagname, text)
  yield "<#{tagname}>#{text}</#{tagname}>"
end
tag('li', 'apple') do |html|
  puts html
end
