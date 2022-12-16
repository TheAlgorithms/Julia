using TheAlgorithms.Sorts

@testset "Sorts" begin
    sorts = [
        bogo_sort!
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
    end
end
