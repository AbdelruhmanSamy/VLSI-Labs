module pipelined_multiplier #(
    parameter WIDTH = 8,
    parameter STAGES = 3
)(
    input clk,
    input reset,
    input [WIDTH-1:0] a,
    input [WIDTH-1:0] b,
    output reg [2*WIDTH-1:0] product
);
    // Explicit pipeline registers
    reg [WIDTH-1:0] a_pipe [STAGES-1:0];
    reg [WIDTH-1:0] b_pipe [STAGES-1:0];
    reg [2*WIDTH-1:0] partial_prod [STAGES-1:0];

    integer stage;

    always @(posedge clk or posedge reset) begin
        if (reset) begin
            // Explicit reset of all registers
            for (stage = 0; stage < STAGES; stage = stage + 1) begin
                a_pipe[stage] <= 0;
                b_pipe[stage] <= 0;
                partial_prod[stage] <= 0;
            end
            product <= 0;
        end else begin
            // Shift inputs
            a_pipe[0] <= a;
            b_pipe[0] <= b;
            for (stage = 1; stage < STAGES; stage = stage + 1) begin
                a_pipe[stage] <= a_pipe[stage-1];
                b_pipe[stage] <= b_pipe[stage-1];
            end

            // Compute partial products
            partial_prod[0] <= a_pipe[0] * b_pipe[0];
            for (stage = 1; stage < STAGES; stage = stage + 1) begin
                partial_prod[stage] <= partial_prod[stage-1];
            end

            // Final output
            product <= partial_prod[STAGES-1];
        end
    end
endmodule