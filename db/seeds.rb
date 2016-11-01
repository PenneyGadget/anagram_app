dictionary = File.open(File.join(Rails.root, 'db', 'dictionary.txt'))

puts "Go get a coffee, this will take a bit..."

Anagram.delete_all
dictionary.each do |words|
  words.each_line do |word|
    Anagram.create!(word: word)
  end
end

puts "Dictionary loaded!"
