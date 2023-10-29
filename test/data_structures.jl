using TheAlgorithms.DataStructure
@testset "DataStructures" begin
    @testset "BasicBinaryTree" begin
        @testset "BasicBinaryTree: BinaryTree" begin
            tree = BinaryTree{Int}(10, 0)
            insert!(tree, 1, 10)
            insert!(tree, 1, 20)
            insert!(tree, 2, 50)
            #=
            [1] 0
             |       \
            [2] 10  [3] 20
             |
            [4] 50
            =#
            @test tree.n == 4
            @test depth(tree, 4) == 2
            @test isleaf(tree, 2) == false
            @test ch(tree, 1, true) == 3
            @test tree.val[left(tree)] == 50
            @test height(tree) == 2
        end

        @testset "BinaryHeap: MinHeap" begin
            h = MinHeap{Int}()
            @test isempty(h)
            push!(h, 10, 2, 7)
            @test top(h) == 2
            @test length(h) == 3
            push!(h, -3, -1)
            @test top(h) == -3
            @test length(h) == 5
            @test pop!(h) == -3
            @test pop!(h) == -1
            @test pop!(h) == 2
            @test pop!(h) == 7
            @test pop!(h) == 10
            @test_throws ArgumentError pop!(h)
            @test length(h) == 0
        end

        @testset "BinaryHeap: MaxHeap" begin
            h = MaxHeap{Int}()
            push!(h, 10, 20, 15, -20, -10)
            @test pop!(h) == 20
            @test pop!(h) == 15
            @test pop!(h) == 10
            @test pop!(h) == -10
            @test pop!(h) == -20
            @test_throws ArgumentError pop!(h)
        end

        @testset "DisjointSet: DisjointSet" begin
            set = DisjointSet(10)
            set.par[4] = 1
            set.par[3] = 1
            set.par[2] = 3
            set.par[5] = 8
            @test find(set, 2) == 1
            merge!(set, 5, 4)
            @test find(set, 5) == find(set, 2)
        end

        @testset "LinkedList" begin
            list = LinkedList.create_list(3, 13)
            @test LinkedList.return_as_array(list) == [13, 13, 13]

            LinkedList.insert(list, 5, 2)
            LinkedList.push_back(list, 8)
            LinkedList.insert(list, 7, 1)
            LinkedList.insert(list, 7, 6)
            @test LinkedList.return_as_array(list) == [7, 13, 5, 13, 13, 7, 8]

            LinkedList.remove(list, 7)
            @test LinkedList.return_as_array(list) == [7, 13, 5, 13, 13, 7]

            LinkedList.remove_all(list, 13)
            @test LinkedList.return_as_array(list) == [7, 5, 7]

            @test LinkedList.indexOf(list, 5) == 2
            @test LinkedList.indexOf(list, 3) == -1

            LinkedList.remove_first(list, 7)
            @test LinkedList.return_as_array(list) == [5, 7]

            @test ismissing(LinkedList.get(list, 3)) == true
            @test ismissing(LinkedList.get_node(list, 4)) == true
            @test LinkedList.get(list, 2) == 7

            LinkedList.clear(list)
            @test LinkedList.is_empty(list) == true
        end

        @testset "Fenwick tree" begin
            arr = [-5 2 3 10 5 11 -5]

            tree = FenwickTree.create_tree(arr)
            @test tree == [-5 -3 3 10 5 16 -5]

            @test FenwickTree.to_arr(tree) == arr

            @test FenwickTree.get_sum(tree, 3) == 0
            @test FenwickTree.get_sum(tree, 1, 3) == 0
            @test FenwickTree.get_sum(tree, 5, 7) == 11

            arr[6] -= 3
            FenwickTree.change(tree, 6, -3)

            @test FenwickTree.get_sum(tree, 5, 7) == 8
        end
    end
end
