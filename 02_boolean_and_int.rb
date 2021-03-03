# Boolean and Int


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

## present?
