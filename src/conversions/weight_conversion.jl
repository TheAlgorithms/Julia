KILOGRAM_CHART = Dict{String,Float64}(
    "kilogram" => 1.0,
    "gram" => 10^3,
    "milligram" => 10^6,
    "metric-ton" => 10^-3,
    "long-ton" => 0.0009842073,
    "short-ton" => 0.0011023122,
    "pound" => 2.2046244202,
    "ounce" => 35.273990723,
    "carrat" => 5000.0,
    "atomic-mass-unit" => 6.022136652e26,
)

WEIGHT_TYPE_CHART = Dict{String,Float64}(
    "kilogram" => 1.0,
    "gram" => 10^-3,
    "milligram" => 10^-6,
    "metric-ton" => 10^3,
    "long-ton" => 1016.04608,
    "short-ton" => 907.184,
    "pound" => 0.453592,
    "ounce" => 0.0283495,
    "carrat" => 0.0002,
    "atomic-mass-unit" => 1.660540199e-27,
)

function weight_conversion(value, from_type, to_type)
    if !haskey(KILOGRAM_CHART, to_type) || !haskey(WEIGHT_TYPE_CHART, from_type)
        throw(
            error(
                "Invalid 'from_type' or 'to_type' value: $(from_type), $(to_type)\n",
                "Supported values are: $(WEIGHT_TYPE_CHART)",
            ),
        )
    end
    return value * KILOGRAM_CHART[to_type] * WEIGHT_TYPE_CHART[from_type]
end
