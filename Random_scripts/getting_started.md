# Basic TCL Commands – Quick Reference

This README is a **beginner‑friendly walkthrough of core TCL concepts**, with small examples and notes that are useful for freshers, EDA / scripting users, and anyone starting with TCL.

---

## 1. Basic Commands & Expressions

```tcl
set a 4
set b 2
puts [expr {$a + $b}]
```

* `set` → assigns value to a variable
* `expr` → evaluates expressions
* `[]` → **command substitution** (execute command first, then substitute result)

---

## 2. Comments

### Full-line comment

```tcl
# This is a comment
```

### Inline comment

```tcl
puts "Hello World" ; # this is an inline comment
```

---

## 3. Quotes vs Braces

```tcl
puts {Hello, World - In Braces}
```

* **Double quotes (`" "`)** → allow substitution
* **Braces (`{ }`)** → prevent substitution (literal strings)

---

## 4. Associative Arrays

```tcl
set name(first) "Mary"
set name(last) "Poppins"
puts "Name : $name(first) $name(last)"
```

TCL arrays are **associative**, not index‑based.

---

## 5. Command Substitution & Grouping

```tcl
set x abc
puts "this is simple substitution : $x\n"

set y [set x "def"]
puts "now look at X: $x and Y :$y"
```

* `[set x "def"]` → returns the value assigned to `x`

### Braces prevent execution

```tcl
set z {[set x "this is inside braces command"]}
puts "Now look at this : $z"
```

### Escaping brackets

```tcl
set z [set x "i am using backslash toh print this  \[]"]
puts "Now look at improved version : $z"
```

### Curly‑brace string assignment

```tcl
set z [ set x {this is the string in curly braces}]
puts "now the z is : $z"
```

---

## 6. Escaping & Expressions

```tcl
set b 10
puts "Note the \\ escapes the bracket:\n \$b is: $b"
```

### Expression pitfalls

```tcl
set userinput {[puts Danger!]}
puts "[expr $userinput == 1]"
puts "[expr {$userinput == 1}]"
```

✅ Always prefer **braced expressions**: `expr {}`

---

## 7. If–Then–Else (Ternary Style)

```tcl
set x 1
puts [expr {$x > 0 ? ($x + 1) : ($x - 1)}]
```

Another example:

```tcl
set x 1
set w "ABCDEF"
puts "[expr {[string length $w] - 2*$x}]"
```

---

## 8. Type Conversion

* `int()` → convert to integer
* `double()` → convert to floating point

```tcl
puts "1/2 is [expr {1/2}]"
puts "-1/2 is [expr {-1/2}]"
puts "1/2 is [expr {1./2}]"
```

⚠️ Integer division happens unless **any operand is float**.

---

## 9. Switch Command

```tcl
set x "abc"
set y 1
set z abc

switch $x {
    "$z" {
        set y1 [expr {$y + 1}]
        puts "Match \$z. $y + $z is $y1"
    }
    abc {
        set y1 [expr {$y + 1}]
        puts "Match abc. $y + one is $y1"
    }
    cde {
        set y1 [expr {$y + 1}]
        puts "Match cde. $y + one is $y1"
    }
    default {
        puts "$x is NOT A MATCH"
    }
}
```

* Uses **string matching by default**
* Patterns follow glob rules

---

## 10. Looping Constructs

### While loop

```tcl
while {condition} {
    # body
}
```

### For loop

```tcl
for {start} {test} {next} {
    # body
}
```

---

## 11. Procedures (`proc`)

```tcl
proc name {args} {
    body
}
```

### Default arguments

```tcl
proc demo {{b 1} {c -1}} {
    puts "$b $c"
}
```

### Multiple arguments

```tcl
proc demo {{first 2} {second 1} args} {
    puts "$first $second $args"
}
```

### Variable Scope

* `global` → access global variable
* `upvar` → reference variable from caller

---

## 12. Lists in TCL

### Creating lists

```tcl
set lst [list "item 1" "item 2" "item 3"]
set lst [split "a.b.c" "."]
```

### List operations

* `concat arg1 arg2`
* `lappend listName arg1 arg2`
* `linsert listName index arg1`
* `lreplace listName first last arg1`
* `lset varName index newValue`

### Searching

```tcl
lsearch $list Washington*
```

### Sorting

```tcl
set lst [lsort $lst]
```

### Range

```tcl
set sub [lrange $lst $x $y]
```

---

## 13. Pattern Matching (Globbing)

* `*` → any number of characters
* `?` → single character
* `[a-z]` → range match

```tcl
set bins [glob /usr/bin/*]
```

Returns matching file names (example: Debian/Linux systems).

--- 
## 14. String Subcommands

### `length`, `index`, `range`

### `string length string`

Returns the number of characters in a string.

```tcl
set s "Quick brown fox jumps over"
puts "there are [string length $s] characters."
```

---

### `string index string index`

Returns the character at the given index (0-based).

```tcl
puts [string index $s 0]
```

---

### `string range string first last`

Returns a substring from index `first` to `last` (inclusive).

```tcl
puts "\"[string range $s 5 10]\" are the characters from 5th to 10th"
```

---

## 15. String Comparison & Search

### `compare`, `first`, `last`, `wordstart`, `wordend`, `match`

---

### `string compare string1 string2`

Compares two strings alphabetically.

* Returns `0` → strings are equal
* Returns `< 0` → string1 comes before string2
* Returns `> 0` → string1 comes after string2

```tcl
set a "move on"
set b "let go"
set value [string compare $a $b]
```

---

### `string first string1 string2`

Finds the **first occurrence** of `string1` inside `string2`.

```tcl
set a "I am so amazing."
set b "I am very powerful"
set value [string first $a $b]
```

Returns the index or `-1` if not found.

---

### `string last string1 string2`

Finds the **last occurrence** of `string1` inside `string2`.

```tcl
set a "There is will"
set b "There is way"
set value [string last $a $b]
```

---

### `string wordstart / wordend`

Used to locate **word boundaries** in a string.

```tcl
set a "There is will"
set value [string wordend $a "will"]
```

---

### `string match pattern string`

Matches a string using **glob-style patterns**.

```tcl
set a "there is a beautiful life waiting for you"
puts [string match *beautiful* $a]
```

Returns `1` if matched, otherwise `0`.

---

## 16. Modifying Strings

### `string tolower string`

Converts all characters in the string to lowercase.

```tcl
set s "HELLO Tcl"
puts [string tolower $s]
```

**Output**

```
hello tcl
```

---

### `string toupper string`

Converts all characters in the string to uppercase.

```tcl
set s "hello Tcl"
puts [string toupper $s]
```

**Output**

```
HELLO TCL
```

---

### `string trim string ?trimChars?`

Removes leading and trailing whitespace or specified characters.

#### Trim whitespace (default)

```tcl
set s "   hello world   "
puts "[string trim $s]"
```

**Output**

```
hello world
```

#### Trim specific characters

```tcl
set s "***EDA_SCRIPT***"
puts [string trim $s "*"]
```

**Output**

```
EDA_SCRIPT
```

---

### Related Trim Commands (useful)

* `string trimleft` → trims from the left side
* `string trimright` → trims from the right side

```tcl
string trimleft  $s "*"
string trimright $s "*"
```

---

### Best Practices

- Use `tolower / toupper` for **case-insensitive comparisons**
- Use `trim` before parsing user input or report files
- Prefer string commands over manual character handling
---

