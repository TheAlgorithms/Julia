
"""
    dijkstra(graph::Vector{Vector{Tuple{Int,Int}}}, source::Int)

Given a directed graph with weights on the arcs and a source vertex, the dijkstra algorithm
calculates the distance from the source to all other vertices, and the solution tree associated
with those distances. The solution tree is given by a vector `prev` which stores the source of the
arc that arrives at each vertex. By definition: distance[source] = prev[source] = 0. If a vertex v
is not reachable from the source, then distance[v] = prev[v] = -1.

# Arguments:
- `graph`: a directed graph with weights on the arcs
- `source`: the source vertex from which the distances will be calculated

# Example
```jldoctest
graph = [
    [(2, 8), (3, 6), (4, 4)],
    [(3, 1), (5, 5)],
    [(5, 4)],
    [(2, 3), (5, 9)],
    [(1, 2), (3, 2), (4, 5)],
    [(1, 1), (4, 3)],
]
distances, prev = dijkstra(graph, 1)

println("v | dist | path")
for v in eachindex(graph)
    distance = distances[v] == -1 ? "  NR" : lpad(distances[v], 4) # NR: Non Reachable
    path = join(get_dijkstra_path(prev, v), " -> ")
    println("\$v | \$distance | \$path")
end

# output

v | dist | path
1 |    0 | 1
2 |    7 | 1 -> 4 -> 2
3 |    6 | 1 -> 3
4 |    4 | 1 -> 4
5 |   10 | 1 -> 3 -> 5
6 |   NR | 
```

Contributed By: [Gabriel Soares](https://github.com/gosoares)
"""
function dijkstra(graph::Vector{Vector{Tuple{Int,Int}}}, source::Int)
    # V = {1, 2, ..., length(graph)}: set of vertices
    # A = {(i, j): i and j are adjacents; i,j in V}: set of arcs
    # graph[i] = {(j, distance[i to j]): (i, j) in A}: adjacency list

    # distance[j] min distance from source to j
    distance::Vector{Int} = fill(typemax(Int), length(graph))
    prev::Vector{Int} = fill(-1, length(graph))
    visited::Vector{Bool} = falses(length(graph))
    pq = MinHeap{Tuple{Int,Int}}() # (distance, vertex) | priority queue

    distance[source] = 0
    prev[source] = 0 # to mark the source
    push!(pq, (0, source))

    while !isempty(pq)
        # get the vertex that was not yet visited and the distance from the source is minimal
        dv, v = pop!(pq)
        visited[v] && continue
        visited[v] = true

        for (u, dvu) in graph[v] # dvu: distance from v to u
            # check if u can be reached through v with a smaller distance than the current
            if !visited[u] && dv + dvu < distance[u]
                distance[u] = dv + dvu
                prev[u] = v
                push!(pq, (distance[u], u))
            end
        end
    end

    replace!(distance, typemax(Int) => -1) # distance[v] = -1 means that v is not reachable from source
    return distance, prev
end

"""
    get_dijkstra_path(tree::Vector{Int}, dest::Int)

Given a solution `tree` from the [`dijkstra`](@ref) algorithm, extract the path from the source to
`dest`, including them.

# Arguments:
- `tree`: solution tree from the [`dijkstra`](@ref) algorithm
- `dest`: path's destionation vertex
"""
function get_dijkstra_path(tree::Vector{Int}, dest::Int)
    path = Int[]
    tree[dest] == -1 && return path # not reachable

    while dest != 0
        push!(path, dest)
        dest = tree[dest]
    end
    return reverse!(path)
end
