### Difference Between " " and { } in Tcl

- " " allows variable and command substitution
- { } treats content literally
- Use { } in conditions, loops, and procedures
- Use " " only when substitution is required


### Error Handling Using `catch`

* `catch` is used to handle runtime errors safely
* Returns `0` on success and `1` on failure
* Error message is stored in a variable
* Prevents script from crashing

---

### Difference Between `catch` and `error`

* `catch` handles errors
* `error` raises an error intentionally
* `error` stops execution unless caught
* Often used for input validation

---

### Random Number Generation in Tcl

* `rand()` generates a floating value between 0 and 1
* Multiply `rand()` by `2^N` for N-bit random numbers
* Use `int()` to convert float to integer
* Commonly used in verification scripts

---

### File Handling in Tcl

* `open` is used to read/write files
* Always check file existence before opening
* `close` should be called after file usage
* File errors should be handled using `catch`

---

### Looping Constructs in Tcl

* `for` is used for fixed iteration loops
* `foreach` is used for list traversal
* `while` is used for condition-based looping
* Tcl does not have a built-in `repeat` command

---

### Procedures (`proc`) in Tcl

* Used to create reusable code blocks
* Arguments are passed by value
* `return` is used to send values back
* Improves script readability and maintainability

---

### Command-Line Arguments in Tcl

* `argc` stores argument count
* `argv` stores argument values
* Useful for automation and batch runs
* Common in EDA tool invocation scripts

---

### Regular Expressions in Tcl

* `regexp` is used for pattern matching
* Useful for log and report parsing
* Supports capturing groups
* Frequently used in STA and simulation logs

---

### Self-Checking Scripts

* Script verifies expected vs actual results
* Reduces manual debugging
* Used in verification and regression flows
* Improves reliability of automation

---

### Defensive Scripting Practices
* Always validate inputs
* Handle divide-by-zero cases
* Log warnings and errors clearly
* Avoid hard crashes in production scripts
--- 
### Random 
* [clock format [clock second]] -- Tue Jan 20 10:34:29 UTC 2026

