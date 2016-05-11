# Modulo & binary devices listed below:
# ====================================
# Binary Adder
# Binary Multiplier
# Binary Hierarchical Multiplier
# Modulo Adder
# Modulo Adder Espresso-based
# Index Modulo Multiplier
# Positional Multiplication with Forward Conversion
# Modulo Multiplier LUT-based
# Modulo Multiplier Espresso-based
# Modulo Multiplier on the basis of squares difference
# Modulo Multiplier on the basis of partial sums
# Modulo 2^n Multiplier
# Modulo 2^n-1 Multiplier
# Modulo 2^n+1 Multiplier
# Forward Converter Universal
# Reverse Converter Universal
# Forward Converter Special
# Reverse Converter Special
# Roma's experiment #1
# Roma's experiment #2
	
#our %modh = ();

$modh{bin_add}{device} = "bin_add";
$modh{bin_add}{prompt} = "Binary Adder";
$modh{bin_add}{range} = [2, 128];
$modh{bin_add}{prime} = undef;
$modh{bin_add}{odd} = undef;
$modh{bin_add}{vlsi}{process} = ["compile", "compile+", "compile_ultra"];
$modh{bin_add}{vlsi}{headers} = ["# of bits", "Timing", "Area"];
$modh{bin_add}{fpga}{headers} = ["# of bits", "Path", "LE"];
$modh{bin_add}{url} = undef;
$modh{bin_add}{url_patt} = undef;
$modh{bin_add}{top} = "adder_2";
$modh{bin_add}{testbench} = undef;
$modh{bin_add}{v} = "adders.v";
#module adder_2 (dataout, dataa, datab);

$modh{bin_mult}{device} = "bin_mult";
$modh{bin_mult}{prompt} = "Binary Multiplier";
$modh{bin_mult}{range} = [2, 64];
$modh{bin_mult}{vlsi}{process} = ["compile", "compile+", "compile_ultra"];
$modh{bin_mult}{vlsi}{headers} = ["# of bits", "Timing", "Area"];
$modh{bin_mult}{fpga}{headers} = ["# of bits", "Path", "LE"];
$modh{bin_mult}{url} = "http://vscripts.ru/dima/binary_mult.php";
$modh{bin_mult}{url_patt} = "http://vscripts.ru/dima/binary_mult.php?bit=4";
$modh{bin_mult}{top} = "mult_2";
$modh{bin_mult}{testbench} = undef;
$modh{bin_mult}{v} = "multipliers.v";
#module mult_2(dataout, dataa, datab);

$modh{bin_hier_mult}{device} = "bin_hier_mult";
$modh{bin_hier_mult}{prompt} = "Binary Hierarchical Multiplier";
$modh{bin_hier_mult}{range} = [4, 64];
$modh{bin_hier_mult}{vlsi}{process} = undef;
$modh{bin_hier_mult}{vlsi}{headers} = ["# of bits", "Timing", "Area"];
$modh{bin_hier_mult}{fpga}{headers} = ["# of bits", "Path", "LE"];
$modh{bin_hier_mult}{url} = "http://vscripts.ru/2013/high-bit-int-multiplication-hierarchical.php";
$modh{bin_hier_mult}{url_patt} = "http://vscripts.ru/2013/high-bit-int-multiplication-hierarchical.php?bit=4";
$modh{bin_hier_mult}{top} = "hierarchical_binary_multiplication_4";
$modh{bin_hier_mult}{testbench} = "atest_bench";
#module hierarchical_binary_multiplication_4 (A, B, out);
#module atest_bench();
#	hierarchical_binary_multiplication_4 r1(in1, in2, out);
#endmodule

# !!!!!!!!!!!!!!!!!!!!!!!!!!!!!
# generator range = [3, 61] prime
# excel range = [3, 251] prime
$modh{mod_add}{device} = "mod_add";
$modh{mod_add}{prompt} = "Modulo Adder";
$modh{mod_add}{range} = [3, 251];
$modh{mod_add}{prime} = 1;
$modh{mod_add}{vlsi}{process} = ["compile", "compile+", "compile_ultra"];
$modh{mod_add}{vlsi}{headers} = ["# of mod", "Timing", "Area"];
$modh{mod_add}{fpga}{headers} = ["# of mod", "Path", "LE"];
$modh{mod_add}{url} = "http://vscripts.ru/dima/all_adders.php";
$modh{mod_add}{url_patt} = "http://vscripts.ru/dima/all_adders.php?n=3";
$modh{mod_add}{top} = "sum_modulo_3";
$modh{mod_add}{testbench} = undef;
#module sum_modulo_3 (A, B, S);

