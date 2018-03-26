require 'rspec'

def multiplication_table num
  hash = Hash.new

  1.upto(num).each do |i|
    products = []

    (1..10).each do |e|
      products.push(e * i)
    end

    hash[i] = products
  end

  hash
end

describe 'Multiplication table' do
  it 'Creates a hash based multiplication table' do
    hash = {
      1=>[1, 2, 3, 4, 5, 6, 7, 8, 9, 10],
      2=>[2, 4, 6, 8, 10, 12, 14, 16, 18, 20],
      3=>[3, 6, 9, 12, 15, 18, 21, 24, 27, 30]
    }
    expect(multiplication_table 3).to eq(hash)
  end
end

# Iterator 1: 1 to num
# Iterator 2: current num * (1..10)
# 1 Hash
# Nested arrays
#
# Iterate from 1 to provide num
#   iterate from current num
#     nested element + current num and added to array
#   add new key and array value to hash
#   return final hash
