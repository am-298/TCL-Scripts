set f [open "alu.txt" w]

for {set i 0} {$i<10} {incr i} {
    set a [expr {int(rand()*16)}]
    set b [expr {int(rand())*16}]
    set opcode [expr {int(rand()*4)}]

    switch $opcode {
        0 {set result [expr {$a+$b}] ; set op ADD}
        1 {set result [expr {$a - $b}] ; set op SUB}
        2 {set result [expr {$a * $b}] ; set op MUL}
        3 {set result [expr {$a | $b}] ; set op OR}

    }
    puts $f "A : $a | B : $b | opcode : $opcode | op : $op"
}

close $f

puts "written pass" 