$modh{mod_sum_espr}{device} = "mod_sum_espr";
$modh{mod_sum_espr}{prompt} = "Modulo Adder Espresso-based";
$modh{mod_sum_espr}{range} = [3, 251];
$modh{mod_sum_espr}{prime} = 1;
$modh{mod_sum_espr}{vlsi}{process} = ["compile_ultra"];
$modh{mod_sum_espr}{vlsi}{headers} = ["# of mod", "Timing", "Area"];
$modh{mod_sum_espr}{fpga}{headers} = ["# of mod", "Path", "LE"];
$modh{mod_sum_espr}{url} = undef;
$modh{mod_sum_espr}{url_patt} = undef;
$modh{mod_sum_espr}{top} = "sum_modulo_3";
$modh{mod_sum_espr}{testbench} = "atest_bench";
#module sum_modulo_3 (A, B, X);
#module atest_bench();
#    sum_modulo_3 sm1(in1, in2, out);
#endmodule

$modh{idx_mod_mult}{device} = "idx_mod_mult";
$modh{idx_mod_mult}{prompt} = "Index Modulo Multiplier";
$modh{idx_mod_mult}{range} = [3, 251];
$modh{idx_mod_mult}{prime} = 1;
$modh{idx_mod_mult}{vlsi}{process} = ["compile", "compile_ultra"];
$modh{idx_mod_mult}{vlsi}{headers} = ["# of mod", "Timing", "Area"];
$modh{idx_mod_mult}{fpga}{headers} = ["# of mod", "Path", "LE"];
$modh{idx_mod_mult}{url} = "http://vscripts.ru/2012/index-modulo-multiplication.php";
$modh{idx_mod_mult}{url_patt} = "http://vscripts.ru/2012/index-modulo-multiplication.php?p=3&type=0&case=on";
$modh{idx_mod_mult}{top} = "multiplication_mod_3";
$modh{idx_mod_mult}{testbench} = "atop_testbench";
#module multiplication_mod_3(inp1, inp2, out);
#module atop_testbench();
#	multiplication_mod_3 mul1(inp1, inp2, out);
#endmodule

$modh{mod_mult_pmfc}{device} = "mod_mult_pmfc";
$modh{mod_mult_pmfc}{prompt} = "Positional Multiplication with Forward Conversion";
$modh{mod_mult_pmfc}{range} = [3, 251];
$modh{mod_mult_pmfc}{prime} = 1;
$modh{mod_mult_pmfc}{vlsi}{process} = ["compile", "compile+", "compile_ultra"];
$modh{mod_mult_pmfc}{vlsi}{headers} = ["# of mod", "Timing", "Area"];
$modh{mod_mult_pmfc}{fpga}{headers} = ["# of mod", "Path", "LE"];
$modh{mod_mult_pmfc}{url} = "http://vscripts.ru/2015/index-modulo-multiplication-def.php";
$modh{mod_mult_pmfc}{url_patt} = "http://vscripts.ru/2015/index-modulo-multiplication-def.php?modules=7&type=0";
$modh{mod_mult_pmfc}{top} = "mult_mod_7";
$modh{mod_mult_pmfc}{testbench} = "a_test_bench";
#module mult_mod_7 (in1, in2, out);
#module a_test_bench();
#	mult_mod_7 mm (in1, in2, out);
#endmodule

