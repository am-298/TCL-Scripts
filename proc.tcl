#write a program to check if a string is palindrome or not
proc is_palindrome {str} {
    #Get the length of the string 
    set len [string length $str]

    # for loop till half of the string length
    for {set i 0} {$i < $len / 2} {incr i} {

        # ne is used to check if two strings are not equal
        if {[string index $str $i] ne [string index $str [expr {$len - $i - 1}]]} {
            return 0
        }
    }
    return 1
}

is_palindrome "madam"
is_palindrome "hello"       
is_palindrome "racecar"
is_palindrome "12321"