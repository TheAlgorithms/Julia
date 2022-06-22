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
end
