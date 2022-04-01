@testset "Cipher" begin
    @testset "Cipher: atbash" begin
        input = "test"
        @test atbash_encode(input) == "gvhg"
        input = "abcdefghijklmnopqrstuvwxyz"
        @test atbash_encode(input) == "zyxwv utsrq ponml kjihg fedcb a"
        input = "hello"
        @test atbash_encode(input) == "svool"
    end

    @testset "Cipher: caesar" begin
        input = "stealth"
        @test caesar(0, input) == "stealth"
        input = "ghsozhv"
        @test caesar(90, input) == "stealth"

        # rot = 13
        # s = "abcdefghijklmnopqrstuvwxyz"
        # @test rotate(rot, s) == "nopqrstuvwxyzabcdefghijklm"
        # rot = 5
        # s = "omg"
        # @test rotate(rot, s) == "trl"
        # rot = 0
        # s = "hello"
        # @test rotate(rot, s) == "hello"
    end
end
