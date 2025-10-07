#delete a series of files with incrementing numbers in their names

proc delete {path} {
    if {[file exists $path]} {
        file delete $path
        puts "$path deleted"
    } else {
        puts "$path does not exist"
    }
}
puts "Enter the number of files you want to delete:"
set num_files [gets stdin]
puts "Enter the staring number "
set file_number [gets stdin]
puts "Enter file name : "
set file_name [gets stdin]

for {set i 0} {$i < $num_files} {incr i} {

    set filepath "${file_name}${file_number}.tcl"
    delete $filepath
    incr file_number  }