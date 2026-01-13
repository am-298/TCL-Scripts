## reverse string using the reverse function

set a "nice to meet you"

puts [string reverse $a]

## reverse the string without reverse

set a "nice to meet you"
set rev ""
set i [expr {[string length $a]-1}]

while {$i=> 0} {
    append rev [string index $s $i]
    incr i -1
}

puts $rev