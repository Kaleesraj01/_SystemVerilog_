and — Both sequences must complete
systemverilog// Both sequences must happen, can end at different times
sequence s_and;
    @(posedge clk) (a ##1 b) and (c ##2 d);
endsequence

// Timeline:     1  2  3
// a:            1
// b:               1       ← a##1 b done at cycle 2
// c:            1
// d:                  1    ← c##2 d done at cycle 3
// PASS ✓ — both completed


or — Either sequence is enough
systemverilog// Only ONE needs to match
sequence s_or;
    @(posedge clk) (a ##1 b) or (c ##1 d);
endsequence

// If either (a then b) OR (c then d) happens → PASS
  
intersect — Both must complete at SAME time
systemverilog// Both sequences must START and END at same cycles
sequence s_intersect;
    @(posedge clk) (a ##[1:3] b) intersect (c ##2 d);
endsequence

//              1  2  3
// a:           1
// b:                  1    ← ends cycle 3
// c:           1
// d:                  1    ← must ALSO end cycle 3
// PASS ✓ — both end at cycle 3

// But if b came at cycle 2 (##1) and d at cycle 3 (##2) → FAIL ✗
// (they ended at different times)
  
first_match — Stop at the first success
systemverilog// Without first_match: matches ALL possible endpoints
// With first_match: matches only the EARLIEST endpoint
sequence s_first;
    @(posedge clk) first_match(a ##[1:5] b);
endsequence


//              1  2  3  4  5  6
// a:           1
// b:                  1  1  1   ← b is high at cycles 3,4,5
// Without first_match: 3 matches (at cycle 3, 4, 5)
// With first_match:    1 match  (only at cycle 3) ✓


    =-===========================------------------------------================================-----------==========------------==========-----------=============================-----------------------


    
PART 5: LOCAL VARIABLES IN ASSERTIONS
Used to capture and store a value to check later.
systemverilogproperty p_write_read_check;
    int local_data;   // ← local variable, lives inside this property
    
    @(posedge clk)
    (write_en, local_data = data_in)   // ← capture data_in when write_en
    |->
    ##2 (read_en && read_data == local_data);  // ← check it 2 cycles later
    //                          ^^^^^^^^^^^^^
    //                          is the read data same as what we wrote?
endproperty

// Without local variable: you can't "remember" what data_in was!
// With local variable: capture it, then compare 2 cycles later
```

---

## QUICK REFERENCE CARD
```
IMMEDIATE                     CONCURRENT
──────────────────────────────────────────────────────
assert (expr);                assert property (@(clk) prop);
Lives in always/initial       Lives in module level
No own clock                  Has own clock
Checks NOW                    Checks OVER TIME
Simple conditions             Temporal sequences

SEQUENCE DELAYS
──────────────────────────────────────────────────────
##1          exactly 1 cycle later
##[1:3]      1 to 3 cycles later
##[*]        0 or more cycles (unbounded)
##[1:$]      1 or more cycles

IMPLICATION
──────────────────────────────────────────────────────
a |-> b      if a, then b in SAME cycle
a |=> b      if a, then b in NEXT cycle
a |-> ##2 b  if a, then b exactly 2 cycles later

SIGNAL HISTORY
──────────────────────────────────────────────────────
$rose(x)     was 0, now 1
$fell(x)     was 1, now 0
$stable(x)   same as last cycle
$past(x, n)  value n cycles ago
The key insight to remember: immediate assertion = snapshot check NOW, concurrent assertion = video recording watching behavior OVER MULTIPLE CYCLES with its own built-in clock.
