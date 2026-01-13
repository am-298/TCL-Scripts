set a 5 
set b 1
# calculating the factorial f.
for {set i 1} {$i <= 5} {incr i} {
    set b [expr $b*$i]
}
puts "factorial: $b"

## with the procedure 

proc fact {a} {
    if {$a == 1} {
        return 1
    } else {
        return [ expr {$a * [fact [expr {$a-1}]]}] 
    }
}
set s [fact 5]
puts $s
