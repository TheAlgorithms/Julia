# Functions for area of various geometric shapes
# Contributed By:- [Ashwani Rathee](https://github.com/ashwani-rathee)

"""
    surfarea_cube(side)

Finds surface area of a cube

# Example

```julia
surfarea_cube(1)  # returns 6
surfarea_cube(3)  # returns 54
surfarea_cube(-1) # returns DomainError
```
"""
function surfarea_cube(side)
    if side < 0
        throw(
            DomainError(
                side,
                "surfarea_cube() only works for non-negative values",
            ),
        )
    end
    return 6(side^2)
end

"""
    surfarea_cuboid(length, width, height)

Finds surface area of a cuboid

# Example

```julia
surfarea_cuboid(5, 5, 5)  # returns 150
surfarea_cuboid(-5, -5, -5)  # returns DomainError
```
"""
function surfarea_cuboid(length, width, height)
    if (length < 0) || (width < 0) || (height < 0)
        throw(DomainError("surfarea_cuboid() only accepts non-negative values"))
    end
    return 2((length * width) + (length * height) + (width * height))
end

"""
    surfarea_sphere(side)

Finds surface area of a sphere

# Example

```julia
surfarea_sphere(5)  # returns 314.1592653589793
surfarea_sphere(1)  # returns 12.566370614359172
surfarea_sphere(-1) # returns DomainError
```
"""
function surfarea_sphere(radius)
    if radius < 0
        throw(
            DomainError(
                radius,
                "surfarea_sphere() only works for non-negative values",
            ),
        )
    end
    return 4π * (radius^2)
end

"""
    area_rectangle(length, width)

Finds area of the rectangle

# Example

```julia
area_rectangle(10,20) # returns 200
area_rectangle(-1,-2) # returns DomainError
area_rectangle(1,-2)  # returns DomainError
area_rectangle(-1,2)  # returns DomainError
```
"""
function area_rectangle(length, width)
    if length < 0 || width < 0
        throw(
            DomainError("area_rectangle() only works for non-negative values"),
        )
    end
    return length * width
end

"""
    area_square(side)

Finds area of the area_square

# Example

```julia
area_square(10) # returns 100
area_square(-1) # returns DomainError
```
"""
function area_square(side)
    if side < 0
        throw(DomainError("area_square() only works for non-negative values"))
    end
    return side^2
end

"""
    area_triangle(base, height)

Finds area of the right angled triangle with base height

# Example

```julia
area_triangle(10,10) # returns 50.0
area_triangle(-1,-2) # returns DomainError
area_triangle(1,-2)  # returns DomainError
area_triangle(-1,2)  # returns DomainError
```
"""
function area_triangle(base, height)
    if base < 0 || height < 0
        throw(DomainError("area_triangle() only accepts non-negative values"))
    end
    return (base * height) / 2
end

"""
    area_heron_triangle(side1, side2, side3)

Finds area of a triangle using heron's formula

# Example

```julia
area_heron_triangle(5,12,13) # returns 30.0
area_heron_triangle(-1,-2,1) # returns DomainError
area_heron_triangle(1,-2,1)  # returns DomainError
area_heron_triangle(-1,2,1)  # returns DomainError
```
"""
function area_heron_triangle(side1, side2, side3)
    if side1 < 0 || side2 < 0 || side3 < 0
        throw(
            DomainError(
                "area_triangle_three_sides() only accepts non-negative values",
            ),
        )
    elseif side1 + side2 < side3 ||
           side1 + side3 < side2 ||
           side2 + side3 < side1
        throw(DomainError("Given three sides do not form a triangle"))
    end
    semi_perimeter = (side1 + side2 + side3) / 2
    area = sqrt(
        semi_perimeter *
        (semi_perimeter - side1) *
        (semi_perimeter - side2) *
        (semi_perimeter - side3),
    )
    return area
end

"""
    area_parallelogram(base, height)

Finds area of the parallelogram

# Example

```julia
area_parallelogram(10,20) # returns 200
area_parallelogram(-1,-2) # returns DomainError
area_parallelogram(1,-2)  # returns DomainError
area_parallelogram(-1,2)  # returns DomainError
```
"""
function area_parallelogram(base, height)
    if base < 0 || height < 0
        throw(
            DomainError(
                "area_parallelogram() only accepts non-negative values",
            ),
        )
    end
    return base * height
end

"""
area_trapezium(base1,base2,height)

Finds area of the traπzium

# Example

```julia
area_trapezium(10, 20, 30)  # returns 450.0
area_trapezium(-1, -2, -3)  # returns DomainError
area_trapezium(-1, 2, 3)    # returns DomainError
area_trapezium(1, -2, 3)    # returns DomainError
area_trapezium(1, 2, -3)    # returns DomainError
area_trapezium(-1, -2, 3)   # returns DomainError
area_trapezium(1, -2, -3)   # returns DomainError
area_trapezium(-1, 2, -3)   # returns DomainError
```
"""
function area_trapezium(base1, base2, height)
    if base1 < 0 || base2 < 0 || height < 0
        throw(DomainError("area_trapezium() only accepts non-negative values"))
    end
    return 1 / 2 * (base1 + base2) * height
