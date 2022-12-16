using TheAlgorithms.ProjectRosalind

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
        @test rabbits(15, 2) == 75316
        @test rabbits(10, 3) == 1159
    end
end
