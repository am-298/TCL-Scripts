set argc 3

if {$argc != 2} {
    puts "Usage: script.tcl <a> <b>"
    exit 1
}

set a [lindex $argv 0]
set b [lindex $argv 1]
puts "a=$a b=$b"
