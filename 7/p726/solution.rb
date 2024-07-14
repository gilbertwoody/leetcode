# @param {String} formula
# @return {String}
def count_of_atoms(formula)
  n = formula.size
  i = 0
  parse_formula = lambda do
    result = Hash.new(0)
    until i == n || formula[i] == ')'
      if formula[i] == '('
        i += 1
        partial = parse_formula[]
        result.merge!(partial) { |k, rv, pv| rv + pv }
      else
        atom = formula[i]
        i += 1

        while i < n && ('a'..'z') === formula[i]
          atom += formula[i]
          i += 1
        end

        count = ""
        while i < n && ('0'..'9') === formula[i]
          count += formula[i]
          i += 1
        end

        result[atom] += count.empty? ? 1 : count.to_i
      end
    end

    i += 1
    m = ""
    while i < n && ('0'..'9') === formula[i]
      m += formula[i]
      i += 1
    end

    unless m.empty?
      x = m.to_i
      result.transform_values! { |v| v * x }
    end

    result
  end

  atoms = parse_formula[]
  atoms.to_a.sort.map { |atom, c| atom + (c == 1 ? "" : c.to_s) }.join
end
