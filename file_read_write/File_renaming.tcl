# this program add prefix to the existing file

##!/usr/bin/env tclsh

set dir_path "verilog"
set add "new"

# check if directory exists
if {![file isdirectory $dir_path]} {
    puts "Directory path doesnot exist."
    exit
}

#Get list of files
set files [glob -directory $dir_path *]

foreach file $files {
    set name [file tail $file]
    set new_name "$dir_path/$add$name"
    file rename -force $file $new_name
    puts "New name: $add$name"
}
~