# create file reading and writing function

proc read_file {path} {
    set f [open $path r]
    set data [read $f]
    close $f
    puts $data
    return $data
}

proc write_file {path_data} {
    set f [open [lindex $path_data 0] w]
    puts $f [lindex $path_data 1]
    close $f
    return [lindex $path_data 0]

}

read_file "test1.tcl"
write_file "test2.tcl"
