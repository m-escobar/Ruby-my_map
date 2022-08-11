class Array
 def my_map(&block)
  result = []
  each do |param|
   result << block.call(param)
  end

  result
 end
end


class String
 def my_map(&block)
  result = ''
  each_char do |param|
   result << block.call(param)
  end

  result
 end
end

puts '---- Array ----'
p [1, 2, 3].my_map {|v| v * 3}

p [1, 2, 3].my_map(&:to_s)

a = ['Ilda', 'João', 'Luiz']
puts a.my_map {|v| v + ' dos Santos'}

a.my_map {|x| print x, ' -- ' }

puts "\n\n---- String ----"
s = 'Marcelo'
p s.my_map {|c| c + '.' }
