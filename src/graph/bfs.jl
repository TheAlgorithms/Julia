"""
    bfs(graph:Vector{Vector{Int}}, source::Int = 1)

Depth-first search is an algorithm for traversing or searching tree or graph data structures. 
The algorithm starts at a given vertex and explores all vertices at the present depth before moving to the next "level".
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
TheAlgorithms.Graph.bfs(graph, 4)

# output

6-element Vector{Int64}:
 4
 1
 2
 5
 3
 6
```

Contributed by: [Yannick Brenning](https://github.com/ybrenning)
"""
function bfs(graph::Vector{Vector{Int}}, source::Int = 1)
    # Use a boolean "visited" array to avoid processing a vertex more than once
    visited = [false for _ in 1:length(graph)]
    result = Vector{Int}()

    queue = Queue{Int}()
    enqueue!(queue, source)

    visited[source] = true

    while length(queue) > 0
        curr_v = dequeue!(queue)
        push!(result, curr_v)

        # Add every unvisited target to the end of the queue
        for i in 1:length(graph[curr_v])
            if !visited[graph[curr_v][i]]
                enqueue!(queue, graph[curr_v][i])
                visited[graph[curr_v][i]] = true
            end
        end
    end

    return result
end