$modh{mod_mult_lut}{device} = "mod_mult_lut";
$modh{mod_mult_lut}{prompt} = "Modulo Multiplier LUT-based";
$modh{mod_mult_lut}{range} = [3, 251];
$modh{mod_mult_lut}{prime} = 1;
$modh{mod_mult_lut}{vlsi}{process} = ["compile_ultra"];
$modh{mod_mult_lut}{vlsi}{headers} = ["# of mod", "Timing", "Area"];
$modh{mod_mult_lut}{fpga}{headers} = ["# of mod", "Path", "LE"];
$modh{mod_mult_lut}{url} = "http://vscripts.ru/2015/index-modulo-multiplication-table.php";
$modh{mod_mult_lut}{url_patt} = "http://vscripts.ru/2015/index-modulo-multiplication-table.php?p=7";
$modh{mod_mult_lut}{top} = "mult_mod_7";
$modh{mod_mult_lut}{testbench} = "a_test_bench";
#module mult_mod_7 (in1, in2, out);
#module a_test_bench();
#	mult_mod_7 mm (in1, in2, out);
#endmodule

$modh{mod_mult_espr}{device} = "mod_mult_espr";
$modh{mod_mult_espr}{prompt} = "Modulo Multiplier Espresso-based";
$modh{mod_mult_espr}{range} = [3, 251];
$modh{mod_mult_espr}{prime} = 1;
$modh{mod_mult_espr}{vlsi}{process} = ["compile_ultra"];
$modh{mod_mult_espr}{vlsi}{headers} = ["# of mod", "Timing", "Area"];
$modh{mod_mult_espr}{fpga}{headers} = ["# of mod", "Path", "LE"];
$modh{mod_mult_espr}{url} = undef;
$modh{mod_mult_espr}{url_patt} = undef;
$modh{mod_mult_espr}{top} = "mul_modulo_3";
$modh{mod_mult_espr}{testbench} = "atest_bench";
#module mul_modulo_3 (A, B, X);
#module atest_bench();
#    mul_modulo_3 sm1(in1, in2, out);
#endmodule

$modh{mod_mult_sqr}{device} = "mod_mult_sqr";
$modh{mod_mult_sqr}{prompt} = "Modulo Multiplier on the basis of squares difference";
$modh{mod_mult_sqr}{range} = [3, 251];
$modh{mod_mult_sqr}{prime} = 1;
$modh{mod_mult_sqr}{vlsi}{process} = ["compile_ultra"];
$modh{mod_mult_sqr}{vlsi}{headers} = ["# of mod", "Timing", "Area"];
$modh{mod_mult_sqr}{fpga}{headers} = ["# of mod", "Path", "LE"];
$modh{mod_mult_sqr}{url} = "http://vscripts.ru/2012/index-modulo-multiplication-sqr.php";
$modh{mod_mult_sqr}{url_patt} = "http://vscripts.ru/2012/index-modulo-multiplication-sqr.php?p=7";
$modh{mod_mult_sqr}{top} = "multiplication_mod_7";
$modh{mod_mult_sqr}{testbench} = "atop_testbench";
#module multiplication_mod_7(inp1, inp2, out);
#module atop_testbench();
#	multiplication_mod_7 mul1(inp1, inp2, out);
#endmodule

$modh{mod_mult_sum}{device} = "mod_mult_sum";
$modh{mod_mult_sum}{prompt} = "Modulo Multiplier on the basis of partial sums";
$modh{mod_mult_sum}{range} = [3, 251];
$modh{mod_mult_sum}{prime} = 1;
$modh{mod_mult_sum}{vlsi}{process} = ["compile_ultra"];
$modh{mod_mult_sum}{vlsi}{headers} = ["# of mod", "Timing", "Area"];
$modh{mod_mult_sum}{fpga}{headers} = ["# of mod", "Path", "LE"];
$modh{mod_mult_sum}{url} = "http://vscripts.ru/2015/index-modulo-multiplication-sum.php";
$modh{mod_mult_sum}{url_patt} = "http://vscripts.ru/2015/index-modulo-multiplication-sum.php?p=7";
$modh{mod_mult_sum}{top} = "mult_mod_7";
$modh{mod_mult_sum}{testbench} = "a_test_bench";
#module mult_mod_7 (in1, in2, out);
#module a_test_bench();
#	mult_mod_7 mm (in1, in2, out);
#endmodule

