#-----------
# Iterators
#-----------

list = ["a","b","c"]

accum = ""
list.each { |item|
  accum += item
}

raise "Liar!" unless accum == "abc"


#----------
# Closures
#----------

def i_take_a_block
  puts "You are in the method"
  yield
end

i_take_a_block {puts "You are in block A"}

def i_return_a_block
  lambda {puts "You are in block B"}
end

func = i_return_a_block
func.call

