dictionary = %w[below down go going horn how howdy it i low own part partner sit i am gonna create a large dictionary so that it will be helpful]
p 'enter text:'
search = gets.chomp.to_s
filtered_search = search.downcase.gsub(/[^a-z0-9\s]/i, '')
words = filtered_search.split(' ')
p words
result = Hash.new(0)
words.each do |word|
  result[word] += 1 if dictionary.include?(word)
end
p result
