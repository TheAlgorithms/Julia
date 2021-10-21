function wordcount(sentence)
    lowercase_sentence = lowercase(sentence)
    counts = Dict()
    regex = r"(\w+('\w)?)"
    for w in eachmatch(regex, lowercase_sentence)
        if !haskey(counts, w.match)
            counts[w.match] = 1
        else
            counts[w.match] += 1
        end
    end
    return counts
end

input = readline()
print(wordcount(input))