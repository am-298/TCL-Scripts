#!/usr/bin/env tclsh

set directory_path "/workspaces/TCL-Scripts"
set file [glob -directory $directory_path * ]
foreach f $file {
    puts "File: [file tail $f] , Extension: [file extension $f]"
}