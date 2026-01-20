#!/usr/bin/env tclsh

set tclfiles [glob *] 

foreach fileName $tclfiles {
puts "File = $fileName";
}
