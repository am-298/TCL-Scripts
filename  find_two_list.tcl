set a [1 2 3 4]
set b {1 3 2}

puts "x:[set x [regsub -all " " $A ""]]"
puts "y:[set y [regsub -all " " $B ""]]"
puts [set la [llength $A] ]
puts [set lb [llength $B] ]

if { $la < $lb } {
    if {[string match "*$x*" $y ] == 1} {
        puts "A is a sublist of B or B is the Superlist of A"
    } else {
        puts "A and B are not equal "
    }
} elseif { $la > $lb } {
    if {[string match "*$y*" $x] == 1} {
          puts "B is a sublist of A or A is the superlist of B"
    } else {
        puts "A and B are not equal "
    }
} elseif { $la == $lb} {
     if {[string compare $x $y] == 1} {
          puts "A and B are equal"
    } else {
        puts "A and B are not equal "
    }
}

