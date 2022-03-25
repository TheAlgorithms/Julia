#Find Volumes of Various Shapes.
#Wikipedia reference: https://en.wikipedia.org/wiki/Volume
# contributed By:- [Qingyu Qu](https://github.com/ErikQQY)

"""
    vol_cube()

Compute the volume of a cube.

# Examples

```julia-repl
julia> vol_cube(1)
1
julia> vol_cube(3)
27
julia> vol_cube(-1)
DomainError
```
"""
function vol_cube(side)
    if side < 0
        throw(DomainError("vol_cube() only works for non negative values."))
    end
    return side^3
end

"""
    vol_cuboid(width, height, length)

Compute the volume of a vol_cuboid

# Examples

```julia-repl
julia> vol_cuboid(1, 1, 1)
1
julia> vol_cuboid(1, 2, 3)
6
```
"""
function vol_cuboid(width, height, length)
    if width < 0 || height < 0 || length < 0
        throw(DomainError("vol_cuboid() only works for non negative values."))
    end
    return width * height * length
end

"""
    vol_cone(area_of_base, height)

Compute the Volume of a Cone


# Examples

```julia-repl
julia> vol_cone(10, 3)
10.0
julia> vol_cone(1, 1)
0.3333333333333333
```
"""
function vol_cone(area_of_base, height)
    if area_of_base < 0 || height < 0
        throw(DomainError("vol_cone() only works for non negative values."))
    end
    return area_of_base * height / 3.0
end

"""
    vol_right_circ_cone(radius, height)

Compute the Volume of a Right Circular Cone.

# Examples

```julia-repl
julia> vol_right_circ_cone(2, 3)
12.566370614359172
```
"""
function vol_right_circ_cone(radius, height)
    if radius < 0 || height < 0
        throw(
            DomainError(
                "vol_right_circ_cone() only works for non negative values.",
            ),
        )
    end
    return π * radius^2 * height / 3.0
end

"""
    vol_prism(area_of_base, height)

Compute the Volume of a Prism.

# Examples

```julia-repl
julia> vol_prism(10, 2)
20.0
julia> vol_prism(11, 1)
11.0
```
"""
function vol_prism(area_of_base, height)
    if area_of_base < 0 || height < 0
        throw(DomainError("vol_prism() only works for non negative values."))
    end
    return area_of_base * height
end

"""
    vol_pyramid(area_of_base, height)

Compute the volume of a Pyramid.

# Examples

```julia-repl
julia> vol_pyramid(10, 3)
10.0
julia> vol_pyramid(1.5, 3)
1.5
```
"""
function vol_pyramid(area_of_base, height)
    if area_of_base < 0 || height < 0
        throw(DomainError("vol_pyramid() only works for non negative values."))
    end
    return area_of_base * height / 3.0
end

"""
    vol_sphere(radius)

Compute the volume of a sphere.

# Examples

```julia
vol_sphere(5)  # returns 523.5987755982989
vol_sphere(1)  # returns 4.1887902047863905
vol_sphere(-1) # returns DomainError
```
"""
function vol_sphere(radius)
    if radius < 0
        throw(DomainError("vol_sphere() only works for non negative values."))
    end
    return 4 / 3 * pi * (radius)^3
end

"""
    vol_circular_cylinder(area_of_, height)

Compute the Volume of a Circular Cylinder.

# Examples

```julia-repl
julia> vol_circular_cylinder(1, 1)
3.141592653589793
julia> vol_circular_cylinder(4, 3)
150.79644737231007
"""
function vol_circular_cylinder(radius, height)
    if radius < 0 || height < 0
        throw(
            DomainError(
                "vol_circular_cylinder() only works for non negative values.",
            ),
        )
    end
    return pi * radius^2 * height
end
