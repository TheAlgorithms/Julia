# Contributing to [The Algorithms - Julia](https://github.com/TheAlgorithms/Julia) (WIP)

We're glad you want to contribute to the Julia repository! This document describes how to become a contributor to this repository. This will help you add new algorithms, correct issues, and adding new fixes.

## Writing the Julian way

Although there is no systematic way to write Julia, some aspects of the language contribute to its popularity. As such, we invite our contributors to write and possibly write their contributions in an easy-to-read fashion. Examples of the existing algorithms within this repository and many others, starting with the Julia language repository itself contains a plethora of examples.

Some emblematic features of the languages follow.

### Multiple dispatch

One key feature of Julia is that it is possible to dispatch a function to different methods according to its signature, the number, and the type of its arguments.\
Assume we want to write two versions of the `best_algo_ever` for floats and integers. One could create two functions: `best_algo_ever_float` and `best_algo_ever_int`, or, preferably use multiple dispatches.

```julia
best_algo_ever(x::F) where {F <: AbstractFloat} = println("Best float ever: $x")

best_algo_ever(n::Int) = println("Such an Integer: $n")

best_algo_ever(42)

best_algo_ever(42.0)
```

A user of our algorithm does not need to know the different methods for `best_algo_ever`. Julia will dispatch the argument to the correct method. Now, assume we want to provide two different ways (in order, or reverse) to apply this `best_algo_ever` to a `Vector` of numbers. One option would be to create once again two different functions. Or, we could use multiple dispatches again.

```julia
# Create order and reverse version
best_algo_ever(v, ::Val{:order}) = foreach(best_algo_ever, v)
best_algo_ever(v, ::Val{:reverse}) = foreach(best_algo_ever, reverse(v))

# Optional: make a dispatcher method easier to use that default to ordered iteration
best_algo_ever(v; order = :order) = best_algo_ever(v, Val(order))

best_algo_ever([1,2,3])
best_algo_ever([12, 3.14, 42]; order = :reverse)
```

## Improve an existing algorithm

Pull Requests (PR) to an existing algorithm are welcome, especially in the following cases:

1. Enhancing the algorithm readability
1. Improve its efficiency (speed, allocations, accuracy)
1. Provide a significant variation of the available algorithm(s), especially if historically or algorithmically relevant or innovative

We invite our contributors to detail those improvements in the PR and the documentation of the new function.

### Adding a new algorithm

New contributors should only have one PR per algorithm. We assume you have basic knowledge using the [Git](https://git-scm.org) software.\
To get started, [fork](https://github.com/TheAlgorithms/Julia/fork) this repository, then clone the repository through Git.

```bash
$ git clone https://github.com/<Your username>/Julia
```

You can clone this repository using GitHub CLI by running the following command:

```bash
$ gh repo clone <Your username>/Julia
```

within Julia:

```bash
] dev https://github.com/TheAlgorithms/Julia
```

The source folder when cloning the repository within Julia is located at `$HOME/.julia/dev/TheAlgorithms/Julia`.\
To keep your forked repository up to date, set up the `upstream` remote to pull in new changes.

```bash
$ git remote add upstream https://github.com/TheAlgorithms/Julia.git
$ git pull --rebase upstream main
```

If you used GitHub CLI, there is already an `upstream` remote, so to keep your repository updated just run

```bash
$ git pull --rebase upstream main
```

Always create a new branch when adding a new algorithm (or any contribution):

```bash
$ git checkout -b <name of issue or algorithm> main
$ # do some work
$ git push -u origin <name of issue or algorithm>
```

It is not advised to modify the `main` (or `master`) branch of your repository. Any mistake can lead to inconsistent history. You must always create a new branch for any changes you might want to add. Once those changes are merged upstream, you can merge those changes to `main` either by clicking the "fetching upstream" button on your remote repository from GitHub or using the `git pull --rebase upstream main` on your local repository to keep your history on track from upstream.

## Usual steps in adding a new algorithm

Put the algorithm in what you think is the right category in the `src` folder. Don't worry, the maintainers and other contributors will assist you and discuss on where to put it. For example, if it involves string manipulation, you should create a new file in `src/strings/<name of algorithm>`.

Add documentation in the code that will be built automatically on the GitHub repository. Documentation is great for people who want to check out the repository and read the code. It will give them an idea on how it works. We provide a template for the same.

Add tests and fix any issues. Adding tests to your algorithm will let us confirm that it works. Without tests, we cannot verify the function of the algorithm or if it works. To add your test, append it with other existing tests (but keep it separate) in the file named after the category within the `test` folder. For example, you should append the tests for `sieve of erastosthenes` with the other tests in `test/math.jl`.

If you have changes you need to commit, run the following commands:

```bash
$ git add <file>
$ git commit -m "<your message>" -m "<commit description> (optional)"
```

If you want to make the file addition easier, you can add all files using the following command:

```bash
$ git add .
```

To synchronize with the remote branch (pull command is optional but recommended if other contributors are participating to the changes), use these commands:

```bash
$ git pull
$ git push
```

A pull request (PR) can be opened on TheAlgorithms/Julia as soon as any new commit is pushed online. Not ready to be merged work should be proposed as draft PR, and are very common to obtain feedback from other users.
Any subsequent push to the working branch will update the PR.

## Documentation template

As for other part of the repository, we try to keep some consistency between the algorithms provided. Follows a template for documentation based on the [AutomaticDocstrings.jl](https://github.com/baggepinnen/AutomaticDocstrings.jl#usage) package.

````julia
"""
    f(x::A, b=5; c=LinRange(1,2,10)) where A

DOCSTRING (please describe the algorithm here)

# Arguments:
- `x`: DESCRIPTION
- `b`: DESCRIPTION
- `c`: DESCRIPTION

# Examples/Tests (optional but recommended)
```julia
f(42)
f("Hello world", b = 42)
```

# Documentation tests (optional, should replace `Examples` if present)

Script-like tests

```jldoctest
a = 1
b = 2
a + b

# output

3
```

REPL-like tests

```jldoctest
julia> a = 1
1

julia> b = 2;

julia> c = 3;  # comment

julia> a + b + c
6
```

# Implementation (optional)
```julia
function f(x::A, b=5; c=LinRange(1,2,10)) where A
    5
end
```

# Contributors:
- [Azzaare](https://github.com/Azzaare) (jf@baffier)
"""
function f(x::A, b=5; c=LinRange(1,2,10)) where A
    5
end
````

## Filename guidelines

- Filenames should match snake_case and have no spaces. This is for our workflows to work correctly.
- Example: `my_filename.jl` is correct. Other instances such as `MyFilename.jl`, `myFilename.jl`, `myfilename.jl`, `my filename.jl` etc., are incorrect.

## Directory guidelines

- If possible, add your new file/algorithm to an existing directory.
- All names should be lowercase. For separators, use `_`. Do not include spaces.
- For example: `my_directory` is correct. Other instances such as `MyDirectory`, `myDirectory`, `mydirectory`, `my directory`, etc., are incorrect.

## Commit guidelines

- Follow [**Conventional Commits**](https://www.conventionalcommits.org/en/v1.0.0/) guidelines at all times.
- Use one of the following prefixes (there might be other miscellaneous prefixes, though):
  - fix: A bug fix in an algorithm, workflow, configuration/settings, etc..
  - feat: A new feature, such as new algorithms, new workflows, etc..
  - docs: Documentation changes or fixes, like improving the contributing guidelines, fixing a typo, etc..
  - test: Correct existing tests or add new ones.
  - chore: Miscellaneous changes that do not match any of the above.

## **Did you find a bug?**

- Please avoid opening issues asking to be "assigned” to a particular algorithm. This merely creates unnecessary noise for maintainers. Instead, please submit your implementation in a pull request and it will be evaluated by project maintainers.

## **Do you have questions about the source code?**

- Ask any questions about how to use the repository in the [The Algorithms room in Gitter](https://gitter.im/TheAlgorithms/community?source=orgpage#) or in the [Discord](https://the-algorithms.com/discord) server.

That is all you need to know about the process. Now it is your turn to help us improve the repository; thank you!
