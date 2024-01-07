using TheAlgorithms.Conversions

@testset "Conversions" begin
    @testset "Conversions: Weight Conversions" begin
        @test weight_conversion(4, "kilogram", "kilogram") == 4
        @test weight_conversion(1, "kilogram", "gram") == 1000
        @test weight_conversion(4, "kilogram", "milligram") == 4000000
        @test weight_conversion(4, "kilogram", "metric-ton") ≈ 0.004
        @test weight_conversion(3, "kilogram", "long-ton") == 0.0029526219
        @test weight_conversion(1, "kilogram", "short-ton") == 0.0011023122
        @test weight_conversion(4, "kilogram", "pound") == 8.8184976808
        @test weight_conversion(4, "kilogram", "ounce") == 141.095962892
        @test weight_conversion(3, "kilogram", "carrat") == 15000
        @test weight_conversion(1, "kilogram", "atomic-mass-unit") ==
              6.022136652e+26
        @test weight_conversion(1, "gram", "kilogram") ≈ 0.001
        @test weight_conversion(3, "gram", "gram") ≈ 3.0
        @test weight_conversion(2, "gram", "milligram") ≈ 2000.0
        @test weight_conversion(4, "gram", "metric-ton") ≈ 4e-06
        @test weight_conversion(3, "gram", "long-ton") ≈ 2.9526219e-06
        @test weight_conversion(3, "gram", "short-ton") ≈ 3.3069366000000003e-06
        @test weight_conversion(3, "gram", "pound") ≈ 0.0066138732606
        @test weight_conversion(1, "gram", "ounce") ≈ 0.035273990723
        @test weight_conversion(2, "gram", "carrat") ≈ 10.0
        @test weight_conversion(1, "gram", "atomic-mass-unit") ≈ 6.022136652e+23
        @test weight_conversion(1, "milligram", "kilogram") ≈ 1e-06
        @test weight_conversion(2, "milligram", "gram") ≈ 0.002
        @test weight_conversion(3, "milligram", "milligram") ≈ 3.0
        @test weight_conversion(3, "milligram", "metric-ton") ≈ 3e-09
        @test weight_conversion(3, "milligram", "long-ton") ≈ 2.9526219e-09
        @test weight_conversion(1, "milligram", "short-ton") ≈ 1.1023122e-09
        @test weight_conversion(3, "milligram", "pound") ≈
              6.6138732605999995e-06
        @test weight_conversion(2, "milligram", "ounce") ≈ 7.054798144599999e-05
        @test weight_conversion(1, "milligram", "carrat") ≈ 0.005
        @test weight_conversion(1, "milligram", "atomic-mass-unit") ≈
              6.022136652e+20
        @test weight_conversion(2, "metric-ton", "kilogram") == 2000
        @test weight_conversion(2, "metric-ton", "gram") ≈ 2000000
        @test weight_conversion(3, "metric-ton", "milligram") ≈ 3000000000
        @test weight_conversion(2, "metric-ton", "metric-ton") ≈ 2.0
        @test weight_conversion(3, "metric-ton", "long-ton") ≈ 2.9526219
        @test weight_conversion(2, "metric-ton", "short-ton") ≈ 2.2046244
        @test weight_conversion(3, "metric-ton", "pound") ≈ 6613.8732606
        @test weight_conversion(4, "metric-ton", "ounce") ≈ 141095.96289199998
        @test weight_conversion(4, "metric-ton", "carrat") ≈ 20000000
        @test weight_conversion(1, "metric-ton", "atomic-mass-unit") ≈
              6.022136652e+29
        @test weight_conversion(4, "long-ton", "kilogram") == 4064.18432
        @test weight_conversion(4, "long-ton", "gram") == 4064184.32
        @test weight_conversion(3, "long-ton", "milligram") == 3048138240.0
        @test weight_conversion(4, "long-ton", "metric-ton") ≈ 4.06418432
        @test weight_conversion(3, "long-ton", "long-ton") == 2.999999907217152
        @test weight_conversion(1, "long-ton", "short-ton") == 1.119999989746176
        @test weight_conversion(3, "long-ton", "pound") == 6720.000000049448
        @test weight_conversion(1, "long-ton", "ounce") == 35840.000000060514
        @test weight_conversion(4, "long-ton", "carrat") == 20320921.599999998
        @test weight_conversion(4, "long-ton", "atomic-mass-unit") ==
              2.4475073353955697e+30
        @test weight_conversion(3, "short-ton", "kilogram") ==
              2721.5519999999997
        @test weight_conversion(3, "short-ton", "gram") == 2721552.0
        @test weight_conversion(1, "short-ton", "milligram") == 907184000.0
        @test weight_conversion(4, "short-ton", "metric-ton") ≈ 3.628736
        @test weight_conversion(3, "short-ton", "long-ton") == 2.6785713457296
        @test weight_conversion(3, "short-ton", "short-ton") == 2.9999999725344
        @test weight_conversion(2, "short-ton", "pound") == 4000.0000000294335
        @test weight_conversion(4, "short-ton", "ounce") == 128000.00000021611
        @test weight_conversion(4, "short-ton", "carrat") == 18143680.0
        @test weight_conversion(1, "short-ton", "atomic-mass-unit") ==
              5.463186016507968e+29
        @test weight_conversion(4, "pound", "kilogram") == 1.814368
        @test weight_conversion(2, "pound", "gram") == 907.184
        @test weight_conversion(3, "pound", "milligram") == 1360776.0
        @test weight_conversion(3, "pound", "metric-ton") ≈ 0.001360776
        @test weight_conversion(2, "pound", "long-ton") == 0.0008928571152432
        @test weight_conversion(1, "pound", "short-ton") == 0.0004999999954224
        @test weight_conversion(3, "pound", "pound") == 3.0000000000220752
        @test weight_conversion(1, "pound", "ounce") == 16.000000000027015
        @test weight_conversion(1, "pound", "carrat") == 2267.96
        @test weight_conversion(4, "pound", "atomic-mass-unit") ==
              1.0926372033015936e+27
        @test weight_conversion(3, "ounce", "kilogram") == 0.0850485
        @test weight_conversion(3, "ounce", "gram") == 85.0485
        @test weight_conversion(4, "ounce", "milligram") == 113398.0
        @test weight_conversion(4, "ounce", "metric-ton") ≈ 0.000113398
        @test weight_conversion(4, "ounce", "long-ton") == 0.0001116071394054
        @test weight_conversion(4, "ounce", "short-ton") == 0.0001249999988556
        @test weight_conversion(1, "ounce", "pound") == 0.0625000000004599
        @test weight_conversion(2, "ounce", "ounce") == 2.000000000003377
        @test weight_conversion(1, "ounce", "carrat") == 141.7475
        @test weight_conversion(1, "ounce", "atomic-mass-unit") ==
              1.70724563015874e+25
        @test weight_conversion(1, "carrat", "kilogram") == 0.0002
        @test weight_conversion(4, "carrat", "gram") == 0.8
        @test weight_conversion(2, "carrat", "milligram") == 400.0
        @test weight_conversion(2, "carrat", "metric-ton") ≈
              4.0000000000000003e-07
        @test weight_conversion(3, "carrat", "long-ton") == 5.9052438e-07
        @test weight_conversion(4, "carrat", "short-ton") ==
              8.818497600000002e-07
        @test weight_conversion(1, "carrat", "pound") == 0.00044092488404000004
        @test weight_conversion(2, "carrat", "ounce") == 0.0141095962892
        @test weight_conversion(4, "carrat", "carrat") == 4.0
        @test weight_conversion(4, "carrat", "atomic-mass-unit") ==
              4.8177093216e+23
        @test weight_conversion(4, "atomic-mass-unit", "kilogram") ==
              6.642160796e-27
        @test weight_conversion(2, "atomic-mass-unit", "gram") ==
              3.321080398e-24
        @test weight_conversion(2, "atomic-mass-unit", "milligram") ==
              3.3210803980000002e-21
        @test weight_conversion(3, "atomic-mass-unit", "metric-ton") ≈
              4.9816205970000004e-30
        @test weight_conversion(3, "atomic-mass-unit", "long-ton") ==
              4.9029473573977584e-30
        @test weight_conversion(1, "atomic-mass-unit", "short-ton") ==
              1.830433719948128e-30
        @test weight_conversion(3, "atomic-mass-unit", "pound") ==
              1.0982602420317504e-26
        @test weight_conversion(2, "atomic-mass-unit", "ounce") ==
              1.1714775914938915e-25
        @test weight_conversion(2, "atomic-mass-unit", "carrat") ==
              1.660540199e-23
        @test weight_conversion(2, "atomic-mass-unit", "atomic-mass-unit") ==
              1.999999998903455
        @test_throws ErrorException weight_conversion(1, "kg", "wrong_unit")
        @test_throws ErrorException weight_conversion(1, "wrong_unit", "kg")
    end

    @testset "Conversions: Temparature Conversions" begin
        @test celsius_to_fahrenheit(273.354, 3) == 524.037
        @test celsius_to_fahrenheit(273.354, 0) == 524.0
        @test celsius_to_fahrenheit(-40.0) == -40.0
        @test celsius_to_fahrenheit(-20.0) == -4.0
        @test celsius_to_fahrenheit(0) == 32.0
        @test celsius_to_fahrenheit(20) == 68.0

        @test celsius_to_kelvin(273.354, 3) == 546.504
        @test celsius_to_kelvin(273.354, 0) == 547.0
        @test celsius_to_kelvin(0.0) == 273.15
        @test celsius_to_kelvin(20.0) == 293.15

        @test fahrenheit_to_celsius(273.354, 3) == 134.086
        @test fahrenheit_to_celsius(273.354, 0) == 134.0
        @test fahrenheit_to_celsius(0.0) == -17.78
        @test fahrenheit_to_celsius(20.0) == -6.67
        @test fahrenheit_to_celsius(40.0) == 4.44
        @test fahrenheit_to_celsius(60.0) == 15.56
        @test fahrenheit_to_celsius(80.0) == 26.67

        @test fahrenheit_to_kelvin(273.354, 3) == 407.236
        @test fahrenheit_to_kelvin(273.354, 0) == 407.0
        @test fahrenheit_to_kelvin(0) == 255.37
        @test fahrenheit_to_kelvin(20.0) == 266.48
        @test fahrenheit_to_kelvin(40.0) == 277.59
        @test fahrenheit_to_kelvin(60.0) == 288.71
        @test fahrenheit_to_kelvin(80.0) == 299.82

        @test kelvin_to_celsius(273.354, 3) == 0.204
        @test kelvin_to_celsius(273.354, 0) == 0.0
        @test kelvin_to_celsius(273.15) == 0.0
        @test kelvin_to_celsius(300) == 26.85

        @test kelvin_to_fahrenheit(273.354, 3) == 32.367
        @test kelvin_to_fahrenheit(273.354, 0) == 32.0
        @test kelvin_to_fahrenheit(273.15) == 32.0
        @test kelvin_to_fahrenheit(300) == 80.33
    end

    @testset "Conversions: Length Conversions" begin
        @test length_conversion(50, "mm", "cm") == 5
        @test length_conversion(500, "mm", "m") == 0.5
        @test length_conversion(4321, "mm", "km") == 0.004321
        @test length_conversion(10, "meter", "in") ≈ 393.701
        @test length_conversion(10, "m", "feet") ≈ 32.8084
        @test length_conversion(10, "m", "yd") ≈ 10.9361
        @test length_conversion(1, "in", "mm") ≈ 25.4
        @test length_conversion(1, "in", "cm") ≈ 2.54
        @test length_conversion(5, "in", "m") ≈ 0.127
        @test length_conversion(3, "ft", "mm") ≈ 914.4
        @test length_conversion(10, "mi", "km") ≈ 16.0934
        @test_throws ErrorException length_conversion(1, "m", "wrong_unit")
        @test_throws ErrorException length_conversion(1, "wrong_unit", "m")
    end
end
