using TheAlgorithms
using Documenter

DocMeta.setdocmeta!(TheAlgorithms, :DocTestSetup, :(using TheAlgorithms); recursive=true)

makedocs(;
    modules=[TheAlgorithms],
    authors="Panquesito7",
    repo="https://github.com/TheAlgorithms/TheAlgorithms.jl/blob/{commit}{path}#{line}",
    sitename="TheAlgorithms.jl",
    format=Documenter.HTML(;
        prettyurls=get(ENV, "CI", "false") == "true",
        canonical="https://TheAlgorithms.github.io/TheAlgorithms.jl",
        assets=String[],
    ),
    pages=[
        "Home" => "index.md",
    ],
)

deploydocs(;
    repo="github.com/TheAlgorithms/TheAlgorithms.jl",
    devbranch="packaging",
)
