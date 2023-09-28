"""
  ProjectEuler

`ProjectEuler` naive solutions in Julia.
"""
module ProjectEuler

export problem_001
export problem_002
export problem_003
export problem_004
export problem_005
export problem_006
export problem_007
export problem_008
export problem_009
export problem_010
export problem_011
export problem_012

include("../math/divisors.jl")
include("../math/sieve_of_eratosthenes.jl")
include("problem_001.jl")
include("problem_002.jl")
include("problem_003.jl")
include("problem_004.jl")
include("problem_005.jl")
include("problem_006.jl")
include("problem_007.jl")
include("problem_008.jl")
include("problem_009.jl")
include("problem_010.jl")
include("problem_011.jl")
include("problem_012.jl")

end
