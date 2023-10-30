LETTERS = "ABCDEFGHIJKLMNOPQRSTUVWXYZ"

"""
    encrypt_vigenere(text, key)

Encrypts a plaintext message using the Vigenere cipher.

# Arguments
- `text`: the plaintext message to encrypt
- `key`: the keyword used for encryption

# Examples
```julia-repl
julia> encrypt_vigenere("Hello, World!", "key")
Rijvs, Uyvjn!
```
"""
function encrypt_vigenere(text::String, key::String)::String
    global LETTERS
    encrypted = ""
    key_index = 1
    key = uppercase(key)
    for symbol in text
        num = findfirst(isequal(uppercase(symbol)), LETTERS)
        if !isnothing(num)
            num += findfirst(isequal(key[key_index]), LETTERS) - 1
            num %= length(LETTERS)
            num = num == 0 ? 26 : num
            encrypted *=
                isuppercase(symbol) ? LETTERS[num] : lowercase(LETTERS[num])
            key_index = key_index == length(key) ? 1 : key_index + 1
        else
            encrypted *= symbol
        end
    end
    return encrypted
end

"""
    decrypt_vigenere(text, key)

Decrypts a plaintext message using the Vigenere cipher.

# Arguments
- `text`: the ciphertext message to decrypt
- `key`: the keyword used for decryption

# Examples
```julia-repl
julia> decrypt_vigenere("Rijvs, Uyvjn!", "key")
Hello, World!
```
"""
function decrypt_vigenere(text::String, key::String)::String
    global LETTERS
    key = uppercase(key)
    key_index = 1
    decrypted = ""
    for symbol in text
        num = findfirst(isequal(uppercase(symbol)), LETTERS)
        if !isnothing(num)
            num -= findfirst(isequal(key[key_index]), LETTERS) - 1
            num %= length(LETTERS)
            num = num <= 0 ? num + length(LETTERS) : num
            decrypted *=
                isuppercase(symbol) ? LETTERS[num] : lowercase(LETTERS[num])
            key_index = key_index == length(key) ? 1 : key_index + 1
        else
            decrypted *= symbol
        end
    end
    return decrypted
end

println(encrypt_vigenere("QUICKBROWNFOX", "LAZYDOG"))
