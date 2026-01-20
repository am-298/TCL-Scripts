## 
set a { 1 2 3 4}
set count 0
foreach i $a {
    set count [expr {$count + $i}]
}
puts "count : $count"