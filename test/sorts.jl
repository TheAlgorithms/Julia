@testset "Sorts" begin
    sorts = [
        bubble_sort!
        bucket_sort!
        counting_sort!
        exchange_sort!
        insertion_sort!
        merge_sort!
        quick_sort!
        selection_sort!
    ]

    for f in sorts
        x = [3,5,1,4,2]
        y = [12,4,3,2,1]
        empty = []
        one = [1]

        f(x)
        @test x == [1,2,3,4,5]

        f(y)
        @test y == [1,2,3,4,12]
        
        f(empty)
        @test empty == []
        
        f(one)
        @test one == [1]
    end
end