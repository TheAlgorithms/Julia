URL_BASE = "https://github.com/TheAlgorithms/Julia/blob/HEAD/src"

function get_list_files(path, extension=".jl")
    list_files = []
    dir_names = String[]
    for (root, dirs, files) in walkdir(path)
        current_dir = String[]
        strip_root = replace(root, "src/" => "")
        if strip_root != "src"
            push!(dir_names, strip_root)
        end
        for file in files
            if file == "TheAlgorithms.jl"
                continue
            end
            if endswith(file, extension)
                push!(current_dir, replace(file, extension => ""))
            end
        end
        if length(current_dir) > 0
            push!(list_files, current_dir)
        end
    end
    return list_files, dir_names
end

function title(words)
    words = split(replace(lowercase(words), " " => "_"), "_")
    titled_words = [uppercasefirst(word) for word in words]
    return join(titled_words, " ")
end

function print_directory()
    outputs = "\n## TheAlgorithms\n"
    files, dirs = get_list_files("src")
    for i in eachindex(dirs)
        factor = 1
        if contains(dirs[i], "/")
            dir = split(dirs[i], "/")
            factor = length(dir)
            dir = dir[end]
        else
            dir = dirs[i]
        end
        outputs *= "  " ^ factor * "* $(title(dir))\n"
        for j in files[i]
            outputs *= "  " ^ factor * "  * [$(title(j))]($URL_BASE/$(dirs[i])/$(replace(j, " " => "%20")).jl)\n"
        end
    end
    println(outputs)
end

print_directory()
