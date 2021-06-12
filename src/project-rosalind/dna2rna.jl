using Test

"""
Given: A DNA string t

having length at most 1000 nt.

Return: The transcribed RNA string of t
"""
function dna2rna(s::AbstractString)
	return replace(s, 'T' => 'U')
end

@testset "transcribe DNA to RNA" begin
	@test dna2rna("GATGGAACTTGACTACGTAAATT") == "GAUGGAACUUGACUACGUAAAUU"
end