$modh{'mult_mod_2^n'}{device} = "mult_mod_2^n";
$modh{'mult_mod_2^n'}{prompt} = "Modulo 2^n Multiplier";
$modh{'mult_mod_2^n'}{range} = [3, 43];
$modh{'mult_mod_2^n'}{vlsi}{process} = ["compile", "compile_ultra"];
$modh{'mult_mod_2^n'}{vlsi}{headers} = ["# of bits", "Timing", "Area"];
$modh{'mult_mod_2^n'}{fpga}{headers} = ["# of bits", "Path", "LE"];
$modh{'mult_mod_2^n'}{url} = "http://vscripts.ru/2013/multiplication-mod-2-pow-n.php";
$modh{'mult_mod_2^n'}{url_patt} = "http://vscripts.ru/2013/multiplication-mod-2-pow-n.php?n=3";
$modh{'mult_mod_2^n'}{top} = "mul_channel_2_pow_n";
$modh{'mult_mod_2^n'}{testbench} = "atest_bench";
#module mul_channel_2_pow_n (A, B, out);
#module atest_bench();
#	mul_channel_2_pow_n r1(in1, in2, out);
#endmodule

$modh{'mult_mod_2^n-1'}{device} = "mult_mod_2^n-1";
$modh{'mult_mod_2^n-1'}{prompt} = "Modulo 2^n-1 Multiplier";
$modh{'mult_mod_2^n-1'}{range} = [3, 43];
$modh{'mult_mod_2^n-1'}{vlsi}{process} = ["compile", "compile_ultra"];
$modh{'mult_mod_2^n-1'}{vlsi}{headers} = ["# of bits", "Timing", "Area"];
$modh{'mult_mod_2^n-1'}{fpga}{headers} = ["# of bits", "Path", "LE"];
$modh{'mult_mod_2^n-1'}{url} = "http://vscripts.ru/2013/multiplication-mod-2-pow-n-minus-1.php";
$modh{'mult_mod_2^n-1'}{url_patt} = "http://vscripts.ru/2013/multiplication-mod-2-pow-n-minus-1.php?n=3";
$modh{'mult_mod_2^n-1'}{top} = "mul_channel_2_pow_n_minus_1";
$modh{'mult_mod_2^n-1'}{testbench} = "atest_bench";
#module mul_channel_2_pow_n_minus_1 (a, b, out);
#module atest_bench();
#	mul_channel_2_pow_n_minus_1 r1(in1, in2, out);
#endmodule

$modh{'mult_mod_2^n+1'}{device} = "mult_mod_2^n+1";
$modh{'mult_mod_2^n+1'}{prompt} = "Modulo 2^n+1 Multiplier";
$modh{'mult_mod_2^n+1'}{range} = [3, 43];
$modh{'mult_mod_2^n+1'}{vlsi}{process} = ["compile", "compile_ultra"];
$modh{'mult_mod_2^n+1'}{vlsi}{headers} = ["# of bits", "Timing", "Area"];
$modh{'mult_mod_2^n+1'}{fpga}{headers} = ["# of bits", "Path", "LE"];
$modh{'mult_mod_2^n+1'}{url} = "http://vscripts.ru/2013/multiplication-mod-2-pow-n-plus-1.php";
$modh{'mult_mod_2^n+1'}{url_patt} = "http://vscripts.ru/2013/multiplication-mod-2-pow-n-plus-1.php?n=3";
$modh{'mult_mod_2^n+1'}{top} = "mul_modulo_9";
$modh{'mult_mod_2^n+1'}{testbench} = "atest_bench";
#module mul_modulo_9 (A, B, out);
#module atest_bench();
#	mul_modulo_9 r1(in1, in2, out);
#endmodule

# !!!!!!!!!!!!!!!!!!!!!!!!!!!!!
# generator range = [4, 64] bits
# excel range = [3, 251] mod
$modh{fwd_conv_uni}{device} = "fwd_conv_uni";
$modh{fwd_conv_uni}{prompt} = "Forward Converter Universal";
$modh{fwd_conv_uni}{range} = [3, 251];
$modh{fwd_conv_uni}{prime} = 1;
$modh{fwd_conv_uni}{vlsi}{process} = ["compile", "compile_ultra"];
$modh{fwd_conv_uni}{vlsi}{headers} = ["# of bits!!!=Name", "# of mod", "Timing", "Area"];
$modh{fwd_conv_uni}{fpga}{headers} = ["Name", "# of mod", "Path", "LE"];
$modh{fwd_conv_uni}{url} = "http://vscripts.ru/2013/forward-converter-universal.php";
$modh{fwd_conv_uni}{url_patt} = "http://vscripts.ru/2013/forward-converter-universal.php?bit=4&modules=7+5+3&type=0";
$modh{fwd_conv_uni}{'Axis-X'} = "Axis-X is # of modulo";
$modh{fwd_conv_uni}{top} = "forward_conv";
$modh{fwd_conv_uni}{testbench} = "atest_bench";
#module forward_conv (out0, out1, out2, in);
#module atest_bench();
#	forward_conv forv1 (out0, out1, out2, in);
#endmodule

