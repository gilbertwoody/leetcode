require "set"

# @param {Integer} n
# @param {Integer[][]} connections
# @return {Integer[][]}
def critical_connections(n, connections)
  adj = Hash.new { |h, k| h[k] = Set.new } 
  result = Set.new
  connections.each do |u, v|
    adj[u] << v
    adj[v] << u
    result << (u < v ? [u, v] : [v, u])
  end
  
  rank = Array.new(n, -2)
  dfs = lambda do |node, depth|
    return rank[node] if rank[node] >= 0

    rank[node] = depth
    min_depth = n
    adj[node].each do |neigh|
      next if rank[neigh] == depth - 1
      
      neigh_depth = dfs[neigh, depth + 1]
      
      result.delete([neigh, node].sort) if neigh_depth <= depth

      min_depth = neigh_depth if neigh_depth < min_depth
    end

    min_depth
  end
  
  dfs[0, 0]
  result.to_a
end
