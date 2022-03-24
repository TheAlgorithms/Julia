"""
celsius_to_fahrenheit(celsius, ndigits::Int = 2)

Converts celsius to fahrenheit and round to 2 decimal places

# Example

```julia
celsius_to_fahrenheit(273.354, 3) == 524.037  # returns true
celsius_to_fahrenheit(273.354, 0) == 524.0    # returns true
celsius_to_fahrenheit(-40.0) == -40.0         # returns true
celsius_to_fahrenheit(-20.0) == -4.0          # returns true
celsius_to_fahrenheit(0) == 32.0              # returns true
celsius_to_fahrenheit(20) == 68.0             # returns true
```
"""
function celsius_to_fahrenheit(celsius, ndigits::Int = 2)
    return round((float(celsius) * 1.8) + 32.0; digits = ndigits)
end

"""
function celsius_to_kelvin(celsius, ndigits::Int = 2)

Converts celsius to kelvin and round to 2 decimal places

# Example

```julia
celsius_to_kelvin(273.354, 3) == 546.504    # returns true
celsius_to_kelvin(273.354, 0) == 547.0      # returns true
celsius_to_kelvin(0.0) == 273.15            # returns true
celsius_to_kelvin(20.0) == 293.15           # returns true
```

"""
function celsius_to_kelvin(celsius, ndigits::Int = 2)
    return round(float(celsius) + 273.15; digits = ndigits)
end

"""
fahrenheit_to_celsius(fahrenheit, ndigits::Int = 2)

Converts fahrenheit to celsius and round to 2 decimal places

# Example

```julia
fahrenheit_to_celsius(273.354, 3) == 134.086 # returns true
fahrenheit_to_celsius(273.354, 0) == 134.0   # returns true
fahrenheit_to_celsius(0.0) == -17.78         # returns true
fahrenheit_to_celsius(20.0) == -6.67         # returns true
fahrenheit_to_celsius(40.0) == 4.44          # returns true
fahrenheit_to_celsius(60.0) == 15.56         # returns true
fahrenheit_to_celsius(80.0) == 26.67         # returns true
```
"""
function fahrenheit_to_celsius(fahrenheit, ndigits::Int = 2)
    return round((float(fahrenheit) - 32.0) * 5 / 9; digits = ndigits)
end

"""
fahrenheit_to_kelvin(fahrenheit, ndigits::Int = 2)

Converts fahrenheit to kelvin and round to 2 decimal places

# Example

```julia
fahrenheit_to_kelvin(273.354, 3) == 407.236 # returns true
fahrenheit_to_kelvin(273.354, 0) == 407.0   # returns true
fahrenheit_to_kelvin(0) == 255.37           # returns true
fahrenheit_to_kelvin(20.0) == 266.48        # returns true
fahrenheit_to_kelvin(40.0) == 277.59        # returns true
fahrenheit_to_kelvin(60.0) == 288.71        # returns true
fahrenheit_to_kelvin(80.0) == 299.82        # returns true
```
"""
function fahrenheit_to_kelvin(fahrenheit, ndigits::Int = 2)
    return round(
        ((float(fahrenheit) - 32.0) * 5 / 9) + 273.15;
        digits = ndigits,
    )
end

"""
function kelvin_to_celsius(kelvin, ndigits::Int = 2)

Converts kelvin to celsius and round to 2 decimal places

# Example

```julia
kelvin_to_celsius(273.354, 3) == 0.204   # returns true
kelvin_to_celsius(273.354, 0) == 0.0     # returns true
kelvin_to_celsius(273.15) == 0.0         # returns true
kelvin_to_celsius(300) == 26.85          # returns true
```
"""
function kelvin_to_celsius(kelvin, ndigits::Int = 2)
    return round(float(kelvin) - 273.15; digits = ndigits)
end

"""
function kelvin_to_fahrenheit(kelvin, ndigits::Int = 2)

Converts kelvin to fahrenheit and round to 2 decimal places

# Example

```julia
kelvin_to_fahrenheit(273.354, 3) == 32.367  # returns true
kelvin_to_fahrenheit(273.354, 0) == 32.0    # returns true
kelvin_to_fahrenheit(273.15) == 32.0        # returns true
kelvin_to_fahrenheit(300) == 80.33          # returns true
```
"""
function kelvin_to_fahrenheit(kelvin, ndigits::Int = 2)
    return round(((float(kelvin) - 273.15) * 1.8) + 32.0; digits = ndigits)
end
