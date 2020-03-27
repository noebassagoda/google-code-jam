#r_val is grid height
#c_val is grid length
#k_val is number of contestants that escape

def get_r(line)
  return line.split[0].to_i
end
  
def get_c(line)
  return line.split[1].to_i
end

def get_k(line)
  return line.split[2].to_i
end

def answer(line)
  r_val = get_r(line)
  c_val = get_c(line)
  k_val = get_k(line)

  current_val = "E"
  grid_entries_count = 0
  escape_grid = []
  
  return false if k_val == (r_val * c_val - 1)

  for i in (1..r_val)
    row_grid = []
    for j in (1..c_val)
      if grid_entries_count < k_val
        row_grid << "W"
      else
        if j != c_val
          row_grid << "E"
        elsif i != r_val
          row_grid << "S"
        elsif c_val == 1
          row_grid << "N"
        else
          row_grid << "W"
        end
      end
      grid_entries_count += 1
    end
    escape_grid << row_grid
  end

  escape_grid
end

def format_answer(line, index)
  solution = answer(line)
  if solution
    puts "Case ##{index}: POSSIBLE"
    
    solution.length.times do |row|
      puts solution[row].join
    end
  else
    puts "Case ##{index}: IMPOSSIBLE"
  end
end

def print(test_count, input)
  for i in (1..test_count)
    format_answer(input[i], i)
  end
end

input = ARGF.readlines
number_of_tests = input[0].to_i

print(number_of_tests, input)