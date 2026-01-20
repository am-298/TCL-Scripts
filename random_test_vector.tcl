#!/usr/bin/env tclsh

proc repeat {a body} {
    for {set i 0} {$i<$a} {incr i} {
        uplevel $body
    }  }


set num_test 10

puts "Generating Random Test Vector : "
puts "--------------------------------"

repeat $num_test {
    set a [expr {int(rand()*256)}]
    set b [expr {int(rand()*256)}]
    set opcode [expr {int(rand()*16)}]
    puts "a = $a | b = $b | c = $opcode"
}