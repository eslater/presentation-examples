
#-------
# Lists
#-------

list = []
list << "item"
list << 1
list << true

raise "I am a liar" unless list == ["item",1,true]

#--------
# Hashes
#--------

hash = {}
hash[:foo] = 1
hash[:bar] = "hello"
hash[:baz] = false
hash["biz"] = :goodbye

literal_hash = {
  :foo => 1,
  :bar => "hello",
  :baz => false,
  "biz" => :goodbye
}

raise "I am a liar" unless hash == literal_hash

#--------
# RegExp
#--------

raise "I am a liar" unless "Hello" =~ /ello/

