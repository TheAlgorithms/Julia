@testset "Sorts" begin
    y = [1,2,3,4,5]
    
    sorts = [
        BubbleSort!,
        ExchangeSort!
        InsertionSort!,
        MergeSort!,
        QuickSort!,
        SelectionSort!,
    ]
    
    for f in sorts
        @test f([3,5,1,4,2]) == y
    end
end
