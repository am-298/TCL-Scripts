# create a series of files with incrementing numbers in their names

proc touch {path} {
# create the empty file if it does not exist
    set f [open $path "a"]
    close $f
    return $path

}
puts "Enter the file name :"
set name [gets stdin]
puts "Enter the starting number :"
set var [gets stdin]
puts "how many more files you want to create :"
set i [gets stdin]

for {set j 1} {$j<= $i} { incr j} {
    incr var
    touch "$name$var.tcl"
    puts "file $name$var.tcl created"
}
