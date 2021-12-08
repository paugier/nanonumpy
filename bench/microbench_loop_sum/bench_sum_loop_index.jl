using Statistics

function sum_loop_index(arr)
    result = 0.
    for i = 1:500
        result += arr[i]
    end
    return result
end

compute_from_arr = sum_loop_index

size = 10000
nb_runs = 200

times = zeros(nb_runs)

for irun in 1:nb_runs
    arr = rand(size)
    times[irun] = @elapsed compute_from_arr(arr)
end

println(median(times))