# !!!!!!!!!!!!!!!!!!!!!!!!!!!!!
# bit=64, 128, 256, 512
# modules=43, 2999
# bit_block=[1; 8]
# reduction_stage=1, 2
$modh{fwd_conv_uni_new}{device} = "fwd_conv_uni_new";
$modh{fwd_conv_uni_new}{prompt} = "Forward Converter Universal";
$modh{fwd_conv_uni_new}{vlsi}{process} = ["compile", "compile_ultra"];
$modh{fwd_conv_uni_new}{url} = "http://icdm.ippm.ru/2015/forward-converter-universal.php";
$modh{fwd_conv_uni_new}{url_patt} = "http://icdm.ippm.ru/2015/forward-converter-universal.php?bit=8&modules=7+5+3&bit_block=0&reduction_stage=1&type=0&use_table=on";
$modh{fwd_conv_uni_new}{top} = "forward_conv";
$modh{fwd_conv_uni_new}{testbench} = "atest_bench";
#module forward_conv (out0, out1, out2, in);
#module atest_bench();
#	forward_conv forv1 (out0, out1, out2, in);
#endmodule

$modh{fwd_conv_pyr}{device} = "fwd_conv_pyr";
$modh{fwd_conv_pyr}{prompt} = "Forward Converter Pyramid";
$modh{fwd_conv_pyr}{vlsi}{process} = ["compile", "compile_ultra"];
$modh{fwd_conv_pyr}{url} = "http://icdm.ippm.ru/2015/forward-converter-pyramid.php";
$modh{fwd_conv_pyr}{url_patt} = "http://icdm.ippm.ru/2015/forward-converter-pyramid.php?bit=16&modules=7+5+3";
$modh{fwd_conv_pyr}{top} = "forward_conv";
$modh{fwd_conv_pyr}{testbench} = "atest_bench";
#module forward_conv (out0, out1, out2, in);
#module atest_bench();
#	forward_conv forv1 (out0, out1, out2, in);
#endmodule

# !!!!!!!!!!!!!!!!!!!!!!!!!!!!!
$modh{rev_conv_crt2}{device} = "rev_conv_crt2";
$modh{rev_conv_crt2}{prompt} = "Reverse Converter Universal";
$modh{rev_conv_crt2}{range} = [4, 128]; # bits
$modh{rev_conv_crt2}{odd} = 0; # !!!
$modh{rev_conv_crt2}{vlsi}{process} = ["compile", "compile_ultra"];
$modh{rev_conv_crt2}{vlsi}{headers} = ["# of bits", "Timing", "Area"];
$modh{rev_conv_crt2}{fpga}{headers} = ["# of bits", "Path", "LE"];
$modh{rev_conv_crt2}{url} = "http://vscripts.ru/2013/reverse-converter-crt2-based.php";
$modh{rev_conv_crt2}{url_patt} = "http://vscripts.ru/2013/reverse-converter-crt2-based.php?modules=7+5+3&type=0";
$modh{rev_conv_crt2}{top} = "reverse_conv";
$modh{rev_conv_crt2}{testbench} = "atest_bench";
#module reverse_conv (in0, in1, in2, out);
#module atest_bench();
#	reverse_conv r1 (in0, in1, in2, out);
#endmodule

