@testset "Sorts" begin
    sorts = [
        BubbleSort!,
        BucketSort!,
        CountingSort!,
        ExchangeSort!,
        InsertionSort!,
        MergeSort!,
        QuickSort!,
        SelectionSort!,
    ]

    for f in sorts
        x = [3,5,1,4,2]
        f(x)
        @test x == [1,2,3,4,5]
    end
end
