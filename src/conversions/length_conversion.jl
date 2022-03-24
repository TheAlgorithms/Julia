"""
    function length_conversion(value, from_type, to_type)

A function that converts a value from a measurement unit to another one

Accepted units are: millimeter(s), centimeter(s), meter(s), kilometer(s),
inch(es), feet, foot, yard(s), mile(s). Abbreviations are also supported.

# Examples/Tests (optional but recommended)
```julia
length_conversion(10, "METERS", "cm")
length_conversion(12345, "yards", "FEET")
```

Because the algorithm converts values to meters, and from meters to the final type,
some imperial system units may have errors:
length_conversion(1, "yards", "FEET") returns 3.000000096, intead of 3.

# Contributed by:- [Fernanda Kawasaki](https://github.com/fernandakawasaki)
"""

# Lookup table that returns conversion of 1 unit of type to meters
METER_CONVERSION = Dict{String,Float64}(
    "mm" => 0.001,
    "cm" => 0.01,
    "m" => 1,
    "km" => 1000,
    "in" => 0.0254,
    "ft" => 0.3048,
    "yd" => 0.9144,
    "mi" => 1609.34,
)

# Lookup table that returns the conversion of 1 meter to type
TYPE_CONVERSION = Dict{String,Float64}(
    "mm" => 1000,
    "cm" => 100,
    "m" => 1,
    "km" => 0.001,
    "in" => 39.3701,
    "ft" => 3.28084,
    "yd" => 1.09361,
    "mi" => 0.000621371,
)

NAME_CONVERSION = Dict{String,String}(
    "millimeter" => "mm",
    "millimeters" => "mm",
    "centimeter" => "cm",
    "centimeters" => "cm",
    "meter" => "m",
    "meters" => "m",
    "kilometer" => "km",
    "kilometers" => "km",
    "inch" => "in",
    "inches" => "in",
    "feet" => "ft",
    "foot" => "ft",
    "yard" => "yd",
    "yards" => "yd",
    "mile" => "mi",
    "miles" => "mi",
)

function normalize_type(type)
    l_type = lowercase(type)
    if !haskey(METER_CONVERSION, l_type)
        if !haskey(NAME_CONVERSION, l_type)
            throw(
                error(
                    "Invalid 'type' value: $(type)\n",
                    "Supported values are: $(keys(NAME_CONVERSION))\n",
                    "Supported abbreviations are: $(keys(METER_CONVERSION))\n",
                ),
            )
        end
        return NAME_CONVERSION[l_type]
    end
    return l_type
end

function length_conversion(value, from_type, to_type)
    from_type_norm = normalize_type(from_type)
    to_type_norm = normalize_type(to_type)
    value_in_meters = value * METER_CONVERSION[from_type_norm]
    return value_in_meters * TYPE_CONVERSION[to_type_norm]
end
