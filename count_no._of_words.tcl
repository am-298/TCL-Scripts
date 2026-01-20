set sen "This is a TCL Script."

set count 0

foreach i $sen {
    incr count 
}
puts "$count"

##second method

set c 0
set new [split $sen " "]
foreach i $new {
    incr c
}
puts "the words : $c"


