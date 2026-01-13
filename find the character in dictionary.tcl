set colours [dict create 1 "black" 2 "white" 3 "brown" 4 "green" 5 "orange"]
#this prints the dictionary
puts [set v [dict get $colours ]]
foreach {x} $v {

    if {[regexp "b" $x match]} {
          puts [dict filter $colours value $x]
    } else {
        continue
    }
}