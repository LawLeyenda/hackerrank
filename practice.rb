class Practice
  
  def func_find(hash)
    hash.find do |key, value|
      key.is_a?(Integer) && value < 20 ||
          key.is_a?(String) && value.is_a?(String) && value.start_with?("a")
    end
  end

  
end
h = {"a" => "a", "b" => 2, "c" => 3}
test1 = Practice.new
puts test1.func_find(h)


