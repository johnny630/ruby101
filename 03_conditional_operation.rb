# print, puts, p 比較
# https://icelandcheng.medium.com/ruby-%E5%8D%B0%E5%87%BA%E5%80%BC%E7%9A%84%E6%96%B9%E6%B3%95-print-puts-%E5%8F%8Ap%E4%B9%8B%E6%AF%94%E8%BC%83-bcfc851d9a95

# if else
# and: 左側只要遇到bool(value) == false就回傳該值，若不是則回傳最右側的值
#o r : 左側只要遇到bool(value) == true 就回傳該值，若不是則回傳最右側的值
# not: not, !

# if 2 > 1
#   ....
# elsif
#   ....
# elsif
#   ....
# else
#   ....
# end

# unless  等於 python if not
# unless 2 > 1
#   ....
# else
#   ....
# end


# 三元運算子
p( true ? 4 : 3 )

# 邏輯運算子 Logical connective

# &&
puts("\n\n&&邏輯運算子")
p(true && false)
p(2 > 1 && 3 > 1)
p(1 && 2)
p('a' && 'b')
p([1, 2] && [3, 4])

# 一些奇怪的少用的
puts("true && nil:", true && nil)
puts("false && nil:", false && nil)
puts("nil && true:", nil && true)
puts("nil && false:", nil && false)
puts("1 && nil && false:", 1 && nil && false)
puts("1 && true:", 1 && true)
puts("1 && false:", 1 && false)
puts("0 && true:", 0 && true)
puts("0 && false:", 0 && false)
puts("true && 1:", true && 1)
puts("false && 1:", false && 1)
puts("[] && true && 2:", [] && true && 2)
puts("[] && false:", [] && false)
puts("true && []:", true && [])
puts("false && []:", false && [])
puts("{} && true:", {} && true)
puts("{} && false:", {} && false)
puts("'' && true:", '' && true)
puts("'' && false:", '' && false)


# ||
puts("\n\n||邏輯運算子")
p(true || false)
p(2 > 1 || 3 > 1)
p(1 || 2)
p('a' || 'b')
p([1, 2] || [3, 4])

# 一些奇怪的少用的
puts("true || nil:", true || nil)
puts("false || nil:", false || nil)
puts("nil || true:", nil || true)
puts("nil || false:", nil || false)
puts("1 || nil || false:", 1 || nil || false)
puts("1 || true:", 1 || true)
puts("1 || false:", 1 || false)
puts("0 || true:", 0 || true)
puts("0 || false:", 0 || false)
puts("true || 1:", true || 1)
puts("false || 1:", false || 1)
puts("[] || true || 2:", [] || true || 2)
puts("[] || false:", [] || false)
puts("true || []:", true || [])
puts("false || []:", false || [])
puts("{} || true:", {} || true)
puts("{} || false:", {} || false)
puts("'' || true:", '' || true)
puts("'' || false:", '' || false)


# not !
puts("\n\nnot !邏輯運算子")
puts(not(true or false))
puts(not([1, 2]))
puts(!([]))
puts(!(nil))
puts(not(''))
puts(not(0))


## 一行寫法  python 沒有此功能
x = 10
p x if x > 5


## 海象(walrus)運算子  :=  ruby 沒有此功能


# 延續多行code
puts "\n\n延續多行code"
sum = 1 + \
      2 + \
      3
puts sum

sum = (
  1 +
  2 +
  3 +
  4)
puts sum


# in (check in list?)
# include? any?
puts "\n\nin (check in list?)"
letter = 'o'
vowel_list = ['a', 'e', 'i', 'o', 'u']
p vowel_list
puts vowel_list.include?(letter)
puts vowel_list.any?(letter)

# dict check key, not value.
# has_key?, key?
vowel_dict = {'a': 1, 'e': 2, 'i': 3, 'o': 4, 'u': 5}
p vowel_dict
puts vowel_dict.has_key?(letter.to_sym)
puts vowel_dict.key?(letter.to_sym)

# string
vowel_str = 'aeiou'
p vowel_str
puts vowel_str.include?(letter)