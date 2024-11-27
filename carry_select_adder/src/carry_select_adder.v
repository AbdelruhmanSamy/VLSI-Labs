module carry_select_adder #(
    parameter WIDTH = 8,
    parameter BLOCK_SIZE = 4
)(
    input [WIDTH-1:0] a,
    input [WIDTH-1:0] b,
    input cin,
    output [WIDTH-1:0] sum,
    output cout
);
    wire [WIDTH/BLOCK_SIZE:0] carry_chain;
    wire [WIDTH-1:0] block_sums;
    
    assign carry_chain[0] = cin;
    assign cout = carry_chain[WIDTH/BLOCK_SIZE];

    // Explicit block generation
    generate
        genvar i;
        for (i = 0; i < WIDTH/BLOCK_SIZE; i = i + 1) begin : block_gen
            wire [BLOCK_SIZE-1:0] sum_0, sum_1;
            wire carry_0, carry_1;

            // Ripple carry blocks for cin = 0 and cin = 1
            ripple_block #(.WIDTH(BLOCK_SIZE)) block_0 (
                .a(a[BLOCK_SIZE*i +: BLOCK_SIZE]),
                .b(b[BLOCK_SIZE*i +: BLOCK_SIZE]),
                .cin(1'b0),
                .sum(sum_0),
                .cout(carry_0)
            );

            ripple_block #(.WIDTH(BLOCK_SIZE)) block_1 (
                .a(a[BLOCK_SIZE*i +: BLOCK_SIZE]),
                .b(b[BLOCK_SIZE*i +: BLOCK_SIZE]),
                .cin(1'b1),
                .sum(sum_1),
                .cout(carry_1)
            );

            // Select based on previous carry
            assign sum[BLOCK_SIZE*i +: BLOCK_SIZE] = 
                carry_chain[i] ? sum_1 : sum_0;
            assign carry_chain[i+1] = 
                carry_chain[i] ? carry_1 : carry_0;
        end
    endgenerate

    // Parameterized Ripple Block
    module ripple_block #(
        parameter WIDTH = 4
    )(
        input [WIDTH-1:0] a,
        input [WIDTH-1:0] b,
        input cin,
        output [WIDTH-1:0] sum,
        output cout
    );
        wire [WIDTH:0] carry;
        assign carry[0] = cin;
        assign cout = carry[WIDTH];

        genvar j;
        generate
            for (j = 0; j < WIDTH; j = j + 1) begin : ripple_gen
                full_adder fa (
                    .a(a[j]),
                    .b(b[j]),
                    .cin(carry[j]),
                    .sum(sum[j]),
                    .cout(carry[j+1])
                );
            end
        endgenerate

        // Full adder module (same as before)
        module full_adder(
            input a,
            input b,
            input cin,
            output sum,
            output cout
        );
            assign sum = a ^ b ^ cin;
            assign cout = (a & b) | (cin & (a ^ b));
        endmodule
    endmodule
endmodule