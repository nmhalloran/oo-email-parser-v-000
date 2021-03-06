# Build a class EmailParser that accepts a string of unformatted
# emails. The parse method on the class should separate them into
# unique email addresses. The delimiters to support are commas (',')
# or whitespace (' ').

require 'pry'

class EmailParser
  attr_accessor :emails

  def initialize(emails)
    @emails = emails
  end

  def parse
    email_array = @emails.split(/\,?\s/)
    email_array.uniq
  end
end


emails = "avi@test.com, arel@test.com test@avi.com, test@arel.com"
parser = EmailParser.new(emails)

parser.parse
