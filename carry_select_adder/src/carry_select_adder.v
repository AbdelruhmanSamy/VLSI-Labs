module carry_select_adder #(
    parameter integer WIDTH = 8,
    parameter integer BLOCK_SIZE = 4
)(
    input wire [WIDTH-1:0] a,
    input wire [WIDTH-1:0] b,
    input wire cin,
    output wire [WIDTH-1:0] sum,
    output wire cout
);
    wire [WIDTH/BLOCK_SIZE:0] carry_chain;
    
    assign carry_chain[0] = cin;
    assign cout = carry_chain[WIDTH/BLOCK_SIZE];

    genvar i;
    generate
        for (i = 0; i < WIDTH/BLOCK_SIZE; i = i + 1) begin : block_gen
            wire [BLOCK_SIZE-1:0] sum_0, sum_1;
            wire carry_0, carry_1;

            // Block for cin = 0
            block_adder #(.WIDTH(BLOCK_SIZE)) block0 (
                .a(a[BLOCK_SIZE*i +: BLOCK_SIZE]),
                .b(b[BLOCK_SIZE*i +: BLOCK_SIZE]),
                .cin(1'b0),
                .sum(sum_0),
                .cout(carry_0)
            );

            // Block for cin = 1
            block_adder #(.WIDTH(BLOCK_SIZE)) block1 (
                .a(a[BLOCK_SIZE*i +: BLOCK_SIZE]),
                .b(b[BLOCK_SIZE*i +: BLOCK_SIZE]),
                .cin(1'b1),
                .sum(sum_1),
                .cout(carry_1)
            );

            // Multiplexing based on previous carry
            assign sum[BLOCK_SIZE*i +: BLOCK_SIZE] = 
                carry_chain[i] ? sum_1 : sum_0;
            assign carry_chain[i+1] = 
                carry_chain[i] ? carry_1 : carry_0;
        end
    endgenerate
endmodule

module block_adder #(
    parameter integer WIDTH = 4
)(
    input wire [WIDTH-1:0] a,
    input wire [WIDTH-1:0] b,
    input wire cin,
    output wire [WIDTH-1:0] sum,
    output wire cout
);
    wire [WIDTH:0] carry;
    
    assign carry[0] = cin;
    assign cout = carry[WIDTH];

    genvar j;
    generate
        for (j = 0; j < WIDTH; j = j + 1) begin : bit_gen
            assign sum[j] = a[j] ^ b[j] ^ carry[j];
            assign carry[j+1] = (a[j] & b[j]) | (a[j] & carry[j]) | (b[j] & carry[j]);
        end
    endgenerate
endmodule