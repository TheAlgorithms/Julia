
@testset "Conversions" begin

    @testset "Conversions: Weight Conversions" begin
        @test weight_conversion("kilogram", "kilogram", 4) == 4
        @test weight_conversion("kilogram", "gram", 1) == 1000
        @test weight_conversion("kilogram", "milligram", 4) == 4000000
        @test weight_conversion("kilogram", "metric-ton", 4) ≈ 0.004
        @test weight_conversion("kilogram", "long-ton", 3) == 0.0029526219
        @test weight_conversion("kilogram", "short-ton", 1) == 0.0011023122
        @test weight_conversion("kilogram", "pound", 4) == 8.8184976808
        @test weight_conversion("kilogram", "ounce", 4) == 141.095962892
        @test weight_conversion("kilogram", "carrat", 3) == 15000
        @test weight_conversion("kilogram", "atomic-mass-unit", 1) == 6.022136652e+26
        @test weight_conversion("gram", "kilogram", 1) ≈ 0.001
        @test weight_conversion("gram", "gram", 3) ≈ 3.0
        @test weight_conversion("gram", "milligram", 2) ≈ 2000.0
        @test weight_conversion("gram", "metric-ton", 4) ≈ 4e-06
        @test weight_conversion("gram", "long-ton", 3) ≈ 2.9526219e-06
        @test weight_conversion("gram", "short-ton", 3) ≈ 3.3069366000000003e-06
        @test weight_conversion("gram", "pound", 3) ≈ 0.0066138732606
        @test weight_conversion("gram", "ounce", 1) ≈ 0.035273990723
        @test weight_conversion("gram", "carrat", 2) ≈ 10.0
        @test weight_conversion("gram", "atomic-mass-unit", 1) ≈ 6.022136652e+23
        @test weight_conversion("milligram", "kilogram", 1) ≈ 1e-06
        @test weight_conversion("milligram", "gram", 2) ≈ 0.002
        @test weight_conversion("milligram", "milligram", 3) ≈ 3.0
        @test weight_conversion("milligram", "metric-ton", 3) ≈ 3e-09
        @test weight_conversion("milligram", "long-ton", 3) ≈ 2.9526219e-09
        @test weight_conversion("milligram", "short-ton", 1) ≈ 1.1023122e-09
        @test weight_conversion("milligram", "pound", 3) ≈ 6.6138732605999995e-06
        @test weight_conversion("milligram", "ounce", 2) ≈ 7.054798144599999e-05
        @test weight_conversion("milligram", "carrat", 1) ≈ 0.005
        @test weight_conversion("milligram", "atomic-mass-unit", 1) ≈ 6.022136652e+20
        @test weight_conversion("metric-ton", "kilogram", 2) == 2000
        @test weight_conversion("metric-ton", "gram", 2) ≈ 2000000
        @test weight_conversion("metric-ton", "milligram", 3) ≈ 3000000000
        @test weight_conversion("metric-ton", "metric-ton", 2) ≈ 2.0
        @test weight_conversion("metric-ton", "long-ton", 3) ≈ 2.9526219
        @test weight_conversion("metric-ton", "short-ton", 2) ≈ 2.2046244
        @test weight_conversion("metric-ton", "pound", 3) ≈ 6613.8732606
        @test weight_conversion("metric-ton", "ounce", 4) ≈ 141095.96289199998
        @test weight_conversion("metric-ton", "carrat", 4) ≈ 20000000
        @test weight_conversion("metric-ton", "atomic-mass-unit", 1) ≈ 6.022136652e+29
        @test weight_conversion("long-ton", "kilogram", 4) == 4064.18432
        @test weight_conversion("long-ton", "gram", 4) == 4064184.32
        @test weight_conversion("long-ton", "milligram", 3) == 3048138240.0
        @test weight_conversion("long-ton", "metric-ton", 4) ≈ 4.06418432
        @test weight_conversion("long-ton", "long-ton", 3) == 2.999999907217152
        @test weight_conversion("long-ton", "short-ton", 1) == 1.119999989746176
        @test weight_conversion("long-ton", "pound", 3) == 6720.000000049448
        @test weight_conversion("long-ton", "ounce", 1) == 35840.000000060514
        @test weight_conversion("long-ton", "carrat", 4) == 20320921.599999998
        @test weight_conversion("long-ton", "atomic-mass-unit", 4) == 2.4475073353955697e+30
        @test weight_conversion("short-ton", "kilogram", 3) == 2721.5519999999997
        @test weight_conversion("short-ton", "gram", 3) == 2721552.0
        @test weight_conversion("short-ton", "milligram", 1) == 907184000.0
        @test weight_conversion("short-ton", "metric-ton", 4) ≈ 3.628736
        @test weight_conversion("short-ton", "long-ton", 3) == 2.6785713457296
        @test weight_conversion("short-ton", "short-ton", 3) == 2.9999999725344
        @test weight_conversion("short-ton", "pound", 2) == 4000.0000000294335
        @test weight_conversion("short-ton", "ounce", 4) == 128000.00000021611
        @test weight_conversion("short-ton", "carrat", 4) == 18143680.0
        @test weight_conversion("short-ton", "atomic-mass-unit", 1) == 5.463186016507968e+29
        @test weight_conversion("pound", "kilogram", 4) == 1.814368
        @test weight_conversion("pound", "gram", 2) == 907.184
        @test weight_conversion("pound", "milligram", 3) == 1360776.0
        @test weight_conversion("pound", "metric-ton", 3) ≈ 0.001360776
        @test weight_conversion("pound", "long-ton", 2) == 0.0008928571152432
        @test weight_conversion("pound", "short-ton", 1) == 0.0004999999954224
        @test weight_conversion("pound", "pound", 3) == 3.0000000000220752
        @test weight_conversion("pound", "ounce", 1) == 16.000000000027015
        @test weight_conversion("pound", "carrat", 1) == 2267.96
        @test weight_conversion("pound", "atomic-mass-unit", 4) == 1.0926372033015936e+27
        @test weight_conversion("ounce", "kilogram", 3) == 0.0850485
        @test weight_conversion("ounce", "gram", 3) == 85.0485
        @test weight_conversion("ounce", "milligram", 4) == 113398.0
        @test weight_conversion("ounce", "metric-ton", 4) ≈ 0.000113398
        @test weight_conversion("ounce", "long-ton", 4) == 0.0001116071394054
        @test weight_conversion("ounce", "short-ton", 4) == 0.0001249999988556
        @test weight_conversion("ounce", "pound", 1) == 0.0625000000004599
        @test weight_conversion("ounce", "ounce", 2) == 2.000000000003377
        @test weight_conversion("ounce", "carrat", 1) == 141.7475
        @test weight_conversion("ounce", "atomic-mass-unit", 1) == 1.70724563015874e+25
        @test weight_conversion("carrat", "kilogram", 1) == 0.0002
        @test weight_conversion("carrat", "gram", 4) == 0.8
        @test weight_conversion("carrat", "milligram", 2) == 400.0
        @test weight_conversion("carrat", "metric-ton", 2) ≈ 4.0000000000000003e-07
        @test weight_conversion("carrat", "long-ton", 3) == 5.9052438e-07
        @test weight_conversion("carrat", "short-ton", 4) == 8.818497600000002e-07
        @test weight_conversion("carrat", "pound", 1) == 0.00044092488404000004
        @test weight_conversion("carrat", "ounce", 2) == 0.0141095962892
        @test weight_conversion("carrat", "carrat", 4) == 4.0
        @test weight_conversion("carrat", "atomic-mass-unit", 4) == 4.8177093216e+23
        @test weight_conversion("atomic-mass-unit", "kilogram", 4) == 6.642160796e-27
        @test weight_conversion("atomic-mass-unit", "gram", 2) == 3.321080398e-24
        @test weight_conversion("atomic-mass-unit", "milligram", 2) == 3.3210803980000002e-21
        @test weight_conversion("atomic-mass-unit", "metric-ton", 3) ≈ 4.9816205970000004e-30
        @test weight_conversion("atomic-mass-unit", "long-ton", 3) == 4.9029473573977584e-30
        @test weight_conversion("atomic-mass-unit", "short-ton", 1) == 1.830433719948128e-30
        @test weight_conversion("atomic-mass-unit", "pound", 3) == 1.0982602420317504e-26
        @test weight_conversion("atomic-mass-unit", "ounce", 2) == 1.1714775914938915e-25
        @test weight_conversion("atomic-mass-unit", "carrat", 2) == 1.660540199e-23
        @test weight_conversion("atomic-mass-unit", "atomic-mass-unit", 2) == 1.999999998903455
        @test_throws MethodError weight_conversion("inch", "meter")
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
end
