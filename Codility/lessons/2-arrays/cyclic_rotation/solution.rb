# you can write to stdout for debugging purposes, e.g.
# puts "this is a debug message"

def solution(a, k)
  # write your code in Ruby 2.2
  return a if a.empty?

  rotated = Array.new a.length
  k = k >= a.length ? k % a.length : k

  a.each_with_index do |x, index|
    new_index = index + k
    if new_index > (a.length - 1)
      new_index -= a.length
    end

    rotated[new_index] = x
  end

  rotated
end