# !!!!!!!!!!!!!!!!!!!!!!!!!!!!!
# generator range = [3, 43]
# excel range = [3, 64] bits
$modh{fwd_conv_2supn}{device} = "fwd_conv_2supn";
$modh{fwd_conv_2supn}{prompt} = "Forward Converter Special";
$modh{fwd_conv_2supn}{range} = [3, 64];
$modh{fwd_conv_2supn}{vlsi}{process} = ["compile", "compile_ultra"];
$modh{fwd_conv_2supn}{vlsi}{headers} = ["# of bits!!!=Name", "# of bits", "Timing", "Area"];
$modh{fwd_conv_2supn}{fpga}{headers} = ["Name", "# of bits", "Path", "LE"];
$modh{fwd_conv_2supn}{url} = "http://vscripts.ru/2012/forward-converter-2supn-generator.php";
$modh{fwd_conv_2supn}{url_patt} = "http://vscripts.ru/2012/forward-converter-2supn-generator.php?n=3&max_val=8";
$modh{fwd_conv_2supn}{'Axis-X'} = "Axis-X is # of bits";
$modh{fwd_conv_2supn}{top} = "forward_converter";
$modh{fwd_conv_2supn}{testbench} = "atest_bench";
#module forward_converter (x, x_mod9, x_mod8, x_mod7);
#module atest_bench();
#	forward_converter r1(x, x1, x2, x3);
#endmodule

# !!!!!!!!!!!!!!!!!!!!!!!!!!!!!
# generator range = [3, 43]
# excel range = [3, 43]
$modh{rev_conv_2supn}{device} = "rev_conv_2supn";
$modh{rev_conv_2supn}{prompt} = "Reverse Converter Special";
$modh{rev_conv_2supn}{range} = [3, 43];
$modh{rev_conv_2supn}{vlsi}{process} = ["compile", "compile_ultra"];
$modh{rev_conv_2supn}{vlsi}{headers} = ["# of bits", "Timing", "Area"];
$modh{rev_conv_2supn}{fpga}{headers} = ["# of bits", "Path", "LE"];
$modh{rev_conv_2supn}{url} = "http://vscripts.ru/2012/reverse-converter-2supn-generator.php";
$modh{rev_conv_2supn}{url_patt} = "http://vscripts.ru/2012/reverse-converter-2supn-generator.php?n=3&type=0";
$modh{rev_conv_2supn}{top} = "reverse_converter_9_8_7";
$modh{rev_conv_2supn}{testbench} = "atest_bench";
#module reverse_converter_9_8_7 (x1, x2, x3, out);
#module atest_bench();
#	reverse_converter_9_8_7 r1(x1, x2, x3, out);
#endmodule

$modh{'ex#1'}{device} = "ex#1";
$modh{'ex#1'}{prompt} = "Roma's experiment #1";
$modh{'ex#1'}{range} = undef;
$modh{'ex#1'}{vlsi}{process} = ["compile", "compile_ultra"];
$modh{'ex#1'}{vlsi}{headers} = ["Test name", "# of bits", "# of mod", "Timing", "Area"];
$modh{'ex#1'}{fpga}{headers} = ["Test name", "# of bits", "# of mod", "Path", "LE"];
$modh{'ex#1'}{url} = "http://vscripts.ru/2013/forward-converter-universal.php";
$modh{'ex#1'}{url_patt} = undef;
$modh{rev_conv_2supn}{top} = "forward_conv";
$modh{rev_conv_2supn}{testbench} = undef;
#module forward_conv (out0, in);

$modh{'ex#2'}{device} = "ex#2";
$modh{'ex#2'}{prompt} = "Roma's experiment #2";
$modh{'ex#2'}{range} = undef;
$modh{'ex#2'}{vlsi}{process} = ["compile_ultra"];
$modh{'ex#2'}{vlsi}{headers} = ["Test name", "# of bits", "# of mod", "Timing", "Area"];
$modh{'ex#2'}{fpga}{headers} = ["Test name", "# of bits", "# of mod", "Path", "LE"];
$modh{'ex#2'}{url} = "http://vscripts.ru/2012/index-modulo-multiplication.php; http://vscripts.ru/2013/forward-converter-universal.php";
$modh{'ex#2'}{url_patt} = undef;
$modh{rev_conv_2supn}{top} = "full_mul";
$modh{rev_conv_2supn}{testbench} = undef;
#module full_mul(out, in1, in2);

return 1;
