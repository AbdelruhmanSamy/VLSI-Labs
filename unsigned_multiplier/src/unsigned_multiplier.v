module unsigned_multiplier #(
    parameter WIDTH = 8
)(
    input [WIDTH-1:0] a,
    input [WIDTH-1:0] b,
    output [2*WIDTH-1:0] product
);
    reg [2*WIDTH-1:0] temp_product;
    integer i;

    always @(*) begin
        temp_product = {(2*WIDTH){1'b0}};
        for (i = 0; i < WIDTH; i = i + 1) begin
            if (b[i])
                temp_product = temp_product + ({WIDTH{1'b0}, a} << i);
        end
    end

    assign product = temp_product;
endmodule