using TheAlgorithms.Graph
@testset "Graph" begin
    @testset "Dijkstra" begin
        graph::Vector{Vector{Tuple{Int,Int}}} = [
            [(2, 8), (3, 6), (4, 4)],
            [(3, 1), (5, 5)],
            [(5, 4)],
            [(2, 3), (5, 9)],
            [(1, 2), (3, 2), (4, 5)],
            [(1, 1), (4, 3)],
        ]

        distances, prev = dijkstra(graph, 1)
        @test distances == [0, 7, 6, 4, 10, -1]
        @test prev == [0, 4, 1, 1, 3, -1]
        @test get_dijkstra_path(prev, 1) == [1]
        @test get_dijkstra_path(prev, 2) == [1, 4, 2]
        @test get_dijkstra_path(prev, 3) == [1, 3]
        @test get_dijkstra_path(prev, 4) == [1, 4]
        @test get_dijkstra_path(prev, 5) == [1, 3, 5]
        @test get_dijkstra_path(prev, 6) == []
    end

    @testset "BellmanFord" begin
        graph::Vector{Tuple{Int,Int,Int}} = [
            (1, 2, 4),
            (1, 3, 2),
            (2, 3, 3),
            (2, 4, 2),
            (2, 5, 3),
            (3, 2, 1),
            (3, 4, 4),
            (3, 5, 5),
            (5, 4, -5),
        ]

        @test bellman_ford(graph, 1) == [0, 3, 2, 1, 6]

        negative_edge_cycle::Vector{Tuple{Int,Int,Int}} =
            [(1, 3, 3), (2, 1, -6), (3, 2, 2)]

        @test_throws ErrorException bellman_ford(negative_edge_cycle, 1)
    end

    @testset "bfs" begin
        graph = [[2, 3, 6], [3, 4], [4], [1, 2, 5], [2], [1, 5]]

        @test bfs(graph, 4) == [4, 1, 2, 5, 3, 6]
        @test bfs(graph) == [1, 2, 3, 6, 4, 5]
    end

    @testset "dfs" begin
        graph = [[2, 3, 6], [3, 4], [4], [1, 2, 5], [2], [1, 5]]

        @test dfs(graph, 6) == [6, 5, 2, 4, 3, 1]
        @test dfs(graph) == [1, 6, 5, 3, 4, 2]
    end
end
