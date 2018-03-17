def find_adjective(string)
  words = string.split(' ')
  index = words.find_index('is')
  if index.nil?
    nil
  else
    words[index + 1]
  end
end

lines = []

File.open('reviews.txt') do |review_file|
  lines = review_file.readlines
end

relevant_lines = lines.find_all { |line| line.include?('Truncated') }
reviews = relevant_lines.reject { |line| line.include?('--') }
puts reviews
string = reviews.first
words = string.split(' ')
index = words.find_index('is')
puts index
adjectives = reviews.map { |review| find_adjective(review) }
p adjectives