@testset "Cipher" begin
  @testset "Cipher: caesar" begin
        rot = 13
        s = "abcdefghijklmnopqrstuvwxyz"
        @test rotate(rot, s) == "nopqrstuvwxyzabcdefghijklm"
        rot = 5
        s = "omg"
        @test rotate(rot, s) == "trl"
        rot = 0
        s = "hello"
        @test rotate(rot, s) == "hello"
    end
end
