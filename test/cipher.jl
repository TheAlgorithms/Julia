@testset "Cipher" begin
  @testset "Cipher: atbash" begin
        input = "test"    
        @test encode(input) == "gvhg"
        input = "abcdefghijklmnopqrstuvwxyz"    
        @test encode(input) == "zyxwvutsrqponmlkjihgfedcba"
        input = "hello"   
        @test encode(input) == "svool"
    end
end
