using TheAlgorithms
using Documenter

DocMeta.setdocmeta!(
    TheAlgorithms,
    :DocTestSetup,
    :(using TheAlgorithms);
    recursive = true,
)

makedocs(;
    modules = [TheAlgorithms],
    authors = "Panquesito7",
    repo = "https://github.com/TheAlgorithms/Julia/blob/{commit}{path}#{line}",
    sitename = "TheAlgorithms.jl",
    format = Documenter.HTML(;
        prettyurls = get(ENV, "CI", "false") == "true",
        canonical = "https://TheAlgorithms.github.io/Julia",
        assets = String[],
    ),
    pages = ["Home" => "index.md"],
    doctest = false,
)

deploydocs(; repo = "github.com/TheAlgorithms/Julia", devbranch = "main")
