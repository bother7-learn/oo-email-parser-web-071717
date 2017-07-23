# Build a class EmailParser that accepts a string of unformatted
# emails. The parse method on the class should separate them into
# unique email addresses. The delimiters to support are commas (',')
# or whitespace (' ').
require 'pry'
class EmailParser

attr_accessor :email, :string

def initialize (string)
@string = string

# binding.pry
end

def parse
  array = @string.split(/[, ]/)
  array = array.reject(&:empty?)
  # binding.pry
  @email = array.uniq
end

end
