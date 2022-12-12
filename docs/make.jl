cd(@__DIR__)
using Pkg;
Pkg.activate(@__DIR__);
push!(LOAD_PATH, "../")
using TheAlgorithms
using Documenter

DocMeta.setdocmeta!(
    TheAlgorithms,
    :DocTestSetup,
    :(using TheAlgorithms,
        TheAlgorithms.Basic,
        TheAlgorithms.Cipher,
        TheAlgorithms.DataStructure,
        TheAlgorithms.DynamicProgramming,
        TheAlgorithms.Graph,
        TheAlgorithms.KnapSack,
        TheAlgorithms.LongSubSeq,
        TheAlgorithms.ML,
        TheAlgorithms.ProjectRosalind,
        TheAlgorithms.ProjectEuler,
        TheAlgorithms.Scheduling,
        TheAlgorithms.Searches,
        TheAlgorithms.Sorts,
        TheAlgorithms.StatAlgo,
        TheAlgorithms.StringAlgo,
        TheAlgorithms.Conversions);
    recursive = true,
)

makedocs(;
    modules = [
        TheAlgorithms,
        TheAlgorithms.Basic,
        TheAlgorithms.Cipher,
        TheAlgorithms.DataStructure,
        TheAlgorithms.DynamicProgramming,
        TheAlgorithms.Graph,
        TheAlgorithms.KnapSack,
        TheAlgorithms.LongSubSeq,
        TheAlgorithms.ML,
        TheAlgorithms.ProjectRosalind,
        TheAlgorithms.ProjectEuler,
        TheAlgorithms.Scheduling,
        TheAlgorithms.Searches,
        TheAlgorithms.Sorts,
        TheAlgorithms.StatAlgo,
        TheAlgorithms.StringAlgo,
        TheAlgorithms.Conversions,
    ],
    authors = "Panquesito7",
    repo = "https://github.com/TheAlgorithms/Julia/blob/{commit}{path}#{line}",
    sitename = "TheAlgorithms.jl",
    format = Documenter.HTML(;
        prettyurls = get(ENV, "CI", "false") == "true",
        canonical = "https://TheAlgorithms.github.io/Julia",
        assets = String[],
    ),
    pages = ["Home" => "index.md"],
    doctest = true,
)

deploydocs(; repo = "github.com/TheAlgorithms/Julia", devbranch = "main")
