#write a program to check if a string is palindrome or not
proc is_palindrome {str} {
    set len [string length $str]
    for {set i 0} {$i < $len / 2} {incr i} {
        if {[string index $str $i] ne [string index $str [expr {$len - $i - 1}]]} {
            return 0
        }
    }
    return 1
}