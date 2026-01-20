proc repeat {a body} {
    for {set i 0} {$i<$a} {incr i} {
    uplevel $body
}}

repeat 10 {
    puts "random number : [expr int(rand()*2)]"
}

## random number with range control

proc rand_rang {min max} {
    expr {int(rand()*($max-$min+1)) +$min}

}

repeat 10 {
    puts "rand = [rand_rang 10 30]"
}