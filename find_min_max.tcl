## find max, min from list 

set la "3 1 4 6"
set min [lindex $la 0]
set max [lindex $la end]

foreach i $la {
    if {$i < $min} {
        set min $i
    }
    if {$i > $max } {
        set max $i
    }
}
puts  "max element : $max"
puts "min element : $min"