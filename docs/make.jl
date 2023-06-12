using PortfolioTools
using Documenter

DocMeta.setdocmeta!(PortfolioTools, :DocTestSetup, :(using PortfolioTools); recursive=true)

makedocs(;
    modules=[PortfolioTools],
    authors="Patrick Aschermayr <p.aschermayr@gmail.com>",
    repo="https://github.com/paschermayr/PortfolioTools.jl/blob/{commit}{path}#{line}",
    sitename="PortfolioTools.jl",
    format=Documenter.HTML(;
        prettyurls=get(ENV, "CI", "false") == "true",
        canonical="https://paschermayr.github.io/PortfolioTools.jl",
        edit_link="main",
        assets=String[],
    ),
    pages=["Home" => "index.md",
    "Introduction" => "intro.md",
    ],
)

deploydocs(; repo="github.com/paschermayr/PortfolioTools.jl", devbranch="main")
