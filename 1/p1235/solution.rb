# @param {Integer[]} start_time
# @param {Integer[]} end_time
# @param {Integer[]} profit
# @return {Integer}
def job_scheduling(start_time, end_time, profit)
  n = end_time.size

  jobs = (0...n).to_a.sort_by { start_time[_1] }
  memo = []

  jobs[n], memo[n] = n, 0
  start_time += [1e9]

  (n-1).downto(0) do |i|
    curr = jobs[i]
    curr_end = end_time[curr]
    idx = jobs[i+1..].bsearch_index do |job|
      start_time[job] >= curr_end
    end
    p1 = profit[curr] + memo[idx + i + 1]
    p2 = memo[i+1]
    memo[i] = p1 > p2 ? p1 : p2
  end

  memo[0]
end
