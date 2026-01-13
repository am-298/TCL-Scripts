set str "ram ji won the life."

set b [regsub -all " " $str "hanuman"]

puts $b

## with map function

set str "shree ram janki baithe h mere seene me."
puts [string map {" " ""} $str]