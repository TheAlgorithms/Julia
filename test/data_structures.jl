@testset "DataStructures" begin
@testset "BasicBinaryTree" begin
    @testset "BasicBinaryTree: BinaryTree" begin
        tree=BinaryTree{Int}(10,0)
        insert!(tree,1,10)
        insert!(tree,1,20)
        insert!(tree,2,50)
        #=
        [1] 0
         |       \
        [2] 10  [3] 20
         |
        [4] 50
        =#
        @test tree.n == 4
        @test depth(tree,4) == 2
        @test isleaf(tree,2) == false
        @test ch(tree,1,true) == 3
        @test tree.val[left(tree)] == 50
        @test height(tree) == 2
    end
    @testset "DisjointSet: DisjointSet" begin
        set=DisjointSet(10)
        set.par[4]=1
        set.par[3]=1
        set.par[2]=3
        set.par[5]=8
        @test find(set,2) == 1
        merge!(set,5,4)
        @test find(set,5) == find(set,2)
    end
end
end
