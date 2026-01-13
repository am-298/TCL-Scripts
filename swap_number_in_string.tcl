set str "123456"

puts [string map {3 4 4 3} $str]

## or words in the string

set an "hanuman ji loves ram ji"
puts [string map {hanuman ram ram hanuman} $an] 

## hanuman -- ram 
## ram -- hanuman