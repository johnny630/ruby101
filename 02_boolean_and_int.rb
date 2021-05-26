# Boolean and Int

## ----------------------------------
## Boolean
puts "true class is: #{true.class}"
puts "false class is: #{false.class}"

puts "Boolean check"
### 除了 false 及 nil 其他都是true
puts "true: #{true ? true : false}"             # true
puts "false: #{false ? true : false}"           # false
puts "TrueClass: #{TrueClass ? true : false}"   # true
puts "FalseClass: #{FalseClass ? true : false}"  # !! true
puts "1: #{1 ? true : false}"           # true
puts "0.1: #{0.1 ? true : false}"         # true
puts "0: #{0 ? true : false}"           # !! true 與 python 不同(false)
puts "0.0: #{0.0 ? true : false}"         # !! true 與 python 不同(false)
puts "-1: #{-1 ? true : false}"          # true
puts "[1, 2]: #{[1, 2] ? true : false}"      # true
puts "[]: #{[] ? true : false}"          # !! true 與 python 不同(false)
puts "{a: 1}: #{({a: 1}) ? true : false}"    # true
puts "{}: #{({}) ? true : false}"        # !! true 與 python 不同(false)
puts "nil: #{nil ? true : false}"         # false
puts "'abc': #{'abc' ? true : false}"       # true
puts "'': #{'' ? true : false}"          # true
puts "' ': #{' ' ? true : false}"         # true

## .nil? .empty? .blank? .present?
## https://mgleon08.github.io/blog/2015/12/16/ruby-on-rail-nil-empty-blank-present/
## https://ithelp.ithome.com.tw/articles/10205968

## nil?
puts "\n\nnil?"
puts "nil.nil?: #{nil.nil?}"
puts "true.nil?: #{true.nil?}"
puts "1.nil?: #{1.nil?}"
puts "[].nil?: #{[].nil?}"
puts "{}.nil?: #{{}.nil?}"
puts "''.nil?: #{''.nil?}"

## empty?
puts "\n\nempty?"
# puts "nil.empty?: #{nil.empty?}"  # undefined method `empty?' for nil:NilClass (NoMethodError)
# puts "true.empty?: #{true.empty?}" # undefined method `empty?' for true:TrueClass (NoMethodError)
# puts "1.empty?: #{1.empty?}" # undefined method `empty?' for 1:Fixnum (NoMethodError)
puts "[].empty?: #{[].empty?}"
puts "{}.empty?: #{{}.empty?}"
puts "''.empty?: #{''.empty?}"
puts "' '.empty?: #{' '.empty?}"
puts "'abc'.empty?: #{'abc'.empty?}"
puts "[1, 2].empty?: #{[1, 2].empty?}"
puts "{a: 1}.empty?: #{{a: 1}.empty?}"

## any?
puts "\n\nany?"
# puts "nil.any?: #{nil.any?}"  # undefined method `any?' for nil:NilClass (NoMethodError)
# puts "true.any?: #{true.any?}" # undefined method `any?' for true:TrueClass (NoMethodError)
# puts "1.any?: #{1.any?}" # undefined method `any?' for 1:Fixnum (NoMethodError)
puts "[].any?: #{[].any?}"
puts "{}.any?: #{{}.any?}"
# String 並沒有提供 .any? 這個 method
# puts "''.any?: #{''.any?}" # undefined method `any?' for "":String (NoMethodError)
# puts "'abc'.any?: #{'abc'.any?}" # undefined method `any?' for "":String (NoMethodError)
puts "[1, 2].any?: #{[1, 2].any?}"
puts "{a: 1}.any?: #{{a: 1}.any?}"

## blank?
# nil.blank?     #true
# [].blank?      #true
# {}.blank?      #true
# "".blank?      #true
# " ".blank?     #true
# "abc".blank?   #false
# 123.blank?     #false
# true.blank?    #false
# false.blank?   #true
# 0.blank?       #false

## present?
# nil.present?   #false
# [].present?    #false
# {}.present?    #false
# "".present?    #false
# " ".present?   #false
# "abc".present? #true
# 123.present?   #true
# true.present?  #true
# false.present? #false
# 0.present?     #true

## presence : present? 簡化的應用
# params[:something] if params[:something].present?

## ----------------------------------
## 變數賦值
puts "\n\n變數賦值"

a = 90
a -= 5
puts a
# a++  ruby not support ++ --
a = 13
a /= 3  #除整數
puts a

a = 13
a /= 3.0  #除小數點
puts a


## ----------------------------------
## 底數
## TODO 這邊目前與python並沒有全部對起來，之後需要再回頭整理
puts "\n\n底數"

### code 轉十進制
### 二進制
puts "0b10: #{0b10} #{0b10.class}"
puts "0B10: #{0B10}"
### 八進制
puts "0o11 #{0o11} #{0o11.class}"
puts "0O11 #{0O11}"
### 十六進制
puts "0x10: #{0x10} #{0x10.class}"
puts "0X10: #{0X10}"

### 字串轉進制 預設是十進制
puts "10".to_i(2)
puts "10".to_i(16)
puts "10".to_i(17)
puts "10".to_i(8)