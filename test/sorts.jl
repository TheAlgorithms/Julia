@testset "Sorts" begin
    x=[3,5,1,4,2]
    BubbleSort!(x)
    @test x == [1,2,3,4,5]
    x=[3,5,1,4,2]
    InsertionSort!(x)
    @test x == [1,2,3,4,5]
    x=[3,5,1,4,2]
    SelectionSort!(x)
    @test x == [1,2,3,4,5]
end