end

"""
    area_circle(radius)

Finds area of the circle

# Example

```julia
area_circle(20) # returns 1256.6370614359173
area_circle(-1) # returns DomainError
```
"""
function area_circle(radius)
    if radius < 0
        throw(DomainError("area_circle() only accepts non-negative values"))
    end
    return π * radius^2
end

"""
    area_ellipse(radius_x, radius_y)

Finds area of the ellipse

# Example

```julia
area_ellipse(10, 10) # returns 314.1592653589793
area_ellipse(10, 20) # returns 628.3185307179587
area_ellipse(1, -2) # returns DomainError
area_ellipse(-1, 2) # returns DomainError
area_ellipse(-1, -2) # returns DomainError
```
"""
function area_ellipse(radius_x, radius_y)
    if radius_x < 0 || radius_y < 0
        throw(DomainError("area_ellipse() only accepts non-negative values"))
    end
    return π * radius_x * radius_y
end

"""
    area_rhombus(diagonal_1, diagonal_2)

Finds area of the rhombus

# Example

```julia
area_rhombus(10, 20) # returns 100.0
area_rhombus(-1,-2) # returns DomainError
area_rhombus(1,-2)  # returns DomainError
area_rhombus(-1,2)  # returns DomainError
```
"""
function area_rhombus(diagonal_1, diagonal_2)
    if diagonal_1 < 0 || diagonal_2 < 0
        throw(DomainError("area_rhombus() only accepts non-negative values"))
    end
    return 1 / 2 * diagonal_1 * diagonal_2
end

"""
    trapazoidal_area(f, x_start, x_end, steps)

Approximates the area under the curve using the trapezoidal rule
Arguments:
 - f: function for the
 - x_start: starting value for x
 - x_end: ending value for x
 - steps: steps taken while integrating.
"""
function trapazoidal_area(f, x_start, x_end, steps)
    x1 = x_start
    fx1 = f(x_start)
    area = 0.0

    for _ in 1:steps
        x2 = ((x_end - x_start) / steps) + x1
        fx2 = f(x2)
        area += abs(fx2 + fx1) * (x2 - x1) / 2
        x1 = x2
        fx1 = fx2
    end

    return area
end

"""
    area_regular_polygon(sides, side_len)

Finds area of any regular Polygon

# Example

```julia
area_regular_polygon(1, 5)  # returns DomainError
area_regular_polygon(3, 5)  # returns 10.825317547305486
area_regular_polygon(7, 15)  # returns 817.6302999003576
area_regular_polygon(-1, 4) # returns DomainError
area_regular_polygon(4, -3) # returns DomainError
area_regular_polygon(-12, -4) # returns DomainError
```
"""
function area_regular_polygon(sides, side_len)
    sides < 3 && throw(DomainError("A polygon should have at least 3 sides."))
    (sides < 0 || side_len < 0) && throw(
        DomainError(
            "area_regular_polygon() only works for non-negative values",
        ),
    )
    return sides * side_len^2 * cot(pi / sides) / 4
end

"""
    area_polygon(V)

Finds area of any Polygon given by continuous sequence of vertex coordinates
Arguments:
- coords: x,y co-ordinates of the vertices
    [Vector of Tuples / Matrix with 2 rows or 2 columns]

# Example

```julia
area_polygon([(0, 0), (100, 0), (0, 100)])  # returns 5000.0
area_polygon([0 0;100 0;100 100;0 100])  # returns 10000.0
area_polygon([(6, 4.5), (5, 4.5), (4.5, 5.5), (5, 6.5)]) # returns 1.5
area_polygon([0 0;100 0]) # returns DomainError
area_polygon([(6, 4.63), (5, 4.63)]) # returns DomainError
```
"""
function area_polygon(coords::Matrix{T}) where {T<:Real}
    r, c = size(coords)
    (~((c == 2 && r > 2) || (r == 2 && c > 2))) &&
        throw(DomainError("A polygon should have at least 3 vertices"))

    reshape(coords, (:, 2))
    if ~(coords[1, :] == coords[end, :])
        coords = vcat(coords, coords[1, :]') #to make a loop of the vertices
    end
    return @views abs(sum(coords[1:end-1, :] .* (-coords[2:end, 2:-1:1]))) / 2
end

function area_polygon(coords::Vector{Tuple{T,N}}) where {T,N<:Real}
    length(coords) < 3 &&
        throw(DomainError("A polygon should have at least 3 vertices"))
    if ~(first(coords) == last(coords))
        push!(coords, first(coords)) #to make a loop of the vertices
    end
    res = 0
    for i in 1:length(coords)-1
        res =
            res + coords[i][1] * coords[i+1][2] - coords[i+1][1] * coords[i][2]
    end
    return abs(res) / 2
end
