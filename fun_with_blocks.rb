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

#---------
# My List
#---------

class MyList

  def initialize
    @list = []
  end

  def add(stuff)
    @list << stuff
  end

  def each (&block)
    for i in 0..@list.size do
      block.call(@list[i])
    end
  end

end

my_list = MyList.new
my_list.add("a")
my_list.add("b")
my_list.add("c")
my_list.each{ |item|
  puts item
}

