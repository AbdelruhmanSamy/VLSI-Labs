module adder_tb();
    // Parameters
    parameter WIDTH = 8;
    
    // Signals for Simple Carry Adder
    reg [WIDTH-1:0] a_simple, b_simple;
    reg cin_simple;
    wire [WIDTH-1:0] sum_simple;
    wire cout_simple;

    // Signals for Carry Select Adder
    reg [WIDTH-1:0] a_select, b_select;
    reg cin_select;
    wire [WIDTH-1:0] sum_select;
    wire cout_select;

    // Instantiate Adders
    simple_carry_adder_nl  simple_adder (
        .a(a_simple),
        .b(b_simple),
        .cin(cin_simple),
        .sum(sum_simple),
        .cout(cout_simple)
    );

    simple_carry_adder_pnl  simple_adder2 (
        .a(a_simple),
        .b(b_simple),
        .cin(cin_simple),
        .sum(sum_simple),
        .cout(cout_simple)
    );

    carry_select_adder_nl  select_adder (
        .a(a_select),
        .b(b_select),
        .cin(cin_select),
        .sum(sum_select),
        .cout(cout_select)
    );

    carry_select_adder_pnl  select_adder2 (
        .a(a_select),
        .b(b_select),
        .cin(cin_select),
        .sum(sum_select),
        .cout(cout_select)
    );

    // Testbench stimulus and verification
    initial begin
        // Test case 1: Basic addition without carry
        a_simple = 8'd100; b_simple = 8'd50; cin_simple = 0;
        a_select = 8'd100; b_select = 8'd50; cin_select = 0;
        #10;
        $display("Simple Adder Test 1: %d + %d = %d (Cout: %b)", 
                  a_simple, b_simple, sum_simple, cout_simple);
        $display("Select Adder Test 1: %d + %d = %d (Cout: %b)", 
                  a_select, b_select, sum_select, cout_select);

        // Test case 2: Addition with carry-in
        a_simple = 8'd200; b_simple = 8'd100; cin_simple = 1;
        a_select = 8'd200; b_select = 8'd100; cin_select = 1;
        #10;
        $display("Simple Adder Test 2: %d + %d + Cin = %d (Cout: %b)", 
                  a_simple, b_simple, sum_simple, cout_simple);
        $display("Select Adder Test 2: %d + %d + Cin = %d (Cout: %b)", 
                  a_select, b_select, sum_select, cout_select);

        // Test case 3: Maximum value addition
        a_simple = 8'hFF; b_simple = 8'h01; cin_simple = 0;
        a_select = 8'hFF; b_select = 8'h01; cin_select = 0;
        #10;
        $display("Simple Adder Test 3: %d + %d = %d (Cout: %b)", 
                  a_simple, b_simple, sum_simple, cout_simple);
        $display("Select Adder Test 3: %d + %d = %d (Cout: %b)", 
                  a_select, b_select, sum_select, cout_select);

        $finish;
    end
endmodule