set f [open "error_file.txt" r ]
set data [read $f]
set count 0
foreach i [split $data "\n"] {
    if { [string match **error** $i] } {
        puts "line : $i"
        incr count
    } 

}