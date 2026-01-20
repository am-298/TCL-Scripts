# remove the duplicate from the list

#using the lsort method
set  a {1 2 3 3 4 5}
set b [lsort -unique $a] 
puts "$b"

## use dictionary it preserves the order

set a {1 2 3 4 6 6 5}
foreach i $a {
    dict set j $i ""
}
set b [dict keys $j]
puts "using dict : $b"

## using ni method  

set a {1 2 3 4 6 6 5}
set b {}
foreach i $a {
    if {$i ni $b} {
        lappend b $i
    }
}
puts "using not in : $b"