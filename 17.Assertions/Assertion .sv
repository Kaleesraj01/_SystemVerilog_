// module handshake_checker (
    input  logic clk,
    input  logic reset,
    input  logic valid,
    input  logic ready,
    input  logic [7:0] data_in,
    input  logic [7:0] data_out
);

    // ─────────────────────────────────────────
    // SEQUENCE: valid followed by ready
    // ─────────────────────────────────────────
    sequence valid_ready_handshake;
        @(posedge clk) valid ##[1:3] ready;
        // valid goes high, then ready goes high within 1-3 cycles
    endsequence

    // ─────────────────────────────────────────
    // PROPERTY: if valid, ready must come
    // ─────────────────────────────────────────
    property p_handshake;
        @(posedge clk)
        disable iff (reset)
        valid |-> ##[1:3] ready;
        // "If valid, ready must arrive within 3 cycles"
    endproperty

    // ─────────────────────────────────────────
    // ASSERTION: enforce the property
    // ─────────────────────────────────────────
    assert_handshake: assert property (p_handshake)
        $display("Handshake OK at time %0t", $time);
    else
        $error("FAIL: Ready did not come within 3 cycles of Valid!");

    // ─────────────────────────────────────────
    // COVER: track if handshake ever happens
    // ─────────────────────────────────────────
    cover_handshake: cover property (p_handshake);
    // Useful for: "Did my testbench ever exercise this scenario?"

endmodule
