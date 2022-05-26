"""
   A K-Means algorithm for data clustering

# Brief:
    The algorithm takes n-dimensional points represented as a vector where each element of that vector
    corresponds to one dimension of the point. In the beginning, the algorithm select k points.
    Every of the k points is used as a centre of the cluster. In each iteration, every of these k points
    is connected to the nearest points and moved, until it stops changing its position through iterations.

# For more informations:
    https://en.wikipedia.org/wiki/K-means_clustering

# Contributed by:- [Nikola Mircic](https://github.com/Nikola-Mircic)
"""

module KMeans
# A function that takes two points and returns the distance 
# between them
function distance(a::Vector{T}, b::Vector{T}) where {T<:Number}
    if length(a) != length(b)
        return 0.0
    end
    sum = 0.0
    for i in 1:length(a)
        sum = sum + (a[i] - b[i]) * (a[i] - b[i])
    end
    return sqrt(sum)
end

# A function that returns the middle point based on the passed
# matrix in which every row contains coordinates of the single point
function findMiddle(points::Vector{Vector{T}}) where {T<:Number}
    middle::Vector{T} = []
    # Calculate arithmetic mean of coordinates for each dimension
    for dim in 1:length(points[1])
        sum = 0.0
        for val in 1:length(points[:, 1])
            sum = sum + points[val][dim]
        end
        push!(middle, sum / length(points[:, 1]))
    end
    return middle
end

# Function that assigns each point to the nearest cluster and then creates a list
# of centres of those clusters
# Returns coordinates of the clusters at the end of the iteration
function moveClusters(
    k::Int,
    dim::Int,
    clusters::Vector{Vector{T}},
    points::Vector{Vector{T}},
) where {T<:Number}
    assign::Vector{Vector{Int}} = [] # A matrix to write point-cluster pairs
    for i in 1:k
        push!(assign, [])
    end
    # For each point we are finding the nearest cluster
    for p in 1:length(points[:, 1])
        min_dis = distance(points[p], clusters[1])
        idx = 1
        for c in 2:k
            if distance(points[p], clusters[c]) < min_dis
                min_dis = distance(points[p], clusters[c])
                idx = c
            end
        end
        push!(assign[idx], p) # Assign a point p to the cluster with index idx
    end

    # After assigning each element to the cluster,
    # we are using those points to calculate the centers of our clusters
    temp_clust = copy(clusters)
    for i in 1:length(assign)
        temp_clust[i] = findMiddle(points[assign[i]])
    end

    return temp_clust
end

# MAIN FUNCTION
# Call this function to find k clusters for passed points
# If you want to have a limited number of iterations, set iter to any positive integer,
# else set it to 0 or any negative number
function cluster(k::Int, iter::Int, points::Vector{Vector{T}}) where {T<:Number}
    points_num = length(points[:, 1]) # Number of points
    clust_dim = length(points[1]) # dimension of the cluster we need to find
    #println("dim: ",points_num,"x",clust_dim)

    if points_num < k
        # If there is more requested clusters than points,
        # set coordinates of each cluster to 0
        return [zeros(clust_dim) for i in 1:k]
    elseif points_num == k
        # Number of points and requested clusters are equal, so just assign every
        # point to its own cluster
        return points
    else
        clusters::Vector{Vector{T}} = [] # Create a matrix to store centre points of the clusters 
        step = points_num / k
        idx = 1.0

        # To avoid generating empty clusters, we will assign each of clusters
        # to a different point

        for clust in 1:k
            push!(clusters, points[Int(idx)])
            idx = floor(idx + step)
        end

        #println(clusters)

        if iter <= 0
            # There is no specific number of iteration
            # Program will run untill it finds the perfect solution
            new_clust = moveClusters(k, clust_dim, clusters, points)
            while new_clust != clusters # Check if something has changed in the last iteration
                clusters = new_clust
                new_clust = moveClusters(k, clust_dim, clusters, points)
            end
        else
            new_clust = moveClusters(k, clust_dim, clusters, points)
            for i in 2:iter
                if new_clust == clusters
                    # There is no need for further iterations, return the clusters
                    return clusters
                end
                clusters = new_clust
                new_clust = moveClusters(k, clust_dim, clusters, points)
            end
        end

        return clusters
    end
end
end
