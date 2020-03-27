class CaseSolver

  def initialize(f_count, s_val, input)
    @f_count = f_count
    @s_val = s_val
    @input = input.uniq
  end

  def run!
    s_used = [0] * @s_val 
    @input.count.times do |i|
      ticket = @input[i]

      s_used[ticket[0]-1] << s_used[ticket[0]-1] += 1
      if ticket[0] != ticket[1]
        s_used[ticket[1]-1] << s_used[ticket[1]-1] += 1
      end
    end

    s_used.max
  end

  private

end

def get_elem(line, i)
  return line.split[i].to_i
end

def manage_current_case(input)
  # first row contains info values: friends count - concert hall size
  info_row = input.shift
  f_val = get_elem(info_row, 0)
  s_val = get_elem(info_row, 1)

  # F following rows containing each friend's ticket info
  grid = []
  for i in (1..f_val)
    row = input.shift
    grid << [get_elem(row, 0).to_i, get_elem(row, 1).to_i]          #[ [1,2], [1,3] ...]
  end

  return f_val, s_val, grid, input
end

input = ARGF.readlines
test_case_count = input.shift.to_i

test_case_count.times do |i|
  f_count, s_val, current_input, remaining_inputs = manage_current_case(input)
  case_solver = CaseSolver.new(f_count, s_val, current_input)
  puts "Case ##{i + 1}: #{case_solver.run!}"
end
