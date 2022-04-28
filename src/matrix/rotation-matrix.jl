"""
A 2D Rotation matrix is a mtrix that rotates a vector in a 2D real space by an angle theta.
For more info: https://en.wikipedia.org/wiki/Rotation_matrix

This function takes the angle `theta` in radians as input and returns a 2D Matrix which will rotate the vector by angle `theta`.
"""
function rotation_matrix(θ)
    rot_mat = Matrix{Float64}(undef, 2, 2)
    rot_mat[1, 1] = cos(θ)
    rot_mat[1, 2] = -sin(θ)
    rot_mat[2, 1] = sin(θ)
    rot_mat[2, 2] = cos(θ)

    return rot_mat
end
