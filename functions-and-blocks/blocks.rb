def sandwich
    puts "top"
    yield
    puts "bottom"
end

sandwich do
    puts "lettuce and tomotto"
end

