using TheAlgorithms.Scheduling

@testset "Scheduling" begin
    @testset "Scheduling: FCFS" begin
        n = 3
        process_id = Any[1, 2, 3]
        burst_times = Any[10, 5, 8]
        @test fcfs(n, process_id, burst_times) == (
            Any[1, 2, 3],
            Any[10, 5, 8],
            Any[0, 10, 15],
            Any[10, 15, 23],
            8.333333333333334,
            16.0,
        )
    end
end
