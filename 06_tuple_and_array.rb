# Tuple and List

## Ruby hasn't tuple


## Array (python is list)
puts [].class
puts ['foo', 'bar'].class
foo = 'foo'
p %W(#{foo} Bar Bar\ with\ space)
p %w(#{foo} Bar Bar\ with\ space)
p %i(foo Bar Bar\ with\ space)

### array offset
name_list = ['johnny', 'marry', 'eric']
puts name_list[0]

#### 取負值 是從結尾往回算
puts name_list[-1]

#### offset 必須是有效的，超出會回傳nil
puts name_list[4]

name = 'johnny'
puts name[1]

### slice 切分
# array[n..n]
puts '----------------------'
puts 'slice 切分'
p name_list[0..-1]
p name_list[1..2]

### slice 改變項目
numbers = [1, 2, 3, 4]
numbers[1..2] = [8,9]
p numbers

# 指派項目不一定要相等數量
numbers = [1, 2, 3, 4]
numbers[1..3] = [8,9,10,11]
p numbers

# 甚至不一定是list，任何可迭代物都可以
numbers = [1, 2, 3, 4]
numbers[1..3] = 'what?' # 這邊結果與python不同
p numbers