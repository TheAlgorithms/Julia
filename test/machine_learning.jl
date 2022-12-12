using TheAlgorithms.ML

@testset "Machine learning" begin
    @testset "Machine learning: K-Means clustering" begin
        # poinst is a vector of 2D points.
        points = [[0, 0], [1, 1], [5.0, 5.0], [10.0, 10.0]]
        @test KMeans.cluster(1, -1, points) == [[4.0, 4.0]] # 1 cluster, undefined number of iterations
        @test KMeans.cluster(1, 10, points) == [[4.0, 4.0]] # 1 cluster, 10 iterations
        # If we are looking for 2 clusters, it is obvious that the first one will be between the first two
        # points ([0, 0] and [1, 1]), and the second one will be between the last two points ([5, 5] and [10, 10])
        @test KMeans.cluster(2, -1, points) == [[0.5, 0.5], [7.5, 7.5]]
        # When the number of clusters is equal to the number of points,
        # each cluster will be assigned to a single point
        @test KMeans.cluster(4, -1, points) == points
        # When there are not enough points to create k clusters,
        # each cluster will have its coordinates set to 0
        KMeans.cluster(5, -1, points) ==
        [[0.0, 0.0], [0.0, 0.0], [0.0, 0.0], [0.0, 0.0], [0.0, 0.0]]
    end
end
