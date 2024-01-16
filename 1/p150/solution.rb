# @param {String[]} tokens
# @return {Integer}
def eval_rpn(tokens)
  stack = []
  tokens.each do |tok|
    op = case tok 
    in "+" | "-" | "*" | "/"
      op2 = stack.pop
      op1 = stack.pop
      if tok == "/" && (op1.positive? ^ op2.positive?) 
        -(-op1/op2)
      else
        tok.to_sym.to_proc[op1, op2]
      end
    else
      tok.to_i
    end

    stack.push(op)
  end

  stack.pop
end
