
#--------------
# Monkey Patch
#--------------

class SomeClass
  def some_method
    "Hello"
  end
end

sc = SomeClass.new
raise "Lies!" unless sc.some_method == "Hello"


class SomeClass
  def some_method
    "Goodbye"
  end
end

raise "Lies!" unless sc.some_method == "Goodbye"

#-----------
# Inherited
#-----------

puts ""

class A
  class << self
    def inherited(child)
      puts "Inherited Hook Ran"
    end
  end
end

class B < A
  puts "I am B!"
end
