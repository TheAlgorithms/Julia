@testset "Cipher" begin
    @testset "Cipher: atbash" begin
        input = "test"
        @test encode(input) == "gvhg"
        input = "abcdefghijklmnopqrstuvwxyz"
        @test encode(input) == "zyxwvutsrqponmlkjihgfedcba"
        input = "hello"
        @test encode(input) == "svool"
    end

    @testset "Cipher: caesar" begin
        input = "stealth"
        @test caesar(0, input) == "stealth"
        input = "ghsozhv"
        @test caesar(90, "ghsozhv") == "stealth"
    end
end
