# String

## String syntax
puts 'String syntax'

# ''
# ""
# """
# '''
# <<HEREDOC
# HEREDOC
# %{}

puts '\'string'
puts "\"string"
puts """multiple line
  \"\"\"
  string
"""
puts '''multiple line
  \'\'\'
  string
'''
puts %{
multiple line
%{}
string
}

puts <<JOHNNY
  multiple line
  xxxxx
  string
JOHNNY


## add string 字串相加
# ＋
puts '----------------------'
puts 'add string 字串相加'
puts 'string add' + ' string'


## String repeat
puts '----------------------'
puts 'String repeat'
puts 'a' * 10


## String Slice get range chars 
# str[index] → new_str or nil
# str[start, length] → new_str or nil
# str[range] → new_str or nil
# str[regexp] → new_str or nil
# str[regexp, capture] → new_str or nil
# str[match_str] → new_str or nil
puts '----------------------'
puts 'String get range chars'
letters = 'abcdefghijklmnopqrstuvwxyz'
puts letters[3]
puts letters[3,4]
puts letters[3..4]
puts letters[3, 0]


## get length 取得長度
# https://rubyinrails.com/2014/01/15/ruby-count-vs-length-vs-size/
# https://ithelp.ithome.com.tw/articles/10187155?sc=pt
# length 與 size 相同用法，只是size有cache
# count 有block 計算功能
puts '----------------------'
puts 'get length 取得長度'
letters = 'abcdefghijklmnopqrstuvwxyz'
puts letters.length
puts letters.count 'a'
puts letters.size

a = [1,2,3,4,5,6,7]
puts a.length
puts a.count
puts a.size
puts a.count { |i| i>5 }


## 折分 split 
# str.split(pattern, limit)
puts '----------------------'
puts '折分 split'
names = 'johnny,mary,pan'
p names.split(',')
p names.split(',', 2)


## 結合 join 
# str.split(pattern, limit)
puts '----------------------'
puts '結合 join'

puts [ "a", "b", "c" ].join
puts [ "a", "b", "c" ].join("-")
# For nested arrays, join is applied recursively:
puts [ "a", [1, 2, [:x, :y]], "b" ].join("-")


## 取代 sub gsub
# The sub() method replaces just the first instance of a string with another. Gsub meanwhile replaces all instances
puts '----------------------'
puts '取代 sub gsub'
info = "johnny go to where and go there"
puts info.gsub('go', '??')


## 剝除 strip
# strip
# lstrip
# rstrip
puts '----------------------'
puts '剝除 strip'
word = '   each.  '
puts word.strip
puts word.lstrip
puts word.rstrip


## 字元群組
# TODO....


## 搜尋或選擇
# index(regexp [, offset]) → fixnum or nil
# include 包含
# qul?, == 相等
puts '----------------------'
puts '搜尋或選擇'
word = 'What the ...!!?'
puts word.index('hat')
puts word.index('zz')

puts word.include?('the')
puts word.eql?('What the ...!!?')
puts word == 'What the ...!!?'

