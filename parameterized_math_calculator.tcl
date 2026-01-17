#!/usr/bin/env tclsh


proc calculator {op num} {
    set num [split $num ","]
    set result [lindex $num 0]

    foreach n [lrange $num 1 end] {
        switch -- $op {
            add {set result [expr {$result + $n }]}
            sub {set result [expr {$result - $n }]}
            mul {set result [expr {$result * $n }]}
            div {set result [expr {$result / $n }]}
            default {puts "Unknown operation: $operation"; return}
        }
    }
    return $result
}

puts "addition : [calculator add 2,3,4,5]"