"""
    bellman_ford(graph::Vector{Tuple{Int, Int, Int}}, source::Int)

The Bellman-Ford algorithm is an algorithm which computes the shortest paths from a single source vertex to all other vertices in a weighted graph.
It is slower than Dijkstra's algorithm, which solves the same problem, but it is capable of handling graphs with negative edge weights.
Instead of greedily performing the relaxation on the vertices, Bellman-Ford simply relaxes all edges, and does this |V|-1 times.

# Arguments:
- `graph`: a directed, weighted graph
- `source`: the source vertex from which to begin the traversal

# Example
```jldoctest
graph = [
    (1, 2, 4), (1, 3, 2),
    (2, 3, 3), (2, 4, 2), (2, 5, 3),
    (3, 2, 1), (3, 4, 4), (3, 5, 5),
    (5, 4, -5)
]
bellman_ford(graph, 1)

# output

5-element Vector{Int64}:
 0
 3
 2
 1
 6
```

Contributed by: [Yannick Brenning](https://github.com/ybrenning)
"""
function bellman_ford(graph::Vector{Tuple{Int,Int,Int}}, source::Int = 1)
    vertices = maximum(graph)[1]
    distance = [typemax(Int) for _ in 1:vertices]
    distance[source] = 0

    # Relax the edges |V| - 1 times
    for _ in 1:vertices
        for edge in graph
            src, dest, weight = edge[1], edge[2], edge[3]
            if distance[src] + weight < distance[dest]
                distance[dest] = distance[src] + weight
            end
        end
    end

    # Detect negative weight cycle    
    for edge in graph
        src, dest, weight = edge[1], edge[2], edge[3]
        if distance[src] + weight < distance[dest]
            throw(ErrorException("Graph contains a negative weight cycle"))
        end
    end

    return distance
end
