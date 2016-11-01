dictionary = File.open(File.join(Rails.root, 'db', 'dictionary.txt'))

puts "Patience grasshopper..."

Anagram.delete_all
dictionary.each do |words|
  words.each_line do |word|
    word.gsub!("\n", "")
    Anagram.create!(word: word)
  end
end

puts "Dictionary loaded!"
