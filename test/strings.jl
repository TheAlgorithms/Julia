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
        s = "Hello"      # Not a palindrome
        @test is_palindrome(s) == false
    end

    @testset "Strings: Detect Anagrams" begin
        s = "anagram"    # No matches
        samples = ["grammar", "tutor", "kilogram"]
        @test detect_anagrams(s, samples) == []
        s = "nose"  # Matches words with different case
        samples = ["Eons", "ONES"] 
        @test detect_anagrams(s, samples) == ["Eons", "ONES"]
        s = "listen"  # Does not include the same word
        samples = ["LiSten", "enlist"]
        @test detect_anagrams(s, samples) == ["enlist"]
    end
end
