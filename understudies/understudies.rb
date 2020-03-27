class CaseSolver

  def initialize(n_roles, input)
    @n_roles = n_roles
    @input = input
  end

  def run!
    acc = 1
    @n_roles.times do
      max = @input.max
      min = @input.min
      p = 1 - (max * min)
      @input.delete_at( @input.index(max))
      @input.delete_at( @input.index(min))
      acc *= p
    end
    acc
  end

  private

end

def get_elem(line, i)
  return line.split[i].to_i
end

def manage_current_case(input)
  # first row contains info values: number of roles
  info_row = input.shift
  n_roles = get_elem(info_row, 0)

  # following row contains current input info
  grid = input.shift.split.map { |string| string.to_f }

  return n_roles, grid, input
end

input = ARGF.readlines
test_case_count = input.shift.to_i

test_case_count.times do |i|
  n_roles, current_input, remaining_inputs = manage_current_case(input)
  case_solver = CaseSolver.new(n_roles, current_input)
  puts "Case ##{i + 1}: #{case_solver.run!}"
end
