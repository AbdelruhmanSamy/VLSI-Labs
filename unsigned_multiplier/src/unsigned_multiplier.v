module unsigned_multiplier #(
    parameter WIDTH = 8
)(
    input [WIDTH-1:0] a,
    input [WIDTH-1:0] b,
    output reg [2*WIDTH-1:0] product
);
    wire [2*WIDTH-1:0] partial_products[WIDTH-1:0];
    genvar i;

    // Generate partial products
    generate
        for (i = 0; i < WIDTH; i = i + 1) begin : gen_partial_products
            assign partial_products[i] = b[i] ? (a << i) : {2*WIDTH{1'b0}};
        end
    endgenerate

    // Summing up the partial products
    integer j;
    always @(*) begin
        product = {2*WIDTH{1'b0}};
        for (j = 0; j < WIDTH; j = j + 1) begin
            product = product + partial_products[j];
        end
    end
endmodule
