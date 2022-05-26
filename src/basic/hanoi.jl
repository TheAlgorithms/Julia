"""
    The Tower of Hanoi

# Brief:
    The Tower of Hanoi is a mathematical game or puzzle consisting of three rods and a number
    of disks of various diameters, which can slide onto any rod. 
    The puzzle begins with the disks stacked on one rod in order of decreasing size,
    the smallest at the top, thus approximating a conical shape. 
    The objective of the puzzle is to move the entire stack to the last rod, 
    obeying the following rules:
        1. Only one disk may be moved at a time.
        2. Each move consists of taking the upper disk from one of the stacks and placing it on 
           top of another stack or on an empty rod.
        3. No disk may be placed on top of a disk that is smaller than it.

# Complexity: O(2^n)

# Functions
    - solveUtil(tower1, tower2, tower3, n::Int, solution::Array{Pair}) - The recursive function which finds the solution and saves it to 
                                                                         the array of pairs where each pair represents one move
    - solve(tower1, tower2, tower3,n::Int) - The main function for finding the set of steps to move n rings from tower 1 to tower 3, using tower 2
    - printSolution(solution::Array{Pair}) - Prints the solution given as an array of pairs by printing each pair ( step ) in a different line

# Reference:- [Wikipedia](https://en.wikipedia.org/wiki/Tower_of_Hanoi)

# Contributed by:- [Nikola Mircic](https://github.com/Nikola-Mircic)
"""

module Hanoi
function solveUtil(tower1, tower2, tower3, n::Int, solution::Array{Pair})
    if n == 1
        push!(solution, tower1 => tower3) # There is only one ring, so just move it from tower1 to tower3
    else
        solveUtil(tower1, tower3, tower2, n - 1, solution) # Move n-1 rings from tower1 to tower2 to free the bottom ring
        push!(solution, tower1 => tower3) # Move the bottom ring from tower1 to tower3
        solveUtil(tower2, tower1, tower3, n - 1, solution) # Now move those n-1 rings from tower2 to tower3
    end
end

function solve(tower1, tower2, tower3, n::Int)
    solution = Array{Pair}(undef, 0)
    solveUtil(tower1, tower2, tower3, n, solution)
    return solution
end

function printSolution(solution::Array{Pair})
    for step in solution
        println(step)
    end
end
end
