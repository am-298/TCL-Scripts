#!/usr/bin/env tclsh


# creating file and writing 
set file "example.txt"
set f [open $file w]
puts $f "Line_1: TCL is Scripting Language."
puts $f "Line_2: Tcl is easy to learn"
close $f

# reading from file
set f [open $file r]
while {[gets $f line] >=0} {
    puts "Read line : $line"
}
close $f
