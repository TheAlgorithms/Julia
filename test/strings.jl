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

    @testset "Strings: KMP SubString Search" begin
        # contain sub string
        string = "seems like kmp search works"
        sub_string = "seems like kmp search"
        @test ContainSubstringWithKMP(string, sub_string, false) == true
        string = "ABABDABACDABABCABAB"
        sub_string = "ABABCABAB"
        @test ContainSubstringWithKMP(string, sub_string, false) == true
        string = "abcxabcdabcdabcy"
        sub_string = "abcdabcy"
        @test ContainSubstringWithKMP(string, sub_string, false) == true
        # does not contain sub string
        string = "ABABDABACDABABCABAB"
        sub_string = "X"
        @test ContainSubstringWithKMP(string, sub_string, false) == false
        string = "abcxabcdabcdabcy"
        sub_string = "so this"
        @test ContainSubstringWithKMP(string, sub_string, false) == false
        # ignore cases
        string = "SeEms Like IgNOrE CaSe Work"
        sub_string = "seems like ignore case work"
        @test ContainSubstringWithKMP(string, sub_string, true) == true
        string = "123 456 AbC"
        sub_string = "123 456 ABC"
        @test ContainSubstringWithKMP(string, sub_string, true) == true
        string = "abcdefg"
        sub_string = "ABCDEFG"
        @test ContainSubstringWithKMP(string, sub_string, true) == true
    end
end
