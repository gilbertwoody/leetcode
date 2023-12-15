# @param {String[][]} paths
# @return {String}
def dest_city(paths)
  outgoing = Set.new
  paths.each do |from, to|
    outgoing << from
  end

  paths.each do |from, to|
    return to if !outgoing.include?(to)
  end
end
