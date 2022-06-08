@testset "Project Rosalind" begin
    @testset "Project Rosalind: Count Nucleotides" begin
        @test count_nucleotides(
            "AGCTTTTCATTCTGACTGCAACGGGCAATATGTCTCTGTGTGGATTAAAAAAAGAGTGTCTGATAGCAGC",
        ) == "20 12 17 21"
    end

    @testset "Project Rosalind: DNA to RNA" begin
        @test dna2rna("GATGGAACTTGACTACGTAAATT") == "GAUGGAACUUGACUACGUAAAUU"
    end

    @testset "Project Rosalind: Reverse Complement" begin
        @test reverse_complement("AAAACCCGGT") == "ACCGGGTTTT"
    end

    @testset "Project Rosalind: Rabbits" begin
        @test rabbits(5, 3) == 19
        @test rabbits(34, 3) == 574888488199
        @test rabbits(28, 3) == 3855438727
    end
end
