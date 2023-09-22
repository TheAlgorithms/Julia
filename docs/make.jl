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
        TheAlgorithms.Basic.Hanoi,
        TheAlgorithms.Cipher,
        TheAlgorithms.Conversions,
        TheAlgorithms.DataStructure,
        TheAlgorithms.DataStructure.LinkedList,
        TheAlgorithms.DataStructure.FenwickTree,
        TheAlgorithms.DynamicProgramming,
        TheAlgorithms.Graph,
        TheAlgorithms.KnapSack,
        TheAlgorithms.LongSubSeq,
        TheAlgorithms.Math,
        TheAlgorithms.MatrixAlgo,
        TheAlgorithms.ML,
        TheAlgorithms.ProjectEuler,
        TheAlgorithms.ProjectRosalind,
        TheAlgorithms.Scheduling,
        TheAlgorithms.Searches,
        TheAlgorithms.Sorts,
        TheAlgorithms.StatAlgo,
        TheAlgorithms.StringAlgo);
    recursive = true,
)

makedocs(;
    modules = [
        TheAlgorithms,
        TheAlgorithms.Basic,
        TheAlgorithms.Basic.Hanoi,
        TheAlgorithms.Cipher,
        TheAlgorithms.Conversions,
        TheAlgorithms.DataStructure,
        TheAlgorithms.DataStructure.LinkedList,
        TheAlgorithms.DataStructure.FenwickTree,
        TheAlgorithms.DynamicProgramming,
        TheAlgorithms.Graph,
        TheAlgorithms.KnapSack,
        TheAlgorithms.LongSubSeq,
        TheAlgorithms.Math,
        TheAlgorithms.MatrixAlgo,
        TheAlgorithms.ML,
        TheAlgorithms.ProjectEuler,
        TheAlgorithms.ProjectRosalind,
        TheAlgorithms.Scheduling,
        TheAlgorithms.Searches,
        TheAlgorithms.Sorts,
        TheAlgorithms.StatAlgo,
        TheAlgorithms.StringAlgo,
    ],
    authors = "Panquesito7",
    repo = "https://github.com/TheAlgorithms/Julia/blob/{commit}{path}#{line}",
    sitename = "TheAlgorithms.jl",
    format = Documenter.HTML(;
        prettyurls = get(ENV, "CI", "false") == "true",
        canonical = "https://TheAlgorithms.github.io/Julia",
        assets = String[],
        size_threshold = 409600,
    ),
    pages = ["Home" => "index.md"],
    doctest = true,
)

deploydocs(; repo = "github.com/TheAlgorithms/Julia", devbranch = "main")
