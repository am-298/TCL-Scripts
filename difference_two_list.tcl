set str1 "Tcl is a cross platform language with full unicode support."
set str2 "Tcl is an direct platform language with full support."
set a [split $str1]
set b [split $str2]
if {[llength $a] == [llength $b]} {
  for {set i 0 } {$i < [llength $a] } {incr i} {
      for {set j 0} {$j < [llength $b] } {incr j} {
            if {[lindex $a $i] == [lindex $b $i]} {
                puts "Strings a & b are equal at $i"
                break
            } else {
                puts "Strings a & b are notequal at $i" 
                break
            }
      }
  }
} elseif {[llength $a] > [llength $b]} {
  for {set i 0 } {$i < [llength $a] } {incr i} {
      for {set j 0} {$j < [llength $a] } {incr j} {
            if {[lindex $a $i] == [lindex $b $i]} {
                puts "Strings a & b are equal at $i"
                break
            } else {
                puts "Strings a & b are notequal at $i" 
                break
            }
      }
  }
} elseif {[llength $a] < [llength $b]} {
  for {set i 0 } {$i < [llength $b] } {incr i} {
      for {set j 0} {$j < [llength $b] } {incr j} {
            if {[lindex $a $i] == [lindex $b $i]} {
                puts "Strings a & b are equal at $i"
                break
            } else {
                puts "Strings a & b are notequal at $i"   
                break
            }
      }
  }
} else {
    puts "Strings a and b are different"
}