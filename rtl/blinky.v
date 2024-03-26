module blinky (
    input  wire i_clk_25mhz,
    output reg  o_led
);

initial o_led = 0;

reg [24:0] cnt = 0;

always @(posedge i_clk_25mhz) begin
    cnt <= cnt + 1;
    if (cnt >= 12_500_000) begin
        cnt <= 0;
        o_led <= !o_led;
    end
end

endmodule