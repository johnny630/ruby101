# Iterate, map, select, reduce

## map/collect (like python map)
# array.map{ |n| expression }
# array.collect{ |n| expression }
nums = [1, -2, -3]
p nums.map{|i| i.abs}

ans = nums.collect do |i|
  i.abs
end
p ans

# hash to array
h = {'a a': 1, 'b b': 2}
p h.map{ |k, v| {key: k, value: v, other: 'other'} }


my_hash = {a: 1, b: 2, c: 3}
my_hash.each do |key, value|
  my_hash[key] = value * 2
end
p my_hash


def convert_hash(data)
  data.each do |key, value|
    data[key] = value * 2
  end
end
my_hash2 = {a: 4, b: 5, c: 6}
convert_hash(my_hash2)
p my_hash2

## select (like python filter)  /reject 是相反的
# array.select{ |n| expression } 
# array.reject{ |n| expression }
# dict.select{ |k,v| expression }
nums = [1, 2, 3, 4, 5, 6]
p nums.select{|n| n%2 == 0}

ans = nums.reject do |n|
  n%2 == 0
end
p ans


## reduce / inject (like python reduce)
# array.reduce{ |x,y| expression }
# array.inject{ |x,y| expression }
# each_with_index
# each_with_object
# %w(foo bar).each_with_object({}) { |str, hsh| hsh[str] = str.upcase }
nums = [1, 2, 3, 4, 5, 6]
p nums.reduce{ |x, y| puts x; x + y }
p nums.inject{ |x, y| x + y }

p %w(foo bar).each_with_object({}) { |str, hsh| hsh[str] = str.upcase }


## tap  !python 沒有
# https://ithelp.ithome.com.tw/articles/10207125
# https://apidock.com/ruby/Object/tap
nums = [1, 2, 3, 4, 5, 6]
p nums.tap { |x| x.map{ |i| i*2 } }

p [].tap {|i| i << "abc"}