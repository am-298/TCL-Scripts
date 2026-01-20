proc repeat {a body} {
    for {set i 0} {$i< $a} {incr i} {
        uplevel $body
    }
}

repeat 10 {
    set a [expr {int(rand()*256)}]
    set b [expr {int(rand()*256)}]
    set opcode [expr {int(rand()*4)}]

    switch $opcode {
        0 {set result [expr {$a +$b}] ; set op ADD}
        1 {set result [expr {$a - $b}] ; set op SUB}
        2 {set result [expr {$a * $b}]; set op MUL}
        3 {set result [expr {$a | $b}]; set op OR}
    }
    puts "A = $a   | B = $b   | opcode = $opcode | op : $op | result = $result"
}