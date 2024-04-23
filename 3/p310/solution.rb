require "set"

# @param {Integer} n
# @param {Integer[][]} edges
# @return {Integer[]}
def find_min_height_trees(n, edges)
  adj = Hash.new { |h, k| h[k] = [] }
  edges.each do |u, v|
    adj[u] << v
    adj[v] << u
  end

  parent = []
  bfs = lambda do |start|
    known = Set.new
    known << start
    q = [start]
    u = nil

    until q.empty?
      u = q.shift
      adj[u].each do |v|
        unless known === v
          known << v
          q << v
          parent[v] = u
        end
      end
    end

    return u
  end

  x = bfs[0]
  y = bfs[x]

  path = []
  parent[x] = nil

  until y.nil?
    path << y
    y = parent[y]
  end

  m = path.size
  m.odd? ? [path[m/2]] : [path[m/2 - 1], path[m/2]]
end
