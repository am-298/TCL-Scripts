### regular expression

set f [open "sta_report.txt" r]
set count 0

while {[gets $f line] >=0 } {

if {[regexp {Slack :\s+(-?\d+\.\d+)} $line -> slack ]} {
    puts "Slack = $slack"

    if {$slack <0} {
    incr count
} }
}
puts "Violation count : $count"