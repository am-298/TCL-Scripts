#!/usr/bin/env tclsh

set directory_path ""

# check if directory_path exist
if {![file isdirectory $directory_path]} {
    puts "No such directory path exist."
    exit
}

set files [glob -directory $directory_path * ]
puts "length : [llength $files]" 