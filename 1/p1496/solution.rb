require "set"

# @param {String} path
# @return {Boolean}
def is_path_crossing(path)
  x = y = 0
  known = Set.new

  path.each_char do |p|
    known << [x, y]
    
    case p 
    when "W" then x -= 1
    when "E" then x += 1
    when "S" then y -= 1
    when "N" then y += 1
    end

    return true if known.include?([x, y])
  end

  false
end
