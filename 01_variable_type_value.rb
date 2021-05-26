# 型態、值、變數與名稱

## Ruby 資料型別
"""
BasicObject
    |
  Object  ---  Numeric ---  Integer  ---  Fixnum
           |            |             |-  Bignum
           |            |-   Float
           |-  NilClass
           |-  TrueClass
           |-  FalseClass
           |-  String
           |-  Symbol
           |-  Array
           |-  Hash
           |-  Range
           |-  Module   ---  Class
"""

## 型態
puts true.class  #bool 不可變型 immutable
puts false.class 
puts 40.class    # int 不可變型
puts 25_000.class
puts -100.class
puts 3.14.class  # float 不可變型
# puts 2.7e5.class # complex 不可變型
# puts 3j.class
puts 'alas'.class # str 不可變型
puts "test".class
puts '''a test'''.class
puts ['a', 'b', 'c'].class # list 可變型 mutable
# puts Set['a', 'b', 'c'].class # set 可變型 
# ruby hasn't tuple ?
# puts b'ab\xff'.class # byte 不可變型
# ruby hasn't fronzeset
puts ({ 'a '=> 1, 'b' => 2, 'c' => 3 }).class # dict == hash 可變型 


## 可變、不可變型參
### 複制不可變物件，當改變值時兩變數值會不同。複制可變物件，當改變值時兩變數值會相同
### immutable
puts("immutable")
x = 5
y = x
puts("x = #{x}, id = #{x.object_id}")
puts("y = #{y}, id = #{y.object_id}")

puts("When change y value")
y = 10
puts("x = #{x}, id = #{x.object_id}")
puts("y = #{y}, id = #{y.object_id}")

### mutable
puts("\nmutable")
x = [2, 4, 6]
y = x
puts("x = #{x}, id = #{x.object_id}")
puts("y = #{y}, id = #{y.object_id}")

puts("When change x[0] value, x, y value change together")
x[0] = 3
puts("x = #{x}, id = #{x.object_id}")
puts("y = #{y}, id = #{y.object_id}")


# string vs symbol
puts('a'.object_id)
puts('a'.object_id)
puts(:a.object_id)
puts(:a.object_id)