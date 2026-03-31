// "Just had a rising edge?"
$rose(signal)

// Example: detect start of transaction
property p_start;
    @(posedge clk) $rose(valid) |-> data != 0;
    // "When valid JUST went high, data must be non-zero"
endproperty

// Clock:  __|‾|__|‾|__|‾|__|‾|
// valid:  __|‾‾‾‾‾‾‾‾‾‾‾‾‾|__
//            ^
//            $rose(valid) = 1 here (only this one cycle!)
//            after this, valid stays 1, so $rose = 0

====================================================================================================================================================

$fell(signal)

// Example: detect end of burst
property p_end_of_burst;
    @(posedge clk) $fell(burst_en) |=> fifo_flush;
    // "When burst just ended, flush fifo next cycle"
endproperty

// Clock:  __|‾|__|‾|__|‾|__|‾|
// burst:  ___|‾‾‾‾‾‾‾‾‾|_____
//                         ^
//                         $fell(burst_en) = 1 here

----------------------------------------------------------------------------------------------------------------------------------------------------

$stable(signal)   // returns 1 if signal same as previous cycle

// Example: address must not change during burst
property p_stable_addr;
    @(posedge clk)
    (burst_en && !$rose(burst_en)) |-> $stable(address);
    // "During burst (not the first cycle), address must not change"
endproperty

=========================================================================================================================================================

$past(signal)       // value 1 cycle ago
$past(signal, 2)    // value 2 cycles ago
$past(signal, n)    // value n cycles ago

// Example: data written must match data read 2 cycles later
property p_data_integrity;
    @(posedge clk)
    read_valid |-> (read_data == $past(write_data, 2));
    // "When reading, data must match what was written 2 cycles ago"
endproperty

// Timeline:
// Cycle 1: write_data = 0xAB  ← $past(write_data, 2) at cycle 3
// Cycle 2: write_data = 0xFF
// Cycle 3: read_valid=1, read_data must == 0xAB  ✓
