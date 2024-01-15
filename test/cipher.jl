using TheAlgorithms.Cipher
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
        @test caesar(0, "stealth") == "stealth"
        @test caesar(90, "ghsozhv") == "stealth"

        @test caesar(1, "ABC") == "BCD"
        @test caesar(-1, "BCD") == "ABC"

        @test caesar(2, "f(x)") == "h(z)"

        @test caesar(5, 'a') == 'f'

        # rot = 13
        # s = "abcdefghijklmnopqrstuvwxyz"
        # @test rotate(rot, s) == "nopqrstuvwxyzabcdefghijklm"
        # rot = 5
        # s = "omg"
        # @test rotate(rot, s) == "trl"
        # rot = 0
        # s = "hello"
        # @test rotate(rot, s) == "hello"

        @testset "Cipher: affine" begin
            alphabet = "abcdefghijklmnopqrstuvwxyz"
            input = "secrets"
            a = 3
            b = 1
            @test affine(input, alphabet, a, b) == "dnhangd"
            alphabet = "0123456789"
            input = "1234"
            a = 7
            b = 2
            @test affine(input, alphabet, a, b) == "9630"
        end
    end

    @testset "Cipher: vigenere" begin
        text = "Hello, World!"
        key = "key"
        @test encrypt_vigenere(text, key) == "Rijvs, Uyvjn!"
        text = "QUICKBROWNFOX"
        key = "LAZYDOG"
        @test encrypt_vigenere(text, key) == "BUHANPXZWMDRL"
        text = "Rijvs, Uyvjn!"
        key = "key"
        @test decrypt_vigenere(text, key) == "Hello, World!"
        text = "BUHANPXZWMDRL"
        key = "LAZYDOG"
        @test decrypt_vigenere(text, key) == "QUICKBROWNFOX"
    end
end
