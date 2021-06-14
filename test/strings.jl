@testset "Strings" begin

    @testset "Strings: Is Palindrome" begin
        s = "AA"     # A palindrome
        @test is_palindrome(s) == true
        s = "ABC"     # Not a palindrome
        @test is_palindrome(s) == false
        s = "Statistics"    # Not a palindrome
        @test is_palindrome(s) == false
        s = "Stats"    # A palindrome
        @test is_palindrome(s) == true
        s = "Racecar"      # A palindrome
        @test is_palindrome(s) == true
        x = "Hello"      # Not a palindrome
        @test is_palindrome(s) == false
    end

end
