## handle divide by zero

set a 2
set b 1
if {[catch {expr {$a/$b}} result]} {
    puts "Error : $result"
} else {
    puts "Results : $result"
}

set log [open "error_file.txt" a]

if {[catch {expr {5/0}} err] } {
    puts $log "Error at [clock format [clock seconds] ] : $err"
}
close $log

## error handling in procedures

proc div {a b} {
    if {$b==0} {
        error "Divide by zero is not allowed"
    }
    return [expr {$a/$b}]

}
catch {div 10 0} err; ## catch format - catch {command} result
puts "$err"

## check if the file exists

if {![file exists "data.txt"]} {
    puts "ERROR: File not found"
    exit 1
} else {
    puts "file exists" 
}

## check if a var exists??

set a 0
if {[info exists a]} {
    puts "Variable exists"
} 
[split $a " "]
[join $2 "-"]
