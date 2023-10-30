using TheAlgorithms.Sorts

@testset "Sorts" begin
    @testset "bogo_sort" begin
        x = [3, 1, 4, 2]
        bogo_sort!(x)
        @test x == [1, 2, 3, 4]
    end

    @testset "deterministic sorts" begin
        sorts = [
            bubble_sort!
            bucket_sort!
            counting_sort!
            exchange_sort!
            heap_sort!
            insertion_sort!
            merge_sort!
            quick_sort!
            selection_sort!
        ]

        for f in sorts
            x = [3, 5, 1, 4, 2]
            f(x)
            @test x == [1, 2, 3, 4, 5]

            y = [5, 2, 2, 2, 1, 5, 2, 34, 6, 4, 3, 2, 1, 2, 3, 4, 10, 1]
            f(y)
            @test y == [1, 1, 1, 2, 2, 2, 2, 2, 2, 3, 3, 4, 4, 5, 5, 6, 10, 34]

            z = []
            f(z)
            @test z == []

            s = [1]
            f(s)
            @test s == [1]
        end
    end
end
