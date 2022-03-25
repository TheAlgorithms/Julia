@testset "Project Rosalind" begin
    @testset "Project Rosalind: Count Nucleotides" begin
        @test count_nucleotides(
            "AGCTTTTCATTCTGACTGCAACGGGCAATATGTCTCTGTGTGGATTAAAAAAAGAGTGTCTGATAGCAGC",
        ) == "20 21 17 12"
    end

    @testset "Project Rosalind: DNA to RNA" begin
        @test dna2rna("GATGGAACTTGACTACGTAAATT") == "GAUGGAACUUGACUACGUAAAUU"
    end

    @testset "Project Rosalind: Reverse Complement" begin
        @test reverse_complement("AAAACCCGGT") == "ACCGGGTTTT"
    end
end
