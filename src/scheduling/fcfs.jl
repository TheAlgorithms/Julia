"""
    fcfs(n, process_id, burst_time)

Implementation of first come first served scheduling algorithm

# Output
Tuple of vectors (process_id, burst_time, waiting_time, turnaround_time, avg_waiting_time, avg_turnaround_time)

# Example

```julia
n = 3 # number of processes
process_id = Any[1, 2, 3] # process ids
burst_times = Any[3, 4, 5] # burst times
fcfs(n, process_id, burst_times)
```
# Reference

https://en.wikipedia.org/wiki/Scheduling_(computing)#First_come,_first_served

Contributed By:- [Ashwani Rathee](https://github.com/ashwani-rathee)
"""
function fcfs(n, process_id, burst_time)
    waiting_time = []
    push!(waiting_time, 0)
    for i in 2:n
        # Calculates waiting time
        push!(waiting_time, burst_time[i-1] + waiting_time[i-1])
    end

    turnaround_time = []
    for i in 1:n
        # Calculates turnaround time
        push!(turnaround_time, burst_time[i] + waiting_time[i])
    end

    # Calculates Average waiting time
    avg_waiting_time = sum(waiting_time) / length(waiting_time)

    # Calculates Average turnaround time
    avg_turnaround_time = sum(turnaround_time) / length(turnaround_time)

    return process_id,
    burst_time,
    waiting_time,
    turnaround_time,
    avg_waiting_time,
    avg_turnaround_time
end
