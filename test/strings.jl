using TheAlgorithms.StringAlgo

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
        @test contain_substring_with_kmp(string, sub_string, false) == true
        string = "ABABDABACDABABCABAB"
        sub_string = "ABABCABAB"
        @test contain_substring_with_kmp(string, sub_string, false) == true
        string = "abcxabcdabcdabcy"
        sub_string = "abcdabcy"
        @test contain_substring_with_kmp(string, sub_string, false) == true
        # does not contain sub string
        string = "ABABDABACDABABCABAB"
        sub_string = "X"
        @test contain_substring_with_kmp(string, sub_string, false) == false
        string = "abcxabcdabcdabcy"
        sub_string = "so this"
        @test contain_substring_with_kmp(string, sub_string, false) == false
        # ignore cases
        string = "SeEms Like IgNOrE CaSe Work"
        sub_string = "seems like ignore case work"
        @test contain_substring_with_kmp(string, sub_string, true) == true
        string = "123 456 AbC"
        sub_string = "123 456 ABC"
        @test contain_substring_with_kmp(string, sub_string, true) == true
        string = "abcdefg"
        sub_string = "ABCDEFG"
        @test contain_substring_with_kmp(string, sub_string, true) == true
    end

    @testset "Strings: Pangrams" begin
        input = "Pack my box with five dozen liquor jugs"    # Pangram
        @test ispangram(input) == true
        input = "Hello World"    # Not Pangram
        @test ispangram(input) == false
        input = "The quick brown fox jumps over the lazy dog"    # Pangram
        @test ispangram(input) == true
    end

    @testset "Strings: word_count" begin
        sentence = "The quick brown fox jumps over the lazy dog"    # 8 different words
        @test word_count(sentence) == Dict{Any,Any}(
            "jumps" => 1,
            "the" => 2,
            "brown" => 1,
            "over" => 1,
            "quick" => 1,
            "lazy" => 1,
            "dog" => 1,
            "fox" => 1,
        )
        sentence = "Hello World"    # 2 different words
        @test word_count(sentence) == Dict{Any,Any}("hello" => 1, "world" => 1)
        sentence = "the sky is blue and beautiful"    # 6 different words
        @test word_count(sentence) == Dict{Any,Any}(
            "and" => 1,
            "the" => 1,
            "sky" => 1,
            "blue" => 1,
            "is" => 1,
            "beautiful" => 1,
        )
    end

    @testset "Strings: hamming_distance" begin
        input1 = "karolin"
        input2 = "kathrin"
        @test hamming_distance(input1, input2) == 3
        input1 = "0000"
        input2 = "1111"
        @test hamming_distance(input1, input2) == 4
        input1 = "ABCDEFG"
        input2 = "AZCDWGM"
        @test hamming_distance(input1, input2) == 4
    end

    @testset "Strings: Rabin-Karp algorithm" begin
        text = "a"
        pattern = "airplane"
        @test rabin_karp(text, pattern) == []
        text = "Hello, World!!"
        pattern = "World"
        @test rabin_karp(text, pattern) == [8]
        text = "Banana"
        pattern = "an"
        @test rabin_karp(text, pattern) == [2, 4]
        text = "aaaaaa"
        pattern = "aaa"
        @test rabin_karp(text, pattern) == [1, 2, 3, 4]

        @test rabin_karp(
            "PHFvbVsfiZlPUjFYGzRcuIYBVPWcMsGiWpaRDERplINOFRnObeHuJbkwQKWlegxlckDRWQNMZOaHUMlwhHnZOcMEBKBfeQRTrIbL",
            "ab",
        ) == []
    end
    @testset "Strings: Longest common subsequence" begin
        @test LCS("ABCD", "EFGHIJ") == ""

        @test LCS("AAAAA", "AAA") == "AAA"

        @test LCS("ABABABA", "ABBABBA") == "ABBABA"

        @test LCS("AGCDEG", "BGFDG") == "GDG"
    end

    @testset "Strings: naive_pattern_search" begin
        @test naive_pattern_search("ABCDEF", "DEF") == "DEF found at index: 3"

        @test naive_pattern_search("Hello world!", "world") ==
              "world found at index: 6"

        @test naive_pattern_search("Hello world!", "world") ==
              "world found at index: 6"

        @test naive_pattern_search("ABCDEF", "XYZ") == "No matches found"
    end
end
