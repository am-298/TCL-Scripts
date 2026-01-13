# generate the fibonacci using the proc
# 0 1 1 2 3 5 8 ....
set a 0 
set b 1
set n 10
proc fibon {a b n} {
    puts $a
    puts $b

    for {set i 3} {$i <= $n} {incr i} {
        set c [expr {$a + $b}]
        puts $c
        set a $b
        set b $c
    }
}

fibon $a $b $n

