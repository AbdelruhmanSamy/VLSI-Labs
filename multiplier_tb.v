module multiplier_tb();
    // Parameters
    parameter WIDTH = 8;
    parameter STAGES = 3;

    // Signals for Unsigned Multiplier
    reg [WIDTH-1:0] a_unsigned, b_unsigned;
    wire [2*WIDTH-1:0] product_unsigned;

    // Signals for Pipelined Multiplier
    reg clk, reset;
    reg [WIDTH-1:0] a_pipelined, b_pipelined;
    wire [2*WIDTH-1:0] product_pipelined;

    // Instantiate Multipliers
    unsigned_multiplier #(.WIDTH(WIDTH)) unsigned_mult (
        .a(a_unsigned),
        .b(b_unsigned),
        .product(product_unsigned)
    );

    pipelined_multiplier #(.WIDTH(WIDTH), .STAGES(STAGES)) pipelined_mult (
        .clk(clk),
        .reset(reset),
        .a(a_pipelined),
        .b(b_pipelined),
        .product(product_pipelined)
    );

    // Clock generation
    always #5 clk = ~clk;

    // Testbench stimulus and verification
    initial begin
        // Initialize
        clk = 0;
        reset = 1;

        // Test case 1: Basic multiplication
        a_unsigned = 8'd15; b_unsigned = 8'd10;
        a_pipelined = 8'd15; b_pipelined = 8'd10;
        #10 reset = 0;
        #10;
        $display("Unsigned Multiplier Test 1: %d * %d = %d", 
                  a_unsigned, b_unsigned, product_unsigned);
        $display("Pipelined Multiplier Test 1: %d * %d = %d", 
                  a_pipelined, b_pipelined, product_pipelined);

        // Test case 2: Larger numbers
        a_unsigned = 8'd100; b_unsigned = 8'd25;
        a_pipelined = 8'd100; b_pipelined = 8'd25;
        #20;
        $display("Unsigned Multiplier Test 2: %d * %d = %d", 
                  a_unsigned, b_unsigned, product_unsigned);
        $display("Pipelined Multiplier Test 2: %d * %d = %d", 
                  a_pipelined, b_pipelined, product_pipelined);

        // Test case 3: Maximum values
        a_unsigned = 8'hFF; b_unsigned = 8'hFF;
        a_pipelined = 8'hFF; b_pipelined = 8'hFF;
        #20;
        $display("Unsigned Multiplier Test 3: %d * %d = %d", 
                  a_unsigned, b_unsigned, product_unsigned);
        $display("Pipelined Multiplier Test 3: %d * %d = %d", 
                  a_pipelined, b_pipelined, product_pipelined);

        $finish;
    end
endmodule