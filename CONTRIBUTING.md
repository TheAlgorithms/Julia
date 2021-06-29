## How to contribute?

### Writing the Julian way

Although there is no systematic way to write Julia, some aspects of the language contribute to its popularity. As such, we invite our contributors to write and possibly write their contribution in an easy-to-read fashion. Example of existing algorithm within this repository and many others, starting with the julialang repository itself contains plethora of examples.

Some emblematic features of the languages follow.

##### Multiple dispatch

One key feature of Julia is that it is possible to dispatch a function to different methods according to its signature, that is the number and type of its arguments.

Assume we want to right two versions of the `best_algo_ever` for floats and integer. One could create two functions `best_algo_ever_float` and `best_algo_ever_int`, or, preferably use multiple dispatch.

```julia
best_algo_ever(x::F) where {F <: AbstractFloat} = println("Best float ever: $x")

best_algo_ever(n::Int) = println("Such an Integer: $n")

best_algo_ever(42)

best_algo_ever(42.0)
```

A user of our algorithm does not need to know the different methods for `best_algo_ever`, Julia will dispatch the argument to the correct method. Now assume we want to provide two different ways (in order, or reverse) to apply this `best_algo_ever` to a `Vector` of numbers. One option would be to create, once again two different functions. Or, we could use multiple dispatch again.

```julia
# Create order and reverse version
best_algo_ever(v, ::Val{:order}) = foreach(best_algo_ever, v)
best_algo_ever(v, ::Val{:reverse}) = foreach(best_algo_ever, reverse(v))

# Optional: make a dispatcher method easier to use that default to ordered iteration
best_algo_ever(v; order = :reverse) = best_algo_ever(v, Val(order))

best_algo_ever([1,2,3])
best_algo_ever([12, 3.14, 42]; order = :reverse)
```

### Improve an existing algorithm

Pull Requests (PR) to an existing algorithm are welcome, especially in the following cases:
1. enhance the algorithm readability
1. improve efficiency (speed, allocations, accuracy)
1. provide a significant variation of the available algorithm(s), especially if historically or algorithmically relevant or innovative

We invite contributors to detail in the PR and in the documentation of the new function/method to detail those improvements.

### **Adding a new algorithm**

New contributors should only have one PR per algorithm

- Clone this repository:
  - within julia `] dev https://github.com/TheAlgorithms/Julia`, the source folder will appear in `/path/to/home/.julia/dev/TheAlgorithms`
  - through git `git clone https://github.com/TheAlgorithms/Julia`; or
  - through github cli `gh repo clone TheAlgorithms/Julia`.
- Describe the algorithm in the PR. Explain what it does.
- Add documentation in the code.
- Add tests and fix any CodeCov issues.
- We appreciate if you only have one commit of your PR as too many commits mess conversations within the PR.

### Documentation template

As for other part of the repository, we try to keep some consistency between the algorithms provided. Follows a template for documentation based on the [AutomaticDocstrings.jl](https://github.com/baggepinnen/AutomaticDocstrings.jl#usage) package.

````julia
"""
    f(x::A, b=5; c=LinRange(1,2,10)) where A

DOCSTRING (please describe the algorithm here)

# Arguments:
- `x`: DESCRIPTION
- `b`: DESCRIPTION
- `c`: DESCRIPTION

# Examples (optional but recommended)

# Implementation (optional)
```julia
function f(x::A, b=5; c=LinRange(1,2,10)) where A
    5
end
```

# Contributors (optional):
- [Azzaare](https://github.com/Azzaare) (jf@baffier)
"""
function f(x::A, b=5; c=LinRange(1,2,10)) where A
    5
end
````

### **Did you find a bug?**

- Please avoid opening issues asking to be "assigned” to a particular algorithm. This merely creates unnecessary noise for maintainers. Instead, please submit your implementation in a pull request and it will be evaluated by project maintainers.

### **Do you have questions about the source code?**

- Ask any questions about how to use the repository in the [The Algorithms room in Gitter](https://gitter.im/TheAlgorithms/community?source=orgpage#) or in the [Discord](https://discord.gg/c7MnfGFGa6) server.

That is all you need to know about the process. Now it is your turn to help us improve the repository; thank you!
