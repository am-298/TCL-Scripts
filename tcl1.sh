## to print all the files in the dictectary with tcl and sh extension

set tclfiles [glob *.tcl glob *.sh] 

foreach fileName $tclfiles {
puts "File = $fileName";
}
