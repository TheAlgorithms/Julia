"""
    dfs(graph::Vector{Vector{Int}}, source::Int)

Depth-first search is an algorithm for traversing or searching tree or graph data structures. 
The algorithm starts at a given vertex and explores as far as possible along each branch before backtracking.
This implementation is for educational purposes only, so it simply prints out the vertices in the order that they were traversed.

# Arguments:
- `graph`: a directed, unweighted graph
- `source`: the source vertex from which to begin the traversal

# Example
```jldoctest
graph = [
    [2, 3, 6], 
    [3, 4],
    [4],
    [1, 2, 5],
    [2],
    [1, 5]
]
dfs(graph, 6)

# output

6-element Vector{Int64}:
 6
 5
 2
 4
 3
 1
```

Contributed by: [Yannick Brenning](https://github.com/ybrenning)
"""
function dfs(graph::Vector{Vector{Int}}, source::Int = 1)
    # Use a boolean "visited" array to avoid processing a vertex more than once
    visited = [false for _ in 1:length(graph)]
    result = Vector{Int}()

    stack = Stack{Int}()
    push!(stack, source)

    visited[source] = true

    while length(stack) > 0
        curr_v = pop!(stack)
        push!(result, curr_v)

        # Add every unvisited target to the top of the stack
        for i in 1:length(graph[curr_v])
            if !visited[graph[curr_v][i]]
                push!(stack, graph[curr_v][i])
                visited[graph[curr_v][i]] = true
            end
        end
    end
    return result
end
