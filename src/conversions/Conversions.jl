export Conversions
"""
  Conversions

`Conversions` are conversions of measurements in Julia	
"""
module Conversions

using TheAlgorithms

export celsius_to_fahrenheit
export celsius_to_kelvin
export fahrenheit_to_celsius
export fahrenheit_to_kelvin
export kelvin_to_celsius
export kelvin_to_fahrenheit
export weight_conversion
export length_conversion

include("weight_conversion.jl")
include("temparature_conversion.jl")
include("length_conversion.jl")

end
