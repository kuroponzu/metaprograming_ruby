str = "just a regular string"

def str.title?
  self.upcase == self
end

str.title? # =>false
str.method.grep(/titile?/) # => [:titile?]
str.singleton_methods # => [:titile?]
