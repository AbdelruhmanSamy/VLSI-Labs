module simple_carry_adder #(
    parameter WIDTH = 8
)(
    input [WIDTH-1:0] a,
    input [WIDTH-1:0] b,
    input cin,
    output [WIDTH-1:0] sum,
    output cout
);
    // Explicit full adder generation for better synthesis
    wire [WIDTH:0] carry;
    assign carry[0] = cin;
    assign cout = carry[WIDTH];

    genvar i;
    generate
        for (i = 0; i < WIDTH; i = i + 1) begin : gen_adder
            full_adder fa (
                .a(a[i]),
                .b(b[i]),
                .cin(carry[i]),
                .sum(sum[i]),
                .cout(carry[i+1])
            );
        end
    endgenerate

    // Full adder module definition